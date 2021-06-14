import 'package:course_purchase/app/modules/course/model/course_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import 'courseDetails_store.dart';

class CourseDetailsPage extends StatefulWidget {
  final CourseModel courseModel;
  final String title;

  const CourseDetailsPage({Key? key, this.title = 'CourseDetailsPage', required this.courseModel})
      : super(key: key);
  @override
  CourseDetailsPageState createState() => CourseDetailsPageState();
}

class CourseDetailsPageState extends State<CourseDetailsPage> {
  final CourseDetailsStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(widget.courseModel.name),
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Image.network(
              widget.courseModel.image,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.courseModel.description,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Row(
                              children: List.generate(
                                5,
                                (index) => Icon(
                                  Icons.star,
                                  size: 15,
                                  color: Colors.amber,
                                ),
                              ),
                            ),
                            Text(
                              " ( 24 )",
                              style: TextStyle(
                                color: Colors.amber,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "R\$ ${widget.courseModel.price}",
                              style: TextStyle(
                                color: Colors.amber,
                                fontSize: 24,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "R\$ ${widget.courseModel.price}",
                              style: TextStyle(
                                color: Colors.red[300],
                                fontSize: 18,
                                decoration: TextDecoration.lineThrough,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Text("${widget.courseModel.id}"))
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child:
                                    Text("Cod: 0000${widget.courseModel.id}"))
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      store.adicionarProdutoNoCarrinho(widget.courseModel);
                      Modular.to.popAndPushNamed("/carrinho/vindo do compra");
                    },
                    child: Text(
                      "Adicionar ao carrinho".toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
