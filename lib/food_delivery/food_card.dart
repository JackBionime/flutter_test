import 'package:flutter/material.dart';
import 'package:flutter_app/helpers/constants.dart';

class FoodCard extends StatelessWidget {
  final String title;
  final String message;
  final String image;
  final int price;
  final String calories;
  final String description;
  final Function press;

  const FoodCard({
    Key key,
    this.title,
    this.message,
    this.image,
    this.price,
    this.calories,
    this.description, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(left: 20),
        height: 400,
        width: 270,
        child: Stack(
          children: <Widget>[
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                height: 380,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(34),
                    color: kPrimaryColor.withOpacity(.06)),
              ),
            ),
            Positioned(
              //沙拉背景圖
              left: 10,
              top: 10,
              child: Container(
                height: 181,
                width: 181,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kPrimaryColor.withOpacity(.15)),
              ),
            ),
            Positioned(
              // 沙拉圖
              top: 0,
              left: -50,
              child: Container(
                height: 184,
                width: 276,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(image))),
              ),
            ),
            Positioned(
              // Prise
              right: 5,
              top: 80,
              child: Text(
                "\$$price",
                style: Theme.of(context)
                    .textTheme
                    .headline1
                    .copyWith(color: kPrimaryColor),
              ),
            ),
            Positioned(
                top: 201,
                left: 40,
                child: Container(
                  width: 210,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Text(
                        message,
                        style: TextStyle(color: kTextColor.withOpacity(.4)),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        description,
                        maxLines: 4,
                        style: TextStyle(color: kTextColor.withOpacity(.65)),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(calories)
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}