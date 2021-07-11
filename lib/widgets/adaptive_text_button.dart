import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveTextButton extends StatelessWidget {
  final String text;
  final Function handler;

  AdaptiveTextButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(child: Text(text), onPressed: handler)
        : TextButton(
            child: Text(text),
            onPressed: handler,
            style: TextButton.styleFrom(
                textStyle: TextStyle(fontWeight: FontWeight.bold),
                primary: Theme.of(context).primaryColor),
          );
  }
}
