import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/models/call_model.dart';

class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context,i) => new Column(
        children: <Widget>[
          new Divider(
            height: 10.0,            
          ),
          new ListTile(
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage(dummyData[i].avatarUrl),
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  dummyData[i].name, 
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                new Container(                                                 //new
                  margin: new EdgeInsets.symmetric(horizontal: 4.0),           //new
                  child: new IconButton(                                       //new
                    icon: new Icon(dummyData[i].icono),
                     onPressed: () => ({})),                                //new
                ), 
              ],
            ),
            subtitle: new Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: new Row(
                children: [ 
                  new Text(
                    dummyData[i].message,
                    style: new TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                  new Text(
                    dummyData[i].time, 
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                ]),
            ),
          )
        ],
      ),
    );
  }
}