import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  Animation _heartAnimation;
  AnimationController _heartAnimationController;

  final int _cursorCost = 8;
  final int _multiplyCost = 12;

  int _counter = 0;
  int _multiplyBy = 1;
  int _cursorNumber = 1;

  //Loading counter value on start
  _loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0);
      _multiplyBy = (prefs.getInt('multiplyBy') ?? 1);
      _cursorNumber = (prefs.getInt('cursorNumber') ?? 1);
    });
  }

  _periodicSave() {
    Timer.periodic(Duration(seconds: 2), (timer) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setInt('counter', _counter);
      await prefs.setInt('multiplyBy', _multiplyBy);
      await prefs.setInt('cursorNumber', _cursorNumber);
    });
  }

  //Incrementing counter after click
  void _incrementCounter() {
    setState(() {
      _counter = _counter + (1 * _multiplyBy);
    });
  }

  void _launchTimer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _counter = _counter + _cursorNumber - 1;
      });
    });
  }

  void _incrementMultiple() {
    setState(() {
      var cost = _multiplyCost * _multiplyBy;
      if (_counter > cost) {
        _counter = _counter - (_multiplyCost * _multiplyBy);
        _multiplyBy++;
      }
    });
  }

  void _incrementCursor() {
    setState(() {
      var cost = 10 * _cursorNumber;
      if (_counter > cost) {
        _counter = _counter - (_cursorCost * _cursorNumber);
        _cursorNumber++;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _initGame();

    _heartAnimationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2000));

    _heartAnimation = Tween(begin: 210.0, end: 240.0).animate(CurvedAnimation(
        curve: Curves.bounceOut, parent: _heartAnimationController));

    _heartAnimationController.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        _heartAnimationController.repeat();
      }
    });

    _heartAnimationController.forward();
  }

  void _initGame() async {
    await _loadData();
    _periodicSave();
    _launchTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/background.jpg'), fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.black45,
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 0),
              child: Column(
                children: [
                  Text(
                    '$_counter 🍪',
                    style: GoogleFonts.schoolbell(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 36,
            ),
            Container(
              width: 280,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/sunlight-halo.png'),
                    fit: BoxFit.cover),
              ),
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: FlatButton(
                    onPressed: _incrementCounter,
                    child: Image.asset('images/cookie.png')),
              ),
            ),
            SizedBox(
              height: 36,
            ),
            Container(
              height: 120,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: FlatButton(
                              onPressed: _incrementCursor,
                              child: Image.asset('images/mouse-pointer.png')),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            "+ $_cursorNumber/s",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                        Text(
                          "${_cursorNumber * _cursorCost} 🍪",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: FlatButton(
                              onPressed: _incrementMultiple,
                              child: Image.asset('images/cursor.png')),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "x $_multiplyBy",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                        Text(
                          "${_multiplyBy * _multiplyCost} 🍪",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
