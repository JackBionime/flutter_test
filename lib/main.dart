import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jack Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: tabList.length,
        child: Scaffold(
          appBar: AppBar(
          title: Text("AppBar Demo"),
            leading: Icon(Icons.access_alarm),
            actions: [
              IconButton(icon: Icon(Icons.add,),
                  onPressed: null)
            ],
            bottom: TabBar(
              tabs: tabList.map((choice) {
                return Tab(
                  text: choice.title,
                  icon: Icon(choice.icons)
                );
              }).toList(),
            ),
          ),
          body: TabBarView(children:
            tabList.map((choice) {
              return Center(
                child: Icon(
                  choice.icons,
                  size: 300,
                ),
              );
            }).toList()
          ,
          ),
        ));
  }
}

class TabChoice {
  final String title;

  final IconData icons;

  const TabChoice(this.title, this.icons);
}

const List<TabChoice> tabList = const <TabChoice>[
  TabChoice('Test1', Icons.mood_bad),
  TabChoice('Test2', Icons.mood)
];

