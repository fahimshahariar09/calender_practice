import 'package:calender/view/screen/auth/widget/email_text_field.dart';
import 'package:calender/view/screen/auth/widget/pass_text_field.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            EmailTextField(),
            SizedBox(height: 10),
            PasswordTextField(),
          ],
        ),
      ),
    );
  }
}
