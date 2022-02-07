import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytodo/widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        return SafeArea(
          child: Container(
            //column aligned to the centre
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 32.0,
            ),
            color: Color(0xFFF6F6F6),
            child: Stack(
              //allows widgets ontop of each other
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 32.0,
                      ),
                      child: Image(
                        image: AssetImage('assets/images/logo.png'),
                      ),
                    ),
                    //calling a refactored widget
                    TaskCardWidget(
                      title: 'Get started!',
                      desc:
                          ' welcome user to start your task please click on the button below',
                    ),
                  ],
                ),
                Positioned(
                  bottom: 0.0,
                  right: 0.0,
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                        color: Color(0xFFFFF16324),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Icon(
                      CupertinoIcons.add,
                      color: Colors.white,
                      size: 24.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
