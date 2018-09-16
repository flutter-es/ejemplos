import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/models/status_model.dart';
import 'package:flutter_whatsapp/CustomCircleAvatar.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i) => new Column(
            children: <Widget>[
              new Divider(
                height: 12.0,
              ),
              new ListTile(
                leading: new Container(
                  height: 70.0,
                  width: 70.0,
                  child: new CustomCircleAvatar(
                    initials: "Loading",
                    myImage: new NetworkImage(dummyData[i].avatarUrl),
                  ),
                ),
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      dummyData[i].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                subtitle: new Container(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: new Row(children: [
                    new Text(
                      dummyData[i].message,
                      style: new TextStyle(color: Colors.grey, fontSize: 18.0),
                    ),
                    new Text(
                      dummyData[i].time,
                      style: TextStyle(color: Colors.grey, fontSize: 17.0),
                    ),
                  ]),
                ),
              )
            ],
          ),
    );
  }
}
