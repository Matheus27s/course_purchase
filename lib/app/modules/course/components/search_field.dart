import 'package:course_purchase/constants.dart';
import 'package:flutter/material.dart';

import '../course_store.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key, required this.courseStore}) : super(key: key);

  final CourseStore courseStore;

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);

    double screenWidth = queryData.size.width;

    double getProportionateScreenWidth(double inputWidth) {
      double width = queryData.size.width;
      return (inputWidth / 375.0) * width;
    }

    return Container(
      width: screenWidth * 0.7,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onChanged: (value) => courseStore.findCourse(value),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
                vertical: getProportionateScreenWidth(9)),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: "Buscar curso",
            prefixIcon: Icon(Icons.search)),
      ),
    );
  }
}
