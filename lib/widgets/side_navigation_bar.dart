import 'package:flutter/material.dart';
import 'package:get_in_touch/screens/explore_screen.dart';

// the code below is for creating a side navigation bar for
// the app

class SideNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Text('Drawer Header'),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        ListTile(
          title: Text(
            'Explore',
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ExploreScreen();
                },
              ),
            );
          },
        ),
        ListTile(
          title: Text(
            'Admissions',
          ),
        ),
      ],
    );
  }
}
