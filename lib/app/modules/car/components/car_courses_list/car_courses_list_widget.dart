import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'car_courses_list_store.dart';

class CarCoursesListWidget extends StatefulWidget {
  @override
  _CarCoursesListWidgetState createState() => _CarCoursesListWidgetState();
}

class _CarCoursesListWidgetState extends State<CarCoursesListWidget> {
  final CarCourseListStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: store.courseList.length,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        var current = store.courseList[index];
        return Card(
          margin: EdgeInsets.all(5),
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(current.courseModel.image),
            ),
            title: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "${current.courseModel.name}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Observer(builder: (BuildContext context) {
                        return Text(
                          "R\$ ${current.courseModel.price}",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                          ),
                        );
                      }),
                    ],
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete, color: Colors.red[400]))
              ],
            ),
          ),
        );
      },
    );
  }
}
