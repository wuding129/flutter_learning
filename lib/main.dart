import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5), // 修改水波纹颜色
          splashColor: Colors.white70), // 修改水波纹颜色
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: Colors.grey[100],
            appBar: AppBar(
              // 导航左边的叫做leading
              leading: IconButton(
                  icon: Icon(Icons.menu),
                  tooltip: 'Navigation',
                  onPressed: () => debugPrint('pressed')),
              title: Text('HELLO'),
              elevation: 0,
              // 阴影
              centerTitle: true,
              // 使标题居中
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  tooltip: 'Search',
                  onPressed: () => debugPrint('search1'),
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  tooltip: 'Search',
                  onPressed: () => debugPrint('search2'),
                )
              ],
              bottom: TabBar(
                  unselectedLabelColor: Colors.black38,
                  indicatorColor: Colors.black54,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 1.0,
                  tabs: [
                    Tab(icon: Icon(Icons.local_florist)),
                    Tab(icon: Icon(Icons.change_history)),
                    Tab(icon: Icon(Icons.directions_bike)),
                  ]),
            ),
            body: TabBarView(children: [
              Icon(Icons.local_florist, size: 128, color: Colors.black12),
              Icon(Icons.change_history, size: 128, color: Colors.black12),
              Icon(Icons.directions_bike, size: 128, color: Colors.black12),
            ]),
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    child: Text('header'.toUpperCase()),
                    decoration: BoxDecoration(color: Colors.grey[100]),
                  ),
                  ListTile(
                    title: Text('Messages', textAlign: TextAlign.right),
                    trailing:
                        Icon(Icons.message, color: Colors.black12, size: 22.0),
                  ),
                  ListTile(
                    title: Text('Favorite', textAlign: TextAlign.right),
                    trailing:
                        Icon(Icons.favorite, color: Colors.black12, size: 22.0),
                  ),
                  ListTile(
                    title: Text('Settings', textAlign: TextAlign.right),
                    trailing:
                        Icon(Icons.settings, color: Colors.black12, size: 22.0),
                  ),
                ],
              ),
            )));
  }
}
