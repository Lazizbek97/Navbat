import 'package:flutter/material.dart';
import 'package:minicraft/data/data.dart';
import 'package:minicraft/sizeConfig.dart';
import 'package:minicraft/ui/screens/signUp/widgets/inputField.dart';
import 'package:minicraft/ui/screens/signUp/widgets/socialLinks.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final myControllerName = TextEditingController();
  final myControllerUsername = TextEditingController();
  final myControllerEmail = TextEditingController();
  final myControllerNumber = TextEditingController();
  final myControllerPassword = TextEditingController();

  bool _ischecked = false;
  bool isErrorName = false;
  bool isErrorUsername = false;
  bool isErrorNumber = false;
  bool isErrorEmail = false;
  bool isErrorPassword = false;

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
                myController: myControllerName,
                hintText: "Full Name",
                isValidated: isErrorName,
              ),
              InputField(
                myController: myControllerUsername,
                hintText: "Username",
                isValidated: isErrorUsername,
              ),
              InputField(
                myController: myControllerNumber,
                hintText: "Phone Number",
                isValidated: isErrorNumber,
              ),
              InputField(
                myController: myControllerEmail,
                hintText: "Email",
                isValidated: isErrorEmail,
              ),
              InputField(
                myController: myControllerPassword,
                hintText: "Password",
                isValidated: isErrorPassword,
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
              ElevatedButton(
                onPressed: _ischecked
                    ? () {
                        setState(() {
                          myControllerName.text.isEmpty
                              ? isErrorName = true
                              : isErrorName = false;
                          myControllerUsername.text.isEmpty
                              ? isErrorUsername = true
                              : isErrorUsername = false;
                          myControllerNumber.text.isEmpty
                              ? isErrorNumber = true
                              : isErrorNumber = false;
                          myControllerPassword.text.isEmpty
                              ? isErrorPassword = true
                              : isErrorPassword = false;
                          myControllerEmail.text.isEmpty
                              ? isErrorEmail = true
                              : isErrorEmail = false;
                        });
                        if (!(isErrorEmail ||
                            isErrorName ||
                            isErrorNumber ||
                            isErrorUsername ||
                            isErrorPassword)) {
                          userData['name'] = myControllerName.text;
                          userData['username'] = myControllerUsername.text;
                          userData['number'] = myControllerNumber.text;
                          userData['email'] = myControllerEmail.text;
                          userData['password'] = myControllerPassword.text;

                          users.add(userData);

                          Navigator.pushReplacementNamed(context, "/mainMenu");
                        }
                      }
                    : null,
                onLongPress: _ischecked ? () {} : null,
                child: Text("Sign Up"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue.shade300,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      getWidth(15),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: getWidth(150),
                    vertical: getWidth(20),
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
