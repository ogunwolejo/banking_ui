import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:project/drawer/drawer.dart';

class Header extends StatefulWidget {
  final IconData leadingIcon;
  final int message_count;

  const Header({Key key, this.leadingIcon, this.message_count});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _headerState();
  }
}

class _headerState extends State<Header> {
  IconData get _leadingIcon => widget.leadingIcon;
  num get _message_count => widget.message_count;

  @override
  Widget build(BuildContext content) {
    return Material(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // the menu button
            GestureDetector(
              child: Icon(
                _leadingIcon ?? Icons.list,
                color: Colors.white,
                size: 25,
              ),
              onTap: () {
                print(1);
                AppDrawer();
              },
            ),
            // the notiication button
            GestureDetector(
              onTap: () {},
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(7),
                      child: Text(
                        '$_message_count',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 7,
                      height: 7,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}
