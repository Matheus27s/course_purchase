import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FormError extends StatelessWidget {
  const FormError({Key? key, required this.errors}) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);

    double getProportionateScreenWidth(double inputWidth) {
      double width = queryData.size.width;
      return (inputWidth / 375.0) * width;
    }


    return Column(
      children: List.generate(
          errors.length, (index) => formErrorText(errors[index], getProportionateScreenWidth)),
    );
  }

  Row formErrorText(String error, screenWidth) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/Error.svg",
          height: screenWidth(14),
          width: screenWidth(14),
        ),
        SizedBox(
          width: screenWidth(10),
        ),
        Text(error),
      ],
    );
  }
}
