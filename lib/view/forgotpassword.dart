import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:login/view/login.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Image.asset(
                "assets/images/s.png",
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: TextFormField(
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
                    labelText: "MOBILE NUMBER",
                    //labelText: '${AppConstants.mobile}/${AppConstants.email}',
                    hintText: "ENTER MOBILE NUMBE",
                    hintStyle: TextStyle(
                        color: Colors.grey, fontFamily: 'Roboto', fontSize: 14),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.blue,
                      size: 20,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(MediaQuery.of(context).size.width / 1.10,
                      MediaQuery.of(context).size.height / 17.96),
                  // fixedSize: Size(20, 40),

                  backgroundColor: Colors.orange,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ));
                },
                child: const Text(
                  "RESET PASSWORD",
                  style: TextStyle(color: Colors.white),
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
