import 'package:ebook_app/global.dart';
import 'package:ebook_app/models/chapters.dart';
import 'package:ebook_app/screens/readChapter.dart';
import 'package:flutter/material.dart';

class ChapterCarosel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: chapters.length,
        itemBuilder: (BuildContext context, int index) {
          print("hello");
          ChaptersList chapter = chapters[index];
          return Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: GestureDetector(
              onTap: () {
                print('Chapter' + chapter.chapterNo.toString());
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ReadChapter(
                      chapter: chapter,
                    ),
                  ),
                );
              },
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kIconColor,
                    ),
                    child: Text(
                      chapter.chapterNo.toString(),
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 75,
                    top: 15,
                    right: 2,
                    child: Text(
                      chapter.chapterTitle,
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
