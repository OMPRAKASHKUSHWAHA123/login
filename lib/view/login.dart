import 'package:flutter/material.dart';
import 'package:login/view/signup.dart';

import '../commonWidgets/commonText.dart';
import 'forgotpassword.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool hidden = true;
    // final _formKey = GlobalKey<FormState>();
    void toggle() {
      setState(() {
        hidden = !hidden;
      });
    }

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Form(
        //key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // child:
              Image.asset(
                "assets/images/s.png",
                //"assets/images/shutta.png",
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              ),

              // Image.network(
              //     "https://qph.cf2.quoracdn.net/main-qimg-3ad579d3e2136daa1591d309beafc5ee"),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, bottom: 20),
                child: CommonText(
                  text: "Login",
                  size: 24,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                    child: TextFormField(
                      key: const ValueKey("username"),
                      style: const TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue),
                      autovalidateMode: AutovalidateMode.onUserInteraction,

                      //controller: widget.loginController.usernameController,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(16.0),
                          filled: true,
                          fillColor: Colors.white,
                          labelText: "Enter Mobile Number",
                          //labelText: '${AppConstants.mobile}/${AppConstants.email}',
                          hintText: "Email",
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Roboto',
                              fontSize: 14),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.blue,
                            size: 20,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                    child: TextFormField(
                      //  obscureText: true,
                      key: const ValueKey("password"),
                      style: const TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                      autovalidateMode: AutovalidateMode.onUserInteraction,

                      //controller: widget.loginController.usernameController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(16.0),
                          filled: true,
                          fillColor: Colors.white,
                          labelText: "Enter Password",
                          //labelText: '${AppConstants.mobile}/${AppConstants.email}',
                          hintText: "Password",
                          hintStyle: const TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Roboto',
                              fontSize: 14),
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.blue,
                            size: 20,
                          ),
                          // suffixIcon: Icon(
                          //   Icons.visibility,
                          //   size: 24,
                          //   color: Colors.blue,
                          // ),
                          suffixIcon: InkWell(
                            onTap: toggle,
                            child: Icon(
                              hidden ? Icons.visibility_off : Icons.visibility,
                              color: Colors.blue,
                              size: 20,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: GestureDetector(
                        onTap: () {
                          // widget.loginController.clearLoginControllers();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForgotPassword()),
                          );
                        },
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: CommonText(text: "Forgot Password"),
                        )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(
                            MediaQuery.of(context).size.width / 1.1,
                            MediaQuery.of(context).size.height / 17.96),
                        backgroundColor: Colors.blue,
                        //fixedSize: Size(30, 5)
                      ),
                      onPressed: () {},
                      child: const Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.white),
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Divider(
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(
                            MediaQuery.of(context).size.width / 1.1,
                            MediaQuery.of(context).size.height / 17.96),
                        backgroundColor: Colors.orange,
                        //fixedSize: Size(30, 5)
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegistrationPage()),
                        );
                      },
                      child: const Text(
                        "SIGNUP",
                        style: TextStyle(color: Colors.white),
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
