import 'package:course_purchase/app/shared/store/car_store/car_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';
import 'components/car_courses_list/check_out_card.dart';

class CarPage extends StatefulWidget {
  final String title;
  const CarPage({Key? key, this.title = 'CarPage'}) : super(key: key);
  @override
  CarPageState createState() => CarPageState();
}

class CarPageState extends State<CarPage> {
  final CarStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);

    double getProportionateScreenWidth(double inputWidth) {
      double width = queryData.size.width;
      return (inputWidth / 375.0) * width;
    }

    return Scaffold(
      appBar: buildAppBar(context),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: ListView.builder(
          itemCount: store.coursesInCar.length,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Dismissible(
              key: Key(store.coursesInCar[index].courseModel.id.toString()),
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: AspectRatio(
                      aspectRatio: 0.98,
                      child: Container(
                        padding: EdgeInsets.all(
                          getProportionateScreenWidth(20),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage(
                                "${store.coursesInCar[index].courseModel.image}",
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        store.coursesInCar[index].courseModel.name,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        maxLines: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text.rich(
                        TextSpan(
                          text:
                              "\$${store.coursesInCar[index].courseModel.price}",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 12),
                  IconButton(
                    onPressed: () => setState(() {
                      store.removeCourseInCar(
                          store.coursesInCar[index].courseModel);
                    }),
                    icon: SvgPicture.asset("assets/icons/Trash.svg"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: CheckoutCard(
        total: store.total,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Seu Carrinho",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
