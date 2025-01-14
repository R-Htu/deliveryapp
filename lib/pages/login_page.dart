import 'package:deliveryapp/components/my_button.dart';
import 'package:deliveryapp/components/my_textfield.dart';
import 'package:deliveryapp/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  void login() {
    /* fill out authentication here..
    */

    //navigate to home page
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    var invPrimary = TextStyle(color: Colors.blue, fontWeight: FontWeight.bold);
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Food Delivery App',
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            SizedBox(
              height: 25,
            ),

            //email textfield
            MyTextfield(
                controller: emailController,
                hintext: 'Email',
                obscureText: false),

            SizedBox(
              height: 10,
            ),

            //password textfield
            MyTextfield(
                controller: passwordController,
                hintext: 'Password',
                obscureText: true),
            const SizedBox(
              height: 10,
            ),
            MyButton(text: 'Sign In', onTap: login),
            const SizedBox(
              height: 25,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Not a member',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              SizedBox(width: 5),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  'Register Now',
                  style: invPrimary,
                ),
              ),
            ])

            //sign in button

            //not a memeber? register now
          ],
        ),
      ),
    );
  }
}
