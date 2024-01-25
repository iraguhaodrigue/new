import 'package:flutter/material.dart';
import 'loginPage.dart';
import 'verification.dart';

class SignUPage extends StatefulWidget {
  final TextEditingController? controller;

  const SignUPage({this.controller, Key? key}) : super(key: key);

  @override
  CreateSignUPageState createState() => CreateSignUPageState();
}

class CreateSignUPageState extends State<SignUPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(15, 16, 53, 1),
      body: Container(
        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(25, 0, 10, 0),
              child: const Text(
                'TechMe',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Color.fromRGBO(220, 242, 241, 1)),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(25, 0, 10, 0),
              child: const Text(
                'Create Account',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    color: Color.fromRGBO(220, 242, 241, 1)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Names',
                  labelStyle:
                      TextStyle(color: Color.fromRGBO(220, 242, 241, 1)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
              keyboardType: TextInputType.name,
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Email Address',
                  labelStyle:
                      TextStyle(color: Color.fromRGBO(220, 242, 241, 1)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Phone Number',
                  labelStyle:
                      TextStyle(color: Color.fromRGBO(220, 242, 241, 1)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle:
                      TextStyle(color: Color.fromRGBO(220, 242, 241, 1)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
              keyboardType: TextInputType.text,
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  labelStyle:
                      TextStyle(color: Color.fromRGBO(220, 242, 241, 1)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
              keyboardType: TextInputType.text,
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.white;
                    }
                    return Colors.white;
                  })),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return VerifyPage();
                    }));
                  },
                  child: const Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  )),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return LoginPage();
                        }));
                      },
                      child: const Text(
                        'Already have an Account?',
                        style:
                            TextStyle(color: Color.fromRGBO(220, 242, 241, 1)),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Login Here',
                        style: TextStyle(color: Color.fromRGBO(54, 84, 134, 1)),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
