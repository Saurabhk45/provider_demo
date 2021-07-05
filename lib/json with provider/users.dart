/*
import 'dart:html';

import 'package:basics_flutter/json%20with%20provider/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Users extends StatelessWidget {
  //const Users({Key ? key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    context.read<UserModel>().fetchData;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: RefreshIndicator(
        onRefresh: () async{},
        child: Center(
          child: Consumer<UserModel>(
            builder: (context, value, child) {
              return value.map.length == 0 && !value.error
                  ? CircularProgressIndicator()
                  : value.error ? Text('Something wrong ${value.errorMsg}',
                    textAlign: TextAlign.center,) : ListView.builder(
                      itemCount:value.map[''].length,
                      itemBuilder: (context,index){
                      return UserCard(map: value.map[index]);
              },
              );
            },
          ),
        ),
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  //const UserCard({Key: key,required this.map}) : super(key: key);
  final Map<String,String> map;
  @override
  Widget build(BuildContext context) {
    return Card(

    );
  }
}

*/
