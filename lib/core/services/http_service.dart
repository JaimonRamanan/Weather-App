import 'dart:io';
import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../failure/failure.dart';
import 'package:retry/retry.dart';

enum HttpMethod { get }

@LazySingleton()
class HttpService {
  HttpService._internal();

  static final HttpService _instance = HttpService._internal();
  factory HttpService() => _instance;

  Future<Either<Map<Failure, dynamic>, Response>> request({
    dynamic data,
    required String apiUrl,
    HttpMethod method = HttpMethod.get,
  }) async {
    try {
      Client client = Client();
      Response response = await httpSwitchMethod(apiUrl, client, method);

      if (response.statusCode == HttpStatus.ok ||
          response.statusCode == HttpStatus.created) {
        return Right(response);
      } else {
        return Left({const Failure.clientFailure(): jsonDecode(response.body)});
      }
    } on FormatException catch (_) {
      return Left({const Failure.clientFailure(): null});
    } on HttpException catch (_) {
      return Left({const Failure.clientFailure(): null});
    } on TimeoutException catch (_) {
      return Left({const Failure.timeout(): null});
    } on SocketException catch (_) {
      return Left({const Failure.networkFailure(): null});
    } catch (e) {
      return Left({const Failure.clientFailure(): null});
    }
  }
}

/// To select the correspnoding method and api call
Future<Response> httpSwitchMethod(
  String url,
  Client client,
  HttpMethod method,
) async {
  switch (method) {
    case HttpMethod.get:
      return await retryMethod(client.get(Uri.parse(url)));
    default:
      return await retryMethod(client.get(Uri.parse(url)));
  }
}

/// To retry api call after timeout or network issues
Future<Response> retryMethod(Future<Response> apiCall) async {
  return retry(() => apiCall,
      maxAttempts: 3,
      retryIf: (e) => e is SocketException || e is TimeoutException);
}
