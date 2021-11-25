import 'package:flutter/material.dart';
import 'package:match_mamker/shared/utils/size_config.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/images/SPLASH.png'),
          ),
          Text(
            'Match Making ...',
            style: TextStyle(fontSize: 30.0),
          ),
        ],
      ),
    );
  }
}
