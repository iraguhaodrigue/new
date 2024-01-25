import 'package:flutter/material.dart';
import 'passwordRecover.dart';

class VerifyPage extends StatefulWidget {
  const VerifyPage({super.key});

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(builder: (BuildContext context) {
        return Scaffold(
          backgroundColor: Color.fromARGB(15, 16, 53, 1),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(30, 0, 20, 1),
                child: const Text(
                  'TechMe',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                    color: Color.fromRGBO(220, 242, 241, 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(30, 15, 20, 0),
                child: const Text(
                  'OTP Verification',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color.fromRGBO(220, 242, 241, 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(45, 10, 20, 30),
                child: const Text(
                  "Enter the code \n   from sms \n     01:30",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromRGBO(220, 242, 241, 1),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Verification code here',
                      labelStyle:
                          TextStyle(color: Color.fromRGBO(220, 242, 241, 1)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return PasswordRecover();
                      }));
                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          backgroundColor: Color.fromRGBO(54, 84, 134, 1),
                          color: Color.fromRGBO(220, 242, 241, 1)),
                    )),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (BuildContext context) {
                          //   return LoginPage();
                          // }));
                        },
                        child: const Text(
                          "Didn't receive code?",
                          style: TextStyle(
                              color: Color.fromRGBO(220, 242, 241, 1)),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Resend',
                          style:
                              TextStyle(color: Color.fromRGBO(54, 84, 134, 1)),
                        ))
                  ],
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
