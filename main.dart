import 'package:flutter/material.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "My App",
      debugShowCheckedModeBanner: false,
      home: MyAppHome(),
    );
  }
}
class MyAppHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyAppState();
  }
}
class MyAppState extends State<MyAppHome>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final drawerHeader=UserAccountsDrawerHeader(
      accountName: new Text("Akarsh Barar"),
      accountEmail: Text("CodeCave123@gmail.com"),
      currentAccountPicture: CircleAvatar(
        child: FlutterLogo(size: 42.0,),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      otherAccountsPictures: <Widget>[
        CircleAvatar(child: Text("S"),),
        CircleAvatar(child: Text("K"),),

      ],
    );
    final drawer=ListView(
        children: <Widget>[
          drawerHeader,
          ListTile(title: new Text("PAge 1"),onTap: (){Navigator.of(context).push(NewPage(1));},),
          Divider(),
          ListTile(title: new Text("PAge 2"),onTap: (){Navigator.of(context).push(NewPage(2));},),
          Divider(),
          ListTile(title: new Text("PAge 3"),onTap: (){Navigator.of(context).push(NewPage(3));},),
          Divider(),
          ListTile(title: new Text("Close"),onTap: (){Navigator.of(context).pop();},),
          Divider(),
        ],
    );
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Inbox"),
        backgroundColor: Colors.red,
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.more_vert), onPressed: (){})
        ],
      ),
      drawer: Drawer(
        child: drawer,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(title: new Text("AAAA"),leading: CircleAvatar(child: new Text("A"),),subtitle: Text("aaa"),),
          Divider(),
          ListTile(title: new Text("BBB"),leading: CircleAvatar(child: new Text("B"),),subtitle: Text("bb"),),
          Divider(),
          ListTile(title: new Text("CCC"),leading: CircleAvatar(child: new Text("C"),),subtitle: Text("cc"),),
          Divider(),
          ListTile(title: new Text("DDD"),leading: CircleAvatar(child: new Text("D"),),subtitle: Text("dd"),),
          Divider(),
          ListTile(title: new Text("EEE"),leading: CircleAvatar(child: new Text("E"),),subtitle: Text("ee"),),
          Divider(),
        ],
      ),
    );
  }
}

class NewPage extends MaterialPageRoute<Null>{
  int id;

  NewPage(this.id)
  :super(builder:(BuildContext context){
    return Scaffold(
      appBar: new AppBar(title: new Text("Page $id"),),
      body: Center(child: new Text("PAge $id"),),
    );
  });

}