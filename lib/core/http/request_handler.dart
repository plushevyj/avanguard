import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

final _logger = Logger();

Future<Response> handleRequest(request) async {
  try {
    final response = await request() as Response;
    if (response.statusCode == null ||
        response.statusCode! < 200 ||
        response.statusCode! >= 400) {
      _logBadResponse(response);
    } else if (response.statusCode! >= 200 && response.statusCode! < 300) {
      _logSuccess(response);
    }
    return response;
  } on DioException catch (error) {
    _logError(error);
    throw error.response?.data ?? error.error;
  } catch (error) {
    rethrow;
  }
}

void _logBadResponse(Response response) {
  _logger.e(
    'Error occur while HTTP CRUD!\n'
    'Path: ${response.requestOptions.path}\n'
    'Full uri: ${response.realUri}\n'
    'Status code: ${response.statusCode}\n'
    'Query parameters: ${response.requestOptions.queryParameters}\n'
    'Request data: ${response.requestOptions.data}\n'
    'Response data: ${response.data}',
  );
}

void _logError(DioException error) {
  _logger.e(
    'Error occur while HTTP CRUD!\n'
    'Path: ${error.requestOptions.path}\n'
    'Full uri: ${error.requestOptions.uri}\n'
    'Query parameters: ${error.requestOptions.queryParameters}\n'
    'Headers: ${error.requestOptions.headers}\n'
    'Status code: ${error.response?.statusCode}\n'
    'Request data: ${error.requestOptions.data}\n'
    'Error: ${error.error}\n'
    'Response: ${error.response}\n'
    'Response data: ${error.response?.data}',
  );
  log(error.requestOptions.uri.toString());
}

void _logSuccess(Response response) {
  _logger.i(
    '🟢🟢🟢🟢🟢🟢🟢🟢🟢🟢🟢🟢🟢🟢🟢🟢🟢🟢🟢🟢🟢🟢🟢🟢\n'
    'Success response\n'
    'Path: ${response.requestOptions.path}\n'
    'Full uri: ${response.realUri}\n'
    'Status code: ${response.statusCode}\n'
    'Query parameters: ${response.requestOptions.queryParameters}\n'
    'Request data: ${response.requestOptions.data}\n'
    'Response data: ${response.data}\n'
    '🟢🟢🟢🟢🟢🟢🟢🟢🟢🟢🟢🟢🟢🟢🟢🟢🟢🟢🟢🟢🟢🟢🟢🟢',
  );
}
