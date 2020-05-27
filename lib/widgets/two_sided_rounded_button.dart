import 'package:flutter/material.dart';

import '../global.dart';

class TwoSidedRoundedButton extends StatelessWidget{
  final Function onPress;

  const TwoSidedRoundedButton({
    this.onPress,
  });
  @override
  Widget build(BuildContext context){
    return Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: buttonColor,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      ),
                    ),
                    child: GestureDetector(
                      onTap: onPress,
                      child: Text(
                        'Read Now',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  );
  }
}