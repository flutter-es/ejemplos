import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatefulWidget {
  final NetworkImage myImage;
  final String initials;

  CustomCircleAvatar({this.myImage, this.initials});

  @override
  _CustomCircleAvatarState createState() => new _CustomCircleAvatarState();
}

class _CustomCircleAvatarState extends State<CustomCircleAvatar>
    with AutomaticKeepAliveClientMixin<CustomCircleAvatar> {
  bool _checkLoading = true;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    widget.myImage.resolve(new ImageConfiguration()).addListener((_, __) {
      if (mounted) {
        setState(() {
          _checkLoading = false;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

//        ? new CircleAvatar(child: new Text(widget.initials))

    return _checkLoading == true
        ?  Text(widget.initials)
        :  CircleAvatar(
            backgroundImage: widget.myImage,
            foregroundColor: new Color(0xff25D366),
          );
  }
}
