import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/models/status_model.dart';
import 'package:flutter_whatsapp/CustomCircleAvatar.dart';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen>
    with AutomaticKeepAliveClientMixin<StatusScreen> {
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Container(
      child: ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, i) => Column(
              children: <Widget>[
                Divider(
                  height: 12.0,
                ),
                ListTile(
                  leading: Container(
                    height: 70.0,
                    width: 70.0,
                    child: CustomCircleAvatar(
                      initials: "Loading",
                      myImage: dummyData[i].netImg,
                    ),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        dummyData[i].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  subtitle: Container(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(children: [
                      Text(
                        dummyData[i].message,
                        style:
                            new TextStyle(color: Colors.grey, fontSize: 18.0),
                      ),
                      Text(
                        dummyData[i].time,
                        style: TextStyle(color: Colors.grey, fontSize: 17.0),
                      ),
                    ]),
                  ),
                )
              ],
            ),
      ),
    );
  }
}
