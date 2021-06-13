import 'package:flutter/material.dart';

import '../../../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({Key? key, required this.text,required this.press}) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {

    MediaQueryData queryData = MediaQuery.of(context);

    double getProportionateScreenHeight(double inputHeight) {
      double height = queryData.size.height;
      return (inputHeight / 812.0) * height;
    }

    double getProportionateScreenWidth(double inputWidth) {
      double width = queryData.size.width;
      return (inputWidth / 375.0) * width;
    }

    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: ElevatedButton(
        style: raisedButtonStyle,
        onPressed: () => press(),
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.black87,
  primary: kPrimaryColor,
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
  ),
);