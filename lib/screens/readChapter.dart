import 'package:ebook_app/models/chapters.dart';
import 'package:flutter/material.dart';

import '../global.dart';

class ReadChapter extends StatelessWidget {
  final ChaptersList chapter;

  ReadChapter({
    this.chapter,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text(
                chapter.chapterNo.toString() + '-' + chapter.chapterTitle,
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w600,
                  color: kLightBlackColor,
                ),
              ),
              Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    chapter.chapterContent,
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
