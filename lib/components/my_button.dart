import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final void Function()? onTap;
  final GlobalKey<FormState> formKey;

  const MyButton({super.key, required this.onTap, required this.formKey,});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (formKey.currentState != null && formKey.currentState!.validate()) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text('Sign In')));
        }
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            "Sign In",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
