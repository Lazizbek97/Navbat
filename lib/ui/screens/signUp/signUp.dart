import 'package:flutter/material.dart';
import 'package:minicraft/sizeConfig.dart';
import 'package:minicraft/ui/screens/signUp/widgets/elButton.dart';
import 'package:minicraft/ui/screens/signUp/widgets/inputField.dart';
import 'package:minicraft/ui/screens/signUp/widgets/socialLinks.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final myController = TextEditingController();

  bool _ischecked = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          height: getHeight(700),
          padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "Sign up and Get Started",
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
              InputField(
                myController: myController,
                hintText: "Full Name",
              ),
              InputField(
                myController: myController,
                hintText: "Username",
              ),
              InputField(
                myController: myController,
                hintText: "Phone Number",
              ),
              InputField(
                myController: myController,
                hintText: "Email",
              ),
              InputField(
                myController: myController,
                hintText: "Password",
              ),
              Row(
                children: [
                  Checkbox(
                    value: _ischecked,
                    onChanged: (v) {
                      setState(() {
                        _ischecked = !_ischecked;
                      });
                    },
                  ),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: "I agree  ",
                        ),
                        TextSpan(
                          text: "Terms of Services",
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                        TextSpan(
                          text: "  and",
                        ),
                        TextSpan(
                          text: "  Privacy Policy",
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                "Or register with",
                style: TextStyle(color: Colors.grey.shade500),
              ),
              const SocialLinks(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Already have an account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, "/signIn", (route) => false);
                      },
                      child: const Text("Sign In"))
                ],
              ),
              ElButton(
                isAccepted: _ischecked,
                buttonName: "Sign Up",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
