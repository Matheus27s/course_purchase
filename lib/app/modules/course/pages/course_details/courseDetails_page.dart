import 'package:course_purchase/app/modules/components/default_button.dart';
import 'package:course_purchase/app/modules/course/model/course_model.dart';
import 'package:course_purchase/constants.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import 'components/color_dots.dart';
import 'components/course_images.dart';
import 'components/product_description.dart';
import 'components/top_rounded_container.dart';
import 'courseDetails_store.dart';

class CourseDetailsPage extends StatefulWidget {
  final CourseModel courseModel;
  final String title;

  const CourseDetailsPage(
      {Key? key, this.title = 'CourseDetailsPage', required this.courseModel})
      : super(key: key);
  @override
  CourseDetailsPageState createState() => CourseDetailsPageState();
}

class CourseDetailsPageState extends State<CourseDetailsPage> {
  final CourseDetailsStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    double screenWidth = queryData.size.width;

    double getProportionateScreenWidth(double inputWidth) {
      double width = queryData.size.width;
      return (inputWidth / 375.0) * width;
    }

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Detalhe do curso"),
      ),
      body: ListView(
        children: [
          CourseImages(course: widget.courseModel),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                CourseDescription(
                  course: widget.courseModel,
                  pressOnSeeMore: () {},
                ),
                TopRoundedContainer(
                  color: Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      Text(
                        "Agradecemos a sua preferência",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: kPrimaryColor),
                      ),
                      SizedBox(width: 5),
                      TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: screenWidth * 0.15,
                            right: screenWidth * 0.15,
                            bottom: getProportionateScreenWidth(40),
                            top: getProportionateScreenWidth(15),
                          ),
                          child: DefaultButton(
                            text: "Adicionar ao Carrinho",
                            press: () {
                              store.addCourseInCar(widget.courseModel);
                              Modular.to.popAndPushNamed("/car");
                            },
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
      ),
    );
  }
}
