import 'package:ebook_app/screens/bookList.dart';
import 'package:ebook_app/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

import 'global.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ebook',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(
              displayColor: kBlackColor,
            ),
      ),
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/bookList': (BuildContext context) => new BookList(),
      },
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Bitmap.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Book',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w500,
                        color: kLightBlackColor,
                      ),
                    ),
                    TextSpan(
                      text: 'IE',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: kBlackColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: RoundedButton(
                  text: "Get Started",
                  verticalPadding: 13,
                  fontSize: 20,
                  press: () {
                    print('button pressed');
                    Navigator.of(context).pushNamed('/bookList');
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
