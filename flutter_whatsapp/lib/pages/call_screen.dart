import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/models/call_model.dart';
import 'package:flutter_whatsapp/CustomCircleAvatar.dart';

class CallScreen extends StatefulWidget {
  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen>
    with AutomaticKeepAliveClientMixin<CallScreen> {
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
        itemCount: dummyDataCall.length,
        itemBuilder: (context, i) => Column(
              children: <Widget>[
                Divider(
                  height: 10.0,
                ),
                ListTile(
                  leading: Container(
                    height: 50.0,
                    width: 50.0,
                    child: CustomCircleAvatar(
                      initials: "Loading",
                      myImage: dummyDataCall[i].netImg,
                    ),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        dummyDataCall[i].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Container(
                        //new
                        margin: EdgeInsets.symmetric(horizontal: 4.0), //new
                        child: IconButton(
                            //new
                            icon: Icon(dummyDataCall[i].icono),
                            onPressed: () => ({})), //new
                      ),
                    ],
                  ),
                  subtitle: Container(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(children: [
                      Text(
                        dummyDataCall[i].message,
                        style: TextStyle(color: Colors.grey, fontSize: 15.0),
                      ),
                      Text(
                        dummyDataCall[i].time,
                        style: TextStyle(color: Colors.grey, fontSize: 14.0),
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
