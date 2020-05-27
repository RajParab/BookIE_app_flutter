import 'package:ebook_app/models/booksData.dart';
import 'package:ebook_app/widgets/chapterCarosel.dart';
import 'package:flutter/material.dart';

class ChapterScreen extends StatelessWidget {
  final BookData book;

  const ChapterScreen({
    this.book,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
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
                height: 10,
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      height: 150,
                      width: 150,
                      child: Image(
                        image: AssetImage(book.imageURL),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(book.title),
                        Text(
                          book.author,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            book.description,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Chapters',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              ChapterCarosel(),
            ],
          ),
        ),
      ),
    );
  }
}
