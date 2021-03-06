import 'package:dashboard/pages/authentication/registerPage.dart';
import 'package:dashboard/widgets/big_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var phoneInput = _phoneController.text;
    void loginFunction() {
      if (phoneInput.isNotEmpty) {
        print(phoneInput);
      }
    }

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                height: 250,
                color: Colors.green.shade800,
                child: Center(
                    child: BigTextWidget(
                  text: "Sign In",
                  color: Colors.white,
                )),
              )),
          Positioned(
              top: 230,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        onChanged: (phone) {
                          setState(() {
                            phone = phone;
                          });
                        },
                        controller: _phoneController,
                        decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.pink, width: 2)),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 1)),
                          prefixIcon: Icon(
                            Icons.phone,
                            color: Colors.blue,
                          ),
                          labelText: 'Phone Number',
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        //link to pin login page
                      },
                      child: const Text(
                        'Register Using Pin?',
                      ),
                    ),
                    InkWell(
                      onTap: loginFunction,
                      child: Container(
                          height: 70,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              color: Colors.green.shade700,
                              borderRadius: BorderRadius.circular(20)),
                          padding: const EdgeInsets.only(
                              left: 20, top: 20, right: 20, bottom: 20),
                          child: Center(child: BigTextWidget(text: "Login"))),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Dont have an account?'),
                        TextButton(
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Register()));
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
