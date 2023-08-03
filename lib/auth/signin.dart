// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import

import 'package:firebase_auth/firebase_auth.dart';

import 'dart:math' as math;
import "package:flutter/material.dart";
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shop_flutter/screens/home/homescreen.dart';
import 'package:shop_flutter/constants/colorfile.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => SignInState();
}

class SignInState extends State<SignIn> {
  googleSignUp() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn(
        scopes: ['email'],
      );
      final FirebaseAuth gauth = FirebaseAuth.instance;

      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final User? user = (await gauth.signInWithCredential(credential)).user;
      // print("signed in " + user.displayName);

      return user;
      // ignore: empty_catches
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitWidth,

            image: AssetImage(
              'assets/hero.png', 
              
            ),
            colorFilter: ColorFilter.mode(Color.fromARGB(225, 255, 255, 255), BlendMode.modulate,),
            // height:300,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 10,),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Obsessed with Shoes?',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20,color: Colors.black54, ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'ShoeZam !',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 62),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Column(
                children: [
                  
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 342,
                        width: double.infinity,
                        color: Col.SignBG,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const SizedBox(height: 30),
                              const Text(
                                'Sign in to continue',
                                style: TextStyle(
                                  fontSize: 23,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                              // const SizedBox(height: 70),
                              // Text(
                              //   'Shoe House',
                              //   style: TextStyle(
                              //     fontSize: 63,
                              //     color: Col.Title,
                              //     shadows: [
                              //       BoxShadow(
                              //         blurRadius: 10,
                              //         color: Colors.red.shade100,
                              //         offset: const Offset(3, 3),
                              //       )
                              //     ],
                              //   ),
                              // ),
                              const SizedBox(height: 20),
                              Column(
                                children: [
                                  SignInButton(
                                    Buttons.Google,
                                    text: "Sign up with Google",
                                    onPressed: () {
                                      googleSignUp().then(
                                        (value) => Navigator.of(context)
                                            .pushReplacement(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const HomeScreen(),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                  SignInButton(
                                    Buttons.AppleDark,
                                    text: "Sign up with Apple",
                                    onPressed: () {},
                                  ),
                                  SignInButton(
                                    Buttons.GitHub,
                                    text: "Sign up with GitHub",
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                              const SizedBox(height: 30),
                              const Text(
                                'By Signing in, \n    You are agreeing to our\n    Terms & Privacy policy ',
                                style: TextStyle(color: Colors.white60),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
