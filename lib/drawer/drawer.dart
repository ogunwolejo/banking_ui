import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppDrawerState();
  }
}

class AppDrawerState extends State<AppDrawer> {


  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    // TODO: implement build
    return DrawerController(
      dragStartBehavior: DragStartBehavior.start,
      enableOpenDragGesture: true,
      alignment: DrawerAlignment.end,
      child: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Drawer'),
            ),
          ],
        ),
      ),
    );
  }
}
