import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 190,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(28),
        ),
        child: MaterialButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: () {},
          child: const Text(
            "Start",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 19, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
    ;
  }
}
