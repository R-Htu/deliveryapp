import 'package:deliveryapp/components/my_button.dart';
import 'package:deliveryapp/components/my_textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //register method
  void register() async {
    /* 
    fill out authetication here...
     */
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              title: const Text("Use wants to register."),
            ));
  }

  @override
  Widget build(BuildContext context) {
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
              'Let\'s create an account for you',
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
            SizedBox(
              height: 10,
            ),

            //password textfield
            MyTextfield(
                controller: confirmPasswordController,
                hintext: 'Confirm Password',
                obscureText: true),
            const SizedBox(
              height: 25,
            ),
            MyButton(
              text: 'Sign Up ',
              onTap: register,
              style: TextButton.styleFrom(
                backgroundColor: Colors.red, // Or a color of your choice
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Already have an account',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              SizedBox(width: 5),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  'Log In',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
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
