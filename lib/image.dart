import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Stack(
              children: <Widget>[
                Container(
                    color: Colors.purple[300],
                    alignment: Alignment.bottomLeft,
                    child: CupertinoButton(
                        child: Text("Transfer",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black)),
                        onPressed: () {}),
                    height: 300.0,
                    width: 400.0,
                    margin: EdgeInsets.all(18)),
                Container(
                    color: Colors.white,
                    alignment: Alignment.bottomCenter,
                    child: Text("Costa Mendekat ke paris",
                        style: TextStyle(fontSize: 25, color: Colors.black)),
                    height: 240.0,
                    width: 400.0,
                    margin: EdgeInsets.all(20)),
                Container(
                    child: Image(
                      image: NetworkImage(
                          'https://akcdn.detik.net.id/visual/2018/01/07/e8a5b617-a988-4a2d-9acc-dfc786ef5a1a_169.jpeg?w=650&q=90'),
                    ),
                    margin: EdgeInsets.all(20)),
              ],
            );
  }
}
