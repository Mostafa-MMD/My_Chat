import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    required this.color,
    required this.title,
    required this.onPressed,
  });

  final Color color;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0),
      child: Material(
        elevation: 5,
        color: color,
        borderRadius: BorderRadius.circular(10.0),
        child: MaterialButton(
          height: 30,
          minWidth: 300,
          onPressed: onPressed,
          child: Text(
            title,
            style: const TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
