import 'package:flutter/material.dart';
import 'package:fooddelevery/components/my_button.dart';
import 'package:fooddelevery/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // logo
          Icon(
              Icons.lock_open_rounded,
          size: 100,
          color: Theme.of(context).colorScheme.inversePrimary,
          ),
          const SizedBox(height: 25),

          //Slogan
          Text(
              "Food Delivery App",
              style: TextStyle(
                fontSize:16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
          ),
          const SizedBox(height: 25),

          //Email Text Field
          MyTextField(
              controller: emailController,
              hintText: "Email",
              obsureText: false,
          ),

          const SizedBox(height:10),
          //Pw Text Field
          MyTextField(
            controller: passwordController,
            hintText: "Password",
            obsureText: true,
          ),

          const SizedBox(height:10),
          // Button
          MyButton(
              text: "Sign In",
              onTap: (){},
          ),
          const SizedBox(height:25),
          Row(
            mainAxisAlignment:  MainAxisAlignment.center,
            children: [
              Text("Not a member?",
                style: TextStyle(
                color : Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(width:4),
              Text("Register Now!",
                  style: TextStyle(
                  color : Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
              ),
              )],
          )
        ],
      ),
      )
    );
  }
}


