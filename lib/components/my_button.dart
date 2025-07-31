import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final void Function()? onTap;

  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(child: Text("Sign In",
        style: TextStyle(color: Colors.white, fontSize: 16)
          
        ),),
       
      ),
    );
  }
}
