import 'package:flutter/material.dart';
import 'package:match_mamker/shared/constants/colors.dart';
import 'package:match_mamker/shared/constants/common.dart';
import 'package:match_mamker/shared/utils/utils.dart';

import '../shared.dart';

class AppTopBar extends StatefulWidget {
  AppTopBar();

  @override
  _AppTopBarState createState() => _AppTopBarState();
}

class _AppTopBarState extends State<AppTopBar> {
  bool? _checked = false;

  void _onChecked(bool? checked) {
    print(checked);
    setState(() {
      this._checked = checked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 50.0,
              height: 50.0,
              child: Image(image: AssetImage('assets/images/back.png')),
            ),
            CommonWidget.rowWidth(width: 10.0),
            Flexible(
                child: Text(
              'Skip',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: CommonConstants.smallText,
                fontWeight: FontWeight.bold,
                color: ColorConstants.secondaryAppColor,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
