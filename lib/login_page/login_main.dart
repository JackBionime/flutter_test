import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/helpers/constants.dart';
import 'signin_account.dart';

/// Flutter 登入UI
/// https://www.youtube.com/watch?v=PpekJXY04fM

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login Page",
      theme: ThemeData(
          primaryColor: lightYellowColor,
          scaffoldBackgroundColor: blackColor,
          textTheme: TextTheme(
              headline4: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
              button: TextStyle(color: lightYellowColor),
              headline1: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                  fontSize: 18)),
          inputDecorationTheme: InputDecorationTheme(
              enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white.withOpacity(.2)),
          ))),
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold -> https://zhuanlan.zhihu.com/p/37697590
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      // 圖片載入 -> http://tw-hkt.blogspot.com/2019/08/flutter-image.html
                      image: AssetImage("assets/images/background.jpeg"),
                      fit: BoxFit.cover)),
            ),
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Hello Welcome\n",
                        style: Theme.of(context).textTheme.headline4),
                    TextSpan(
                        text: "Master the art of baking",
                        style: Theme.of(context).textTheme.headline1)
                  ],
                ),
              ),
              FittedBox(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SignInScreen();
                    }));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 25, right: 25),
                    padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.yellow,
                    ),
                    child: Row(
                      children: <Widget>[
                        Text("Start Learning",
                            style: Theme.of(context).textTheme.button.copyWith(
                                  color: Colors.black,
                                  fontSize: 15,
                                )),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
