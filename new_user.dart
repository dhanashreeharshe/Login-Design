
import 'package:Latestapp/devrnz_design/login_page.dart';
import 'package:Latestapp/devrnz_design/register_page.dart';
import 'package:flutter/material.dart';

class First_page extends StatefulWidget {
  @override
  _First_pageState createState() => _First_pageState();
}

class _First_pageState extends State<First_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: <Widget>[
              ClipPath(
              clipper: MyClipper2(),
              child: Container(
                width: double.infinity ,
                height: 210 ,
                color: Color.fromRGBO(255, 111, 0, 5),
              ),
            ),
              ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.arrow_back,
                              size: 25.0, color: Colors.black),
                          onPressed: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Register_page()));
                            });
                          }),
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 50, left: 130.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text('d',
                                style: TextStyle(
                                    fontSize: 35,
                                    fontFamily: 'Pangolin-Regular',
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(255, 111, 0, 5))),
                            Text('ev',
                                style: TextStyle(
                                    fontSize: 35,
                                    fontFamily: 'Pangolin-Regular',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            Text('rnz',
                                style: TextStyle(
                                    fontSize: 35,
                                    fontFamily: 'Pangolin-Regular',
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(255, 111, 0, 5))),
                          ],
                        ),
                        Padding(
                            padding: EdgeInsets.only(top:0.0, right:80.0),
                            child: Text('devrnz designs',
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold,  fontFamily: 'Pangolin-Regular',
                                    color: Colors.black)))
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 30.0),
                  child: Text('Username',
                      style:
                          TextStyle(fontSize: 15, 
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IBMPlexSans-Regular')),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 30.0, top: 5.0),
                  child: Container(
                      width: 80.0,
                      height: 40.0,
                      color: Colors.grey.shade300,
                      child: TextField(
                        cursorColor: Colors.grey,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 30.0),
                  child: Text('Email ID',
                      style:
                          TextStyle(fontSize: 15, 
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IBMPlexSans-Regular')),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 30.0, top: 5.0),
                  child: Container(
                      width: 80.0,
                      height: 40.0,
                      color: Colors.grey.shade300,
                      child: TextField(
                        cursorColor: Colors.grey,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                    left: 30.0,
                  ),
                  child: Text('Password',
                      style:
                          TextStyle(fontSize: 15, 
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IBMPlexSans-Regular')),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 30.0, top: 5.0),
                  child: Container(
                      width: 80.0,
                      height: 40.0,
                      color: Colors.grey.shade300,
                      child: TextField(
                        cursorColor: Colors.grey,
                        obscureText: true,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 8.0),
                  child: RaisedButton(
                    color: Color.fromRGBO(255, 111, 0, 5),
                    child: Text(
                      'Register Now',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IBMPlexSans-Regular'),
                    ),
                    onPressed: () {},
                    padding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 100.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0, left: 60.0),
                  child: Row(
                    children: <Widget>[
                      Text('Already have an account ?',
                          style: TextStyle(color: Colors.black,fontFamily: 'IBMPlexSans-Regular', fontWeight: FontWeight.bold)),
                      FlatButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Login_page()));
                          });
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Color.fromRGBO(255, 111, 0, 5),
                              fontWeight: FontWeight.bold, fontFamily: 'IBMPlexSans-Regular'
                              ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
              ],
            )));
  }
}

class MyClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.quadraticBezierTo(
        size.width - 10 , size.height - 50, size.width  , size.height - 20.0);
    path.lineTo(size.width , 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}