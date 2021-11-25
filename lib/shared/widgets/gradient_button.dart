import 'package:flutter/material.dart';
import 'package:match_mamker/shared/constants/common.dart';

import '../shared.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final Widget? child;
  final Gradient? gradient;
  final double width;
  final double height;

  final Function? onPressed;
  final Color? color;
  final Color? textColor;

  const GradientButton({
    Key? key,
    this.text = "",
    this.child,
    this.gradient,
    this.width = double.infinity,
    this.height = 50.0,
    this.onPressed,
    this.color,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 64.0,
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(22.0),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed as void Function()?,
          child: Center(
            child: text != ""
                ? Text(
                    text,
                    style: TextStyle(
                      color: this.textColor ?? Colors.white,
                      fontSize: CommonConstants.normalText,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : child,
          ),
        ),
      ),
    );
  }
}
