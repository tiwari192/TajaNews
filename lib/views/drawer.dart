import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideDrawer extends StatefulWidget {
  @override
  _SideDrawerState createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
          color: Colors.transparent,
          child: ListView(
            children: <Widget>[
              Container(
                padding:
                    EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 15),
                child: Center(
                  child: Text(
                    'Sports',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const Divider(
                height: 20,
                color: CupertinoColors.black,
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 15),
                child: Center(
                  child: Text(
                    'Sports',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const Divider(
                height: 20,
                color: CupertinoColors.black,
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 15),
                child: Center(
                  child: Text(
                    'Sports',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const Divider(
                height: 20,
                color: CupertinoColors.black,
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 15),
                child: Center(
                  child: Text(
                    'Sports',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const Divider(
                height: 20,
                color: CupertinoColors.black,
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 15),
                child: Center(
                  child: Text(
                    'Sports',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const Divider(
                height: 20,
                color: CupertinoColors.black,
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 15),
                child: Center(
                  child: Text(
                    'Sports',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const Divider(
                height: 20,
                color: CupertinoColors.black,
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
            ],
          )),
    );
  }
}
