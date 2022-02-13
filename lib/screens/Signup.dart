import 'package:flutter/material.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.white,
      child: const Center(
        child: Text('wlecome to signup screen',style: TextStyle(
          fontSize: 30,color: Colors.black
        ),),
      ),
    );
  }
}
