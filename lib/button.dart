import 'package:flutter/material.dart';
class calcButton extends StatelessWidget {
  String btntxt;
  Color btnclr;
  Color txtclr;
  final Function(String) onPressed;


  calcButton({ required this.btntxt, required this.btnclr, required this.txtclr,required this.onPressed,});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(btntxt),
      child: Text(btntxt,
        style: TextStyle(
          color: txtclr,
          fontSize: 35,
        ),
      ),
      style: ElevatedButton.styleFrom(
         backgroundColor: btnclr,
         shape: CircleBorder(),
         minimumSize: Size(95,80),
      )

    );
  }
}
