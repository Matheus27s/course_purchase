import 'package:flutter/material.dart';
import 'sign_form.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    MediaQueryData queryData = MediaQuery.of(context);

    double screenHeight = queryData.size.height;

    double getProportionateScreenHeight(double inputHeight) {
      double height = queryData.size.height;
      return (inputHeight / 812.0) * height;
    }

    double getProportionateScreenWidth(double inputWidth) {
      double width = queryData.size.width;
      return (inputWidth / 375.0) * width;
    }

    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: screenHeight * 0.04),
                Text(
                  "Course Purchase",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Faça login com seu e-mail e senha",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: screenHeight * 0.08),
                SignForm(),
                SizedBox(height: screenHeight * 0.08),
                SizedBox(height: getProportionateScreenHeight(20)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
