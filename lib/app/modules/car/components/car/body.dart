import 'package:course_purchase/app/modules/car/components/car/product_description.dart';
import 'package:course_purchase/app/modules/car/components/car/top_rounded_container.dart';
import 'package:course_purchase/app/modules/course/model/course_model.dart';
import 'package:flutter/material.dart';
import 'course_images.dart';

class Body extends StatelessWidget {
  final CourseModel courseModel;

  const Body({Key? key, required this.courseModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);

    double getProportionateScreenWidth(double inputWidth) {
      double width = queryData.size.width;
      return (inputWidth / 375.0) * width;
    }

    return ListView(
      children: [
        CourseImages(courseModel: courseModel),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              CourseDescription(
                courseModel: courseModel,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    ColorDots(product: product),
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: getProportionateScreenWidth(40),
                          top: getProportionateScreenWidth(15),
                        ),
                        child: DefaultButton(
                          text: "Add To Cart",
                          press: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
