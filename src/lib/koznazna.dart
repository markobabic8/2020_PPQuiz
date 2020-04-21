import 'dart:convert';
import 'ui/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ko_zna_zna extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString("assets/koznazna.json"),
      builder: (context, snapshot){
        var mydata = json.decode(snapshot.data.toString());
        if(mydata == null){
          return Scaffold(
            body: Center(
              child: Text(
                "Loading...",
                style: TextStyle(
                  color: QuizColors.text2.color,
                ),
              ),
            ),
          );
        }
        else{
          return koznazna();
        }
      },
    );
  }
}

class koznazna extends StatefulWidget {
  @override
  _koznaznaState createState() => _koznaznaState();
}

class _koznaznaState extends State<koznazna> {

  Widget choicebutton(){
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      child: MaterialButton(
          onPressed: (){},
          child: Text(
            "Odgovor 1",
            style: Theme.of(context).textTheme.display2,
          ),
          color: QuizColors.primary.color,
          splashColor: QuizColors.secondary.color,
          highlightColor: Colors.indigo[700],
          minWidth: 200.0,
          height: 45.0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child:  Text(
                "Neko pitanje bla bla?",
                style: Theme.of(context).textTheme.display1,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  choicebutton(),
                  choicebutton(),
                  choicebutton(),
                  choicebutton()
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Center(
                child: Text(
                  "10",
                  style: Theme.of(context).textTheme.display3
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
