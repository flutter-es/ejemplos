import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatefulWidget {
  NetworkImage myImage;
  String initials;

  CustomCircleAvatar({this.myImage, this.initials});

  @override
  CustomCircleAvatarState createState() => new CustomCircleAvatarState();
}

class CustomCircleAvatarState extends State<CustomCircleAvatar> {
  bool _checkLoading = true;

  @override
  void initState() {
    super.initState();
    widget.myImage.resolve(new ImageConfiguration()).addListener((_, __) {
      if (mounted) {
        setState(() {
          _checkLoading = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return _checkLoading == true
        ? new CircleAvatar(child: new Text(widget.initials))
        : new CircleAvatar(
            backgroundImage: widget.myImage,
            foregroundColor: new Color(0xff25D366),
          );
  }
}
