import 'package:main.dart';
import 'package:flutter/material.dart';

class PasswordRecover extends StatefulWidget {
  const PasswordRecover({super.key});

  @override
  State<PasswordRecover> createState() => _PasswordRecoverState();
}

class _PasswordRecoverState extends State<PasswordRecover> {
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
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(30, 15, 20, 0),
                child: const Text(
                  'If the email or phone  number is \nregistered  you will receive a code',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromRGBO(220, 242, 241, 1)),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(30),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'enter your email or phone number here',
                      labelStyle:
                          TextStyle(color: Color.fromRGBO(220, 242, 241, 1)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                  keyboardType: TextInputType.text,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(100, 0, 0, 30),
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
                          "not received code?",
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
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return TechMe();
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
            ],
          ),
        );
      }),
    );
  }
}
