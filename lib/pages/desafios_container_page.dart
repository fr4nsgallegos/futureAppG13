import 'package:flutter/material.dart';

class DesafiosContainerPage extends StatelessWidget {
  const DesafiosContainerPage({super.key});

  Widget _buildCircleH() {
    return Container(
      width: 350,
      height: 350,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.orange, width: 10),
      ),
      child: Center(
        child: Text(
          'H',
          style: TextStyle(
            color: Colors.orange, // Color de la letra 'H'
            fontSize: 180,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _drawHeader() {
    return Container(
      margin: EdgeInsets.all(16),
      height: 130,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.lightBlueAccent,
            offset: Offset(9, 9),
            blurRadius: 10,
          ),
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
        color: Colors.blueAccent,
      ),
      child: Text(
        "I am header",
        style: TextStyle(color: Colors.white, fontSize: 38),
      ),
    );
  }

  Widget _buildChallenge3() {
    return Container(
      width: 300,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.lightBlue.shade200,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              child: Center(
                child: Text(
                  'Challenge',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [_buildCircleH(), _drawHeader(), _buildChallenge3()],
            ),
          ),
        ),
      ),
    );
  }
}
