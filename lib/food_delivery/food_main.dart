import 'package:flutter/material.dart';
import 'package:flutter_app/helpers/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'food_card.dart';
import 'food_detail.dart';

void main() => {runApp(FoodApp())};

class FoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Food App",
      theme: ThemeData(
          fontFamily: "Poppins",
          scaffoldBackgroundColor: Colors.white,
          primaryColor: kPrimaryColor,
          textTheme: TextTheme(
              headline1: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black),
              headline2: TextStyle(
                fontSize: 20,
                color: Colors.green
              ),
              button: TextStyle(fontWeight: FontWeight.bold),
              headline6: TextStyle(fontWeight: FontWeight.bold))),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.all(10),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColor.withOpacity(0.5),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: kPrimaryColor),
          child: SvgPicture.asset("assets/icons/plus.svg"),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 50),
            child: Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                "assets/icons/menu.svg",
                height: 11,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Simple way to find testy food",
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                CategoryTittle(
                  title: "All",
                  active: true,
                ),
                CategoryTittle(
                  title: "Italian",
                  active: false,
                ),
                CategoryTittle(
                  title: "Asian",
                  active: false,
                ),
                CategoryTittle(
                  title: "Chinese",
                  active: false,
                ),
                CategoryTittle(
                  title: "Burgers",
                  active: false,
                )
              ],
            ),
          ),
          Container(
            // NOTE 搜尋匡
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: kBorderColor),
            ),
            child: SvgPicture.asset("assets/icons/search.svg"),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: <Widget>[
              FoodCard(
                title: "菜單1",
                message: "低熱量",
                image: "assets/images/image_1.png",
                price: 200,
                calories: "200K",
                description: "簡單低熱量",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return FoodDetail();
                    }),
                  );
                },
              ),
              FoodCard(
                title: "菜單2",
                message: "高熱量",
                image: "assets/images/image_2.png",
                price: 100,
                calories: "150K",
                description: "簡單好吃",
              )
            ]),
          ),
        ],
      ),
    );
  }
}

class CategoryTittle extends StatelessWidget {
  // NOTE 標題欄位
  final String title;
  final bool active;

  CategoryTittle({Key key, this.title, this.active = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 30),
      child: Text(
        title,
        style: Theme.of(context).textTheme.button.copyWith(
            color: active ? kPrimaryColor : kTextColor.withOpacity(.4)),
      ),
    );
  }
}
