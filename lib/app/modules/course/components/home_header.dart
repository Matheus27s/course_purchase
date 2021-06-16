import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../course_store.dart';
import 'icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key, required this.courseStore}) : super(key: key);

  final CourseStore courseStore;

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);

    double getProportionateScreenWidth(double inputWidth) {
      double width = queryData.size.width;
      return (inputWidth / 375.0) * width;
    }

    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(courseStore: courseStore),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            press: () => Modular.to.pushNamed('/car'),
          ),
        ],
      ),
    );
  }
}
