import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackernews_flutter/providers/newsProvider.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool isInit = true;

  @override
  void didChangeDependencies() {
    try {
      if (isInit) {
        Provider.of<NewsProvider>(context).getTopNews();
        setState(() {
          isInit = false;
        });
      }
    } catch (e) {
      throw "error";
    }
    super.didChangeDependencies();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Container(
                child: Image.asset(
                  'assets/logo/logo.jpg',
                ),
              ),
            ),
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text("New"),
                ),
                Tab(
                  child: Text("past"),
                ),
                Tab(
                  child: Text("comments"),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Text("hi"),
              Text("hsdfi"),
              Text("hsdfsdfsdi"),
            ],
          )),
    );
  }
}
