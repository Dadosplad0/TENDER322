import 'package:flutter/material.dart';
import 'package:tender322/widget/background_painter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tender322/widget/google_signup_button_widget.dart';
import 'package:firebase_core/firebase_core.dart';

class SignUpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Stack(
        fit: StackFit.expand,
        children: [
          CustomPaint(painter: BackgroundPainter()),
          buildSignUp(),
        ],
      );

  Widget buildSignUp() => Column(
        children: [
          SizedBox(height: 350),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: 175,
              child: Text(
                'TENDER',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 150),
          GoogleSignupButtonWidget(),
          SizedBox(height: 12),
          Text(
            'Login to continue',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 190),
          Text('If you would like to use without sign in, press back button.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ))
        ],
      );
}
