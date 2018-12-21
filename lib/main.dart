import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import './pages/new_page.dart';
import './pages/new_page_tab.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryColor: defaultTargetPlatform == TargetPlatform.iOS 
        ? Colors.grey[50]
        : null
      ),
      home: MyHomePage(),
      routes: <String, WidgetBuilder> {
          "/a": (BuildContext context) => NewPage("Page One"),
          "/b": (BuildContext context) => NewPage("Page Two"),
        },
    );
  }
}

class MyHomePage extends StatefulWidget {

    @override
   _MyHomePageState createState() =>  _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> 
with SingleTickerProviderStateMixin{

TabController tabController;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
    void dispose() {
      // TODO: implement dispose

      tabController.dispose();
      super.dispose();


    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer App Test"),
        bottom: TabBar(
          controller: tabController,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.face),
              text: "test1",
            ),
            Tab(
              icon: Icon(Icons.favorite),
              text: "test2",
            ),
            Tab(
              icon: Icon(Icons.filter),
              text: "test3",
            )
          ],
        ),
      ),

      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Pongsathon Somjai"),
              accountEmail: Text("pongsathon_pk_202@hotmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
                 ? Colors.deepPurple 
                 : Colors.white,
                child: Text("P"),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
                 ? Colors.deepPurple 
                 : Colors.white,
                child: Text("S"),
              ),
              ],
            ),
            ListTile(
              title: Text("Page One"),
              trailing: Icon(Icons.arrow_drop_down_circle),
              onTap: (){ 
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("/a");
              }
              
            ),
            ListTile(
              title: Text("Page Two"),
              trailing: Icon(Icons.keyboard_arrow_down),
              onTap: (){ 
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("/b");
              }
            ),
            Divider(),
            ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.close),
              onTap: ()=> Navigator.of(context).pop(),
            )
          ],
        ),
      ),
      body: TabBarView(children: <Widget>[
        NewPageTap("Tab 1"),
        NewPageTap("Tab 2"),
        NewPageTap("Tab 3")
      ],
      controller: tabController,
      ),
      // bottomNavigationBar: Material(
      //   color: Colors.teal,
      //   child: TabBar(
      //     controller: tabController,
      //     tabs: <Widget>[
      //       Tab(
      //         icon: Icon(Icons.face),
      //       ),
      //       Tab(
      //         icon: Icon(Icons.favorite),
      //       ),
      //       Tab(
      //         icon: Icon(Icons.filter),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}

