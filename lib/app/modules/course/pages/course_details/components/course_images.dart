import 'package:course_purchase/app/modules/course/model/course_model.dart';
import 'package:flutter/material.dart';

class CourseImages extends StatefulWidget {
  const CourseImages({
    Key? key,
    required this.course,
  }) : super(key: key);

  final CourseModel course;

  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<CourseImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);

    double screenWidth = queryData.size.width;
    double screenHeight = queryData.size.height;

    double getProportionateScreenWidth(double inputWidth) {
      double width = queryData.size.width;
      return (inputWidth / 375.0) * width;
    }

    double getProportionateScreenHeight(double inputHeight) {
      double screenHeight = queryData.size.width;
      return (inputHeight / 812.0) * screenHeight;
    }

    return Column(
      children: [
        SizedBox(height: getProportionateScreenWidth(24)),
        SizedBox(
          child: Container(
            width: getProportionateScreenWidth(screenWidth - 16),
            height: getProportionateScreenHeight(screenHeight),
            margin: EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage("${widget.course.image}"),
                  fit: BoxFit.cover),
            ),
          ),
        ),
      ],
    );
  }
}
