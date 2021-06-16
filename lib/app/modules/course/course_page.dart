import 'package:course_purchase/app/modules/components/coustom_bottom_nav_bar.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:course_purchase/app/modules/course/course_store.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../enums.dart';
import 'components/home_header.dart';

class CoursePage extends StatefulWidget {
  final String title;
  const CoursePage({Key? key, this.title = 'CoursePage'}) : super(key: key);
  @override
  CoursePageState createState() => CoursePageState();
}

class CoursePageState extends State<CoursePage> {
  final CourseStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    print(store.isLogged);
    print(store.courses);

    MediaQueryData queryData = MediaQuery.of(context);

    double getProportionateScreenWidth(double inputWidth) {
      double width = queryData.size.width;
      return (inputWidth / 375.0) * width;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Cursos"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              HomeHeader(),
              SizedBox(height: getProportionateScreenWidth(10)),
              Observer(
                builder: (_) {
                  return GridView.builder(
                    primary: false,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: store.courses.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: .7),
                    itemBuilder: (_, index) {
                      var current = store.courses[index];
                      print(current);
                      return InkWell(
                        onTap: () {
                          Modular.to
                              .pushNamed('pages/details', arguments: current);
                        },
                        child: Container(
                          margin: EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: NetworkImage("${current.image}"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            current.name,
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "${current.category}",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            "R\$ ${current.price}",
                                            maxLines: 2,
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: kPrimaryColor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
