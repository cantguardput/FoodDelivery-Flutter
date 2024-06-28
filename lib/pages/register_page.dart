import 'package:flutter/material.dart';
import 'package:fooddelevery/components/my_button.dart';
import 'package:fooddelevery/components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
final void Function()? onTap;
const RegisterPage({super.key, required this.onTap});

@override
State<RegisterPage>createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController comfirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .background,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Icon(
                Icons.lock_open_rounded,
                size: 100,
                color: Theme
                    .of(context)
                    .colorScheme
                    .inversePrimary,
              ),
              const SizedBox(height: 25),

              //Slogan
              Text(
                "Let's Create Account For You",
                style: TextStyle(
                  fontSize: 16,
                  color: Theme
                      .of(context)
                      .colorScheme
                      .inversePrimary,
                ),
              ),
              const SizedBox(height: 25),

              //Email Text Field
              MyTextField(
                controller: emailController,
                hintText: "Email",
                obsureText: false,
              ),

              const SizedBox(height: 10),
              //Pw Text Field
              MyTextField(
                controller: passwordController,
                hintText: "Password",
                obsureText: true,
              ),

              const SizedBox(height: 10),
              //Pw Text Field
              MyTextField(
                controller: comfirmPasswordController,
                hintText: "Comfirm Password",
                obsureText: true,
              ),

              const SizedBox(height: 10),
              // Button
              MyButton(
                text: "Sign Up",
                onTap: () {},
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have Account?",
                    style: TextStyle(
                        color: Theme
                            .of(context)
                            .colorScheme
                            .inversePrimary),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "Login Here!",
                      style: TextStyle(
                        color: Theme
                            .of(context)
                            .colorScheme
                            .inversePrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}