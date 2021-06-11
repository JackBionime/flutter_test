import 'package:flutter/material.dart';
import 'package:flutter_app/helpers/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FoodDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                    "assets/icons/backward.svg",
                    height: 11,
                  ),
                ),
                SvgPicture.asset(
                  "assets/icons/menu.svg",
                  height: 11,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.all(6),
              height: 305,
              width: 305,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: kSecondaryColor),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/image_1_big.png"),
                        fit: BoxFit.cover)),
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Vegan salad bowl\n",
                          style: Theme.of(context).textTheme.headline1),
                      TextSpan(
                          text: "With red tomato",
                          style: TextStyle(color: kTextColor.withOpacity(.4)))
                    ]),
                  ),
                  Text(
                    "\$20",
                    style: Theme.of(context).textTheme.headline2,
                  )
                ]),
            Text(
                "真好吃真的很好吃真好吃真的很好吃真好吃真的很好吃真好吃真的很好吃真好吃真的很好吃真好吃真的很好吃真好吃真的很好吃真好吃真的很好吃真好吃真的很好吃"),
            Spacer(),Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 27),
                    decoration: BoxDecoration(
                        color: kPrimaryColor.withOpacity(.19),
                        borderRadius: BorderRadius.circular(27)),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Add to bag",
                          style: Theme.of(context).textTheme.button,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        SvgPicture.asset(
                          "assets/icons/forward.svg",
                          height: 11,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kPrimaryColor.withOpacity(.26)),
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(15),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: kPrimaryColor),
                          child: SvgPicture.asset("assets/icons/bag.svg"),
                        ),
                        Positioned(
                          right: 15,
                          bottom: 15,
                          child: Container(
                            alignment: Alignment.center,
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: Text(
                              "0",
                              style: Theme.of(context)
                                  .textTheme
                                  .button
                                  .copyWith(color: kPrimaryColor),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
