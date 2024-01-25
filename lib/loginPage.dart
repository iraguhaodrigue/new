import 'package:flutter/material.dart';
import 'signUpPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
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
                  color: Color.fromRGBO(220, 242, 241, 1)),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
              color: Color.fromRGBO(54, 84, 134, 1),
              height: 443,
              width: 340,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: Color.fromRGBO(220, 242, 241, 1)),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                    decoration: InputDecoration(
                        labelStyle: const TextStyle(
                            color: Color.fromRGBO(220, 242, 241, 1),
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                        fillColor: Colors.white,
                        labelText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                    decoration: InputDecoration(
                        labelStyle: const TextStyle(
                            color: Color.fromRGBO(220, 242, 241, 1),
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                        labelText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'forgot password?',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        )),
                  ),
                  Center(
                    child: TextButton(
                        style: ButtonStyle(backgroundColor:
                            MaterialStateColor.resolveWith((states) {
                          if (states.contains(MaterialState.pressed)) {
                            return Color.fromARGB(15, 16, 53, 1);
                          }
                          return Color.fromARGB(15, 16, 53, 1);
                        })),
                        onPressed: () {},
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              backgroundColor: Colors.black,
                              color: Color.fromRGBO(220, 242, 241, 1)),
                        )),
                  ),
                  const Divider(
                    thickness: 5,
                    color: Colors.white,
                    height: 40,
                    endIndent: 0,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Image.asset(
                          'assets/images/github.png',
                          height: 15,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          'assets/images/twitter2l.png',
                          height: 15,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          'assets/images/google.jpg',
                          height: 15,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
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
                        return SignUPage();
                      }));
                    },
                    child: const Text(
                      'Not yet a Member?',
                      style: TextStyle(color: Color.fromRGBO(220, 242, 241, 1)),
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: Color.fromRGBO(54, 84, 134, 1)),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
