import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hackernews_flutter/app/apps.dart';
import 'package:hackernews_flutter/providers/newsProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider.value(value: NewsProvider()),
    ],
    child: MyApp(),
  ));
}
