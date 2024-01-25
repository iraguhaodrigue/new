import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'loginPage.dart';

void main() {
  runApp(const TechMe());
}

class TechMe extends StatelessWidget {
  const TechMe({super.key});

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
                padding: const EdgeInsets.fromLTRB(70, 10, 20, 1),
                child: const Text(
                  'TechMe',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      color: Color.fromRGBO(220, 242, 241, 1)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(40, 15, 20, 0),
                child: const Text(
                  'Accelerating Tech with confidence',
                  style: TextStyle(
                      fontSize: 17,
                      color: Color.fromRGBO(220, 242, 241, 1),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(50, 10, 20, 30),
                child: const Text(
                  "East Africa's Biggest \n   Tech Con Hub",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color.fromRGBO(220, 242, 241, 1),
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  padding: const EdgeInsets.all(20),
                  child: SvgPicture.asset(
                    'assets/Svg/undraw_conference_re_2yld.svg',
                    height: 200,
                    width: 400,
                  )),
              const SizedBox(
                height: 100,
              ),
              Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return LoginPage();
                      }));
                    },
                    child: const Text(
                      'Join Now',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          backgroundColor: Color.fromRGBO(127, 199, 217, 1),
                          color: Color.fromRGBO(54, 84, 134, 1)),
                    )),
              )
            ],
          ),
        );
      }),
    );
  }
}
