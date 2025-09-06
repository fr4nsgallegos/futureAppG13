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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildCircleH(), _drawHeader()],
          ),
        ),
      ),
    );
  }
}
