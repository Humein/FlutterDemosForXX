import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
      alignment: FractionalOffset.center,
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
           Icon(Icons.error_outline, color: Colors.red[300], size: 120.0),
           Container(
            padding:  EdgeInsets.only(top: 16.0),
            child:  Text(
              "好像有些小错误，ε＝(#>д<)ﾉ",
              style:  TextStyle(
                fontSize: 20,
                color: Colors.red[300],
              ),
            ),
          )
        ],
      ),
    ),);
  }
}
