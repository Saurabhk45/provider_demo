
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../VotingProvider.dart';
class Home extends StatelessWidget {
  final TextEditingController valueController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<VotingProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: valueController,
            ),
            RaisedButton(onPressed: (){
              if(valueController.text.isNotEmpty){
                dataProvider.addItem(valueController.text);
              }
            },child: Text('Add Items'),
            ),
            Consumer<VotingProvider>(builder: (_,data,__)=>Expanded(
              child: ListView.builder(
                  itemCount: dataProvider.getData.length,
                  itemBuilder: (_,index)=> ListTile(
                    onTap: (){
                      data.incVotes(index);
                    },
                    title: Text('${data.getData[index]['title']}'),
                    trailing: CircleAvatar(
                      child: Text('${data.getData[index]['votes']}'),
                    ),
                  )
              ),
            ))
          ],
        ),
      ),
    );
  }
}
