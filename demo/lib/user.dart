import 'package:flutter/material.dart';
class UserWidget extends StatelessWidget {
  const UserWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        },
        child: const Icon(Icons.add),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        shape: CircleBorder(),
        isExtended: false,
      )
    );
  }
}