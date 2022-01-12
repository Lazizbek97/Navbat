import 'package:flutter/material.dart';
import 'package:minicraft/ui/screens/signUp/widgets/elButton.dart';
import 'package:minicraft/ui/screens/signUp/widgets/inputField.dart';
import 'package:minicraft/ui/screens/signUp/widgets/socialLinks.dart';

import '../../../sizeConfig.dart';

class SignIn extends StatelessWidget {
  SignIn({Key? key}) : super(key: key);
  final _controller = TextEditingController();

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
              height: getHeight(380),
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: getWidth(20),
                  vertical: getHeight(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InputField(myController: _controller, hintText: "Username"),
                    InputField(myController: _controller, hintText: "Password"),
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
                    ElButton(
                      isAccepted: true,
                      buttonName: "Sign In",
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
