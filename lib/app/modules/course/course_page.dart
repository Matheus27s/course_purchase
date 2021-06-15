import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:course_purchase/app/modules/course/course_store.dart';
import 'package:flutter/material.dart';

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

    return Scaffold(
      appBar: AppBar(
        title: Text("Cursos"),
      ),
      body: Observer(
        builder: (_) {
          return GridView.builder(
            itemCount: store.courses.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: .7),
            itemBuilder: (_, index) {
              var current = store.courses[index];
              print(current);
              return InkWell(
                onTap: () {
                  Modular.to.pushNamed('pages/details', arguments: current);
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(10),
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
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "R\$ ${current.price}",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "R\$ ${current.price}",
                                  style: TextStyle(
                                    color: Colors.red[300],
                                    decoration: TextDecoration.lineThrough,
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
                                    "${current.price}",
                                    maxLines: 2,
                                    style: TextStyle(
                                      color: Colors.black87,
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
    );
  }
}
