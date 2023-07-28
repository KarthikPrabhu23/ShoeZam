import "package:flutter/material.dart";
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, 
                image: AssetImage('assets/man2.png')
            )
        ),
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

                 const SizedBox(height:30),
                  const Text('Sign in to continue', style: TextStyle(fontSize: 23,),),
                  

                 const SizedBox(height:70),
                  Text('Shoe House',
                  style: TextStyle(
                    fontSize: 63,
                    color: const Color.fromARGB(255, 52, 8, 8),
                    shadows:[
                      BoxShadow(
                        blurRadius: 10,
                        color: Colors.red.shade100,
                        offset: const Offset(3, 3),
                      )
                    ]),
                  ),
                 const SizedBox(height:30),
                  Column(
                    children: [
                      SignInButton( 
                        Buttons.Google,
                        text: "Sign up with Google",
                        onPressed: () {},
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
                  
                 const SizedBox(height:30),
                  const Text('By signing in, You are agreeing to our \n Terms & Privacy policy ', 
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
