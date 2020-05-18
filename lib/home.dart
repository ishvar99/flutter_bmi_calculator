import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: myCard(color: Color(0xFF1D1E33),),
                ),
                Expanded(
                  child: myCard(color: Color(0xFF1D1E33),),
                )
              ],
            ),
          ),
          Expanded(
            child: myCard(color: Color(0xFF1D1E33),),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: myCard(color: Color(0xFF1D1E33),),
                ),
                Expanded(
                  child: myCard(color: Color(0xFF1D1E33),),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


class myCard extends StatelessWidget {
  final Color color;
  myCard({this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: color
        ),
        margin: EdgeInsets.all(15.0)
    );
  }
}
