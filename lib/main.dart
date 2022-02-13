import 'package:flutter/material.dart';
import 'package:uidesign/gradient.dart';
import 'package:uidesign/screens/Signup.dart';
import 'package:uidesign/screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UiScreen(),
    );
  }
}

class UiScreen extends StatefulWidget {
  @override
  _UiScreenState createState() => _UiScreenState();
}

class _UiScreenState extends State<UiScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      ClipOval(
                          child: Image.asset(
                        'images/intern.jpg',
                        height: 40,
                        width: 40,
                      )),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text(
                        'OSTELLO',
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 150,
                    ),
                    RichText(
                        text: const TextSpan(
                      children: [
                        TextSpan(
                          text: '     Boost  ',
                          style: TextStyle(
                            color: Colors.purple,
                            fontSize: 38,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'your \n acadmic journey \n     with',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 38,
                          ),
                        ),
                        TextSpan(
                            text: ' Ostello',
                            style: TextStyle(
                              color: Colors.purple,
                              fontSize: 42,
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    )),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        margin: const EdgeInsets.only(left: 30, right: 30),
                        decoration:  BoxDecoration(
                          boxShadow:  [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                              colors: [
                                Colors.pink,
                                Colors.purple,
                                Color(0xff123456),
                              ]),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Continue with Google',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 72,
                            ),
                            Icon(
                              Icons.g_mobiledata,
                              size: 56,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      child: Container(
                        height: 50,
                        margin: EdgeInsets.only(left: 30, right: 30),
                        decoration: BoxDecoration(

                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.red,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Continue with Facebook',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Icon(
                              Icons.facebook_outlined,
                              size: 40,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(children: <Widget>[
                      Expanded(
                        child: Container(
                            margin:
                                const EdgeInsets.only(left: 10.0, right: 15.0),
                            child: const Divider(
                              thickness: 1,
                              indent: 90,
                              color: Colors.red,
                              height: 50,
                            )),
                      ),
                      Text("or"),
                      Expanded(
                        child: Container(
                            margin:
                                const EdgeInsets.only(left: 15.0, right: 10.0),
                            child: const Divider(
                              thickness: 1,
                              endIndent: 90,
                              color: Colors.red,
                              height: 50,
                            )),
                      ),
                    ]),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        UnicornOutlineButton(
                            height: 50,
                            width: 130,
                            strokeWidth: 2,
                            radius: 10,
                            gradient: LinearGradient(
                              colors: [Colors.pink, Colors.deepPurple],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            child: Text('Login',style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),),
                            onPressed: () {}),
                        UnicornOutlineButton(
                            strokeWidth: 2,
                            radius: 10,
                            gradient: LinearGradient(
                              colors: [Colors.pink, Colors.deepPurple],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            child: Text(
                              'Register',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {},
                            width: 130,
                            height: 50),
                      ],
                    ),
                    const SizedBox(
                      height: 120,
                    ),
                    const Text(
                      'By continuing, you agree to our',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Terms of Service ',
                          style: TextStyle(fontSize: 11),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Privacy Policy',
                          style: TextStyle(fontSize: 11),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// RichText(
//   textAlign: TextAlign.start,
//   text:  TextSpan(
//     children: [
//       WidgetSpan(
//         child: Image.asset('images/intern.jpg',height: 40,width: 40,),
//       ),
//       WidgetSpan(child: SizedBox(
//         width: 10,
//       )),
//       TextSpan(
//         style: TextStyle(fontSize: 36,color: Colors.green),
//         text: "Click ",
//       ),
//       TextSpan(
//         text: " to add",
//       ),
//     ],
//   ),
// )
