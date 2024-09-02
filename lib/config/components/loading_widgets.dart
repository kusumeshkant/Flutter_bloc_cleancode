import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingWidgets extends StatefulWidget {
  final double height;
  final double width;
  const LoadingWidgets({super.key, this.height = 10, this.width = 10});

  @override
  State<LoadingWidgets> createState() => _LoadingWidgetsState();
}

class _LoadingWidgetsState extends State<LoadingWidgets> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: Platform.isAndroid
          ? CircularProgressIndicator(
              color: Colors.blue[300],
            )
          : CupertinoActivityIndicator(
              color: Colors.blue[300],
            ),
    );
  }
}
