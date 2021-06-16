import 'package:course_purchase/app/shared/model/car_model/car_model.dart';
import 'package:course_purchase/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    Key? key,
    required this.carModel,
  }) : super(key: key);

  final CarModel carModel;

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);

    double getProportionateScreenWidth(double inputWidth) {
      double width = queryData.size.width;
      return (inputWidth / 375.0) * width;
    }

    return Row(
      children: [
        SizedBox(
          width: 100,
          child: AspectRatio(
            aspectRatio: 0.98,
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(20)),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage("${carModel.courseModel.image}"),
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
              carModel.courseModel.name,
              style: TextStyle(color: Colors.black, fontSize: 16),
              maxLines: 2,
            ),
            SizedBox(height: 10),
            Text.rich(
              TextSpan(
                text: "\$${carModel.courseModel.price}",
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
          onPressed: () {
          },
          icon: SvgPicture.asset("assets/icons/Trash.svg"),
        )
      ],
    );
  }
}
