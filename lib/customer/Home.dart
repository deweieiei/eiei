import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currenIndex = 0;
  final screen = [
    tt(),
    tt(),
    tt(),
    //   HomeFix(),
    //  Post2(),
    //  ProfileCustomer(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currenIndex],
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: CurvedNavigationBar(
            backgroundColor: Colors.white,
            color: Colors.red,
            items: <Widget>[
              Icon(
                Icons.home_filled,
                size: 20,
                color: Colors.white,
              ),
              Icon(
                Icons.add,
                size: 40,
                color: Colors.white,
              ),
              Icon(
                Icons.manage_accounts,
                size: 20,
                color: Colors.white,
              ),
            ],
            onTap: (index) => setState((() => currenIndex = index)),
          ),
        ),
      ),
    );
  }
}

class tt extends StatefulWidget {
  const tt({Key? key}) : super(key: key);

  @override
  State<tt> createState() => _ttState();
}

class _ttState extends State<tt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
