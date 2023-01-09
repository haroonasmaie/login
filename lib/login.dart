import 'package:flutter/material.dart';
import 'package:login/buttons.dart';
import 'package:login/colors.dart';
import 'package:login/fieldtext.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: double.infinity,
                decoration:
                    const BoxDecoration(gradient: ColorUtils.appBarGradient),
              ),
              const Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 80),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 20),
                    ),
                  )),
              Positioned(
                top: 200,
                left: 10,
                right: 10,
                child: Card(
                  child: Column(
                    children: [
                      const Icon(
                        Icons.shopping_cart,
                        size: 100,
                      ),
                      const Text(
                        "wellcome back",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const FieldText(hint: "email", icon: Icon(Icons.email)),
                      const FieldText(
                        hint: "password",
                        icon: Icon(Icons.lock),
                      ),
                      const Text(
                        "forget password ?",
                      ),
                      const RaisedGradientButton(
                        child: Text(
                          "login",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Text("or you can login with social account "),
                      Row(
                        children: const [
                          Mediabuttons(
                            icon: Icons.facebook,
                          ),
                          Mediabuttons(
                            icon: Icons.tiktok,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
