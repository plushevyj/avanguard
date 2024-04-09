import 'dart:developer';
import 'dart:isolate';

abstract class ConvertTo {
  static Future<List<R>> list<R>(List data, builder) async {
    try {
      return await Isolate.run(() => data.map<R>((e) => builder(e)).toList());
    } on Exception catch (e, s) {
      log(e.toString());
      log(s.toString());
      rethrow;
    }
  }

  static Future<R> item<R>(data, builder) async {
    try {
      return await Isolate.run(() => builder(data));
    } on Exception catch (e, s) {
      log(e.toString());
      log(s.toString());
      rethrow;
    }
  }
}
