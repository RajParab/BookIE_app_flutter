import 'package:ebook_app/models/booksData.dart';
import 'package:ebook_app/screens/chapterScreen.dart';
import 'package:ebook_app/widgets/two_sided_rounded_button.dart';
import 'package:flutter/material.dart';

import '../global.dart';

class BooksCarosel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: books.length,
        itemBuilder: (BuildContext context, int index) {
          BookData book = books[index];
          return Container(
            width: MediaQuery.of(context).size.height / 3,
            margin: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 120,
                  width: 120,
                  child: Image(
                    image: AssetImage(book.imageURL),
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  left: 120,
                  right: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        book.title,
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        book.author,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 140,
                  left: 2,
                  right: 2,
                  child: Text(
                    book.description,
                  ),
                ),
                Positioned(
                  top: 180,
                  left: 2,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: kIconColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Genre:' + book.genre,
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: TwoSidedRoundedButton(
                    onPress: () {
                      print('Hello');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => ChapterScreen(
                            book: book,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
