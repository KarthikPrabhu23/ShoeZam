import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shop_flutter/screens/homescreen.dart';

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
                fit: BoxFit.cover, image: AssetImage('assets/man2.png'))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 500,
              width: double.infinity,
              color: const Color.fromARGB(180, 244, 117, 54),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(height: 30),
                  const Text(
                    'Sign in to continue',
                    style: TextStyle(
                      fontSize: 23,
                    ),
                  ),
                  const SizedBox(height: 70),
                  Text(
                    'Shoe House',
                    style: TextStyle(
                        fontSize: 63,
                        color: const Color.fromARGB(255, 52, 8, 8),
                        shadows: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.red.shade100,
                            offset: const Offset(3, 3),
                          )
                        ]),
                  ),
                  const SizedBox(height: 30),
                  Column(
                    children: [
                      SignInButton(
                        Buttons.Google,
                        text: "Sign up with Google",
                        onPressed: () {
                          googleSignUp().then(
                            (value) => Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
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
                    'By signing in, You are agreeing to our \n Terms & Privacy policy ',
                    style: TextStyle(color: Colors.black26),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
