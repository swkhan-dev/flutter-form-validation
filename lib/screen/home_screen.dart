import 'package:flutter/material.dart';
import 'package:form_validation/screen/home_viewmodel.dart';

import '../widget/button.dart';
import '../widget/textfield_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final validation = HomeViewmodel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Form Validation",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                label: "Email",
                errorText: validation.email.error,
                onChanged: (value) {
                  validation.validateEmail(value);
                  setState(() {});
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                  label: "Password",
                  errorText: validation.password.error,
                  isPass: true,
                  onChanged: (value) {
                    validation.validatePassword(value);
                    setState(() {});
                  }),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                label: "Login",
                onPressed: validation.isValid
                    ? () {
                        validation.login();
                      }
                    : null,
              )
            ],
          )),
    );
  }
}
