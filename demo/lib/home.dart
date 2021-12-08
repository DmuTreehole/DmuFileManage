import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'file.dart';
import 'user.dart';
class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index=0;
  List<Widget>_homeWidgets=[
    FileWidget(),
    UserWidget(),
  ];
  //按下时触发调整位置
  void _onBottomNavigationBarTapped(index){
    setState(() {
      _index=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: IndexedStack(
        index:_index,
        children:_homeWidgets,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: new Text("赵大卷"), 
              accountEmail: new Text("zxy@163.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new AssetImage(
                  "assets/images/1.jpg"
                ),
              ),
              otherAccountsPictures: <Widget>[
                new Container(
                  child: Image.asset('images/2.png'))
              ],
              ),
              ListTile(
                leading:new CircleAvatar(child: Icon(Icons.color_lens)),
                title: Text("我的班级"),
              ),
              ListTile(
                leading:new CircleAvatar(child: Icon(Icons.photo)),
                title: Text("我的信息"),
              ),
              ListTile(
                leading: new CircleAvatar(child: Icon(Icons.wifi),),
                title: Text('连接校园网'),
              )
          ],

        )
        ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        onTap:_onBottomNavigationBarTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('主页')),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),title: Text('我的')),
        ],
      ),
    );
  }
}