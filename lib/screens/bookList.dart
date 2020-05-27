import 'package:ebook_app/global.dart';
import 'package:ebook_app/widgets/booksCarosel.dart';
import "package:flutter/material.dart";

class BookList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 20,
              ),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bg.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'What are we reading today?',
                    style: TextStyle(
                      fontSize: 40,
                      color: kBlackColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  BooksCarosel(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
