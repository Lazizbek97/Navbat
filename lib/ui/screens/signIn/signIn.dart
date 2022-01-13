import 'package:flutter/material.dart';
import 'package:minicraft/data/data.dart';
import 'package:minicraft/ui/screens/signUp/widgets/inputField.dart';
import 'package:minicraft/ui/screens/signUp/widgets/socialLinks.dart';

import '../../../sizeConfig.dart';

class SignIn extends StatefulWidget {
  SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _controllerUsername = TextEditingController();

  final _controllerPassword = TextEditingController();

  bool isErrorUserName = false;

  bool isErrorUserPassword = false;

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
        child: Column(
          children: [
            SizedBox(
              height: getHeight(350),
              child: Image.asset("assets/images/singIn.png"),
            ),
            SizedBox(
              height: getHeight(385),
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: getWidth(20),
                  vertical: getHeight(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InputField(
                      myController: _controllerUsername,
                      hintText: "Username",
                      isValidated: isErrorUserName,
                    ),
                    InputField(
                      myController: _controllerPassword,
                      hintText: "Password",
                      isValidated: isErrorUserPassword,
                    ),
                    const Text("Or register with"),
                    const SocialLinks(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text("You don't have an account yet?"),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/signUp");
                            },
                            child: const Text("Sign Up"))
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _controllerUsername.text.isEmpty
                              ? isErrorUserName = true
                              : isErrorUserName = false;
                          _controllerPassword.text.isEmpty
                              ? isErrorUserPassword = true
                              : isErrorUserPassword = false;
                        });
                        if (!(isErrorUserName || isErrorUserPassword)) {
                          // ignore: unused_local_variable
                          try {
                            for (var element in users) {
                              // ignore: unrelated_type_equality_checks
                              if (_controllerUsername.text ==
                                      element['username'] &&
                                  _controllerPassword.text ==
                                      element['password']) {
                                // print((users as User).name);
                                Navigator.pushReplacementNamed(
                                    context, "/mainMenu");
                              } else {
                                setState(() {
                                  isErrorUserName = true;
                                  isErrorUserPassword = true;
                                });
                              }
                            }
                          } catch (e) {
                            print("Xatoooooo");
                          }
                        }
                      },
                      child: const Text("Sign In"),
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
          ],
        ),
      ),
    );
  }
}
