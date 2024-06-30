import 'package:flutter/material.dart';
import 'package:fooddelevery/components/my_button.dart';
import 'package:fooddelevery/components/my_textfield.dart';
import 'package:fooddelevery/pages/Home_page.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage>createState() =>_LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login(){
    Navigator.push(
        context,
        MaterialPageRoute(builder : (context) => const HomePage(),
        ) );
  }

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
              "Allesio",
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
              onTap: login,
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
              GestureDetector(
                onTap: widget.onTap,
                child:Text(
                    "Register Now!",
                    style: TextStyle(
                        color : Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold,
              ),
              ),
              )],
          )
        ],
      ),
      )
    );
  }
}


