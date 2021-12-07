import 'package:flutter/material.dart';
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
//   BottomNavigationBarItem _getBottomNavItem(String title,String normalIcon,String pressedIcon,int index){
//     return BottomNavigationBarItem(
//       icon: _index==index?Image.asset(
//         pressedIcon,
//         width: 32,
//         height: 28,
//         )
//       :Image.asset(
//         normalIcon,
//         width: 32,
//         height: 28,
//       ),
//       label: title,
//     );
//   }
// 
}