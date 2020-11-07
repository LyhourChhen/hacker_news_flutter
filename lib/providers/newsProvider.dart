import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:hackernews_flutter/constants/urlConstant.dart';

class NewsProvider with ChangeNotifier {
  Future<dynamic> getTopNews() async {
    var dio = Dio();
    dio.get(UrlConstant.UgetTopNew).then((value) {
      print("value ${value}");
    }).catchError((err) => {print("err $err")});
    print("getTopnew run");
    notifyListeners();
  }
}
