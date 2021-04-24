
import 'package:Latestapp/devrnz_design/login_page.dart';
import 'package:Latestapp/devrnz_design/new_user.dart';
import 'package:flutter/material.dart';


class Register_page extends StatefulWidget {
  @override
  _Register_pageState createState() => _Register_pageState();
}

class _Register_pageState extends State<Register_page> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromRGBO(255,130, 0, 5),
        child: Padding(
          padding: const EdgeInsets.only(top:130.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding:  const EdgeInsets.only(top:50, left: 130.0),
                child: Center(
                  child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text('d',
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontFamily: 'Pangolin-Regular',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
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
                                      color: Colors.white)),
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
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:70.0),
                child: RaisedButton(
                  color: Colors.white,
                  child: Text('Login', style: TextStyle(color: Color.fromRGBO(255,111, 0, 5),
                          fontSize: 15.0, fontFamily: 'IBMPlexSans-Regular', fontWeight: FontWeight.bold),),
                  onPressed: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(
                        builder:(BuildContext context)=> Login_page()));
                    });
                  },
                  padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 130.0),),
              ),
              
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: OutlineButton(
                  color:  Color.fromRGBO(255,111, 0, 5),
                  child: Text('Register Now', style: TextStyle(color: Colors.white,
                         fontFamily: 'IBMPlexSans-Regular', fontSize: 15.0),),
                  onPressed: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(
                        builder:(BuildContext context)=> First_page()));
                    });
                  },
                  padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 103.0),
                  borderSide: BorderSide(color: Colors.white,),
                  ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
