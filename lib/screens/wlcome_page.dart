import 'package:flutter/material.dart';
import 'package:splite_app/screens/login_page.dart';
import 'package:splite_app/screens/signup_page.dart';

class Welcomepage extends StatefulWidget {
  const Welcomepage({super.key});

  @override
  State<Welcomepage> createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {
  Color white = const Color(0xffffffff);
  Color black = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Center(
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 60,
            ),
            Text(
              'Welcome',
              style: TextStyle(
                color: black,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'This is the login & sign up flutter app',
              style: TextStyle(
                color: black,
                fontSize: 16,
                // fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const CircleAvatar(
              radius: 150, // adjust the size of the avatar as desired
              backgroundImage: AssetImage('images/images.png'),
            ),
            // const SizedBox(
            //   width: 500,
            //   height: 500,
            //   child: Image(image: AssetImage('images/images.png')),
            // ),
            const SizedBox(
              height: 80,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Login();
                      },
                    ),
                  );
                });
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(250, 60),
                  backgroundColor: const Color(0xffe84a5d),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 24, color: black),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(250, 60),
                  backgroundColor: const Color(0xffe84a5d),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const SingUpPage();
                      },
                    ),
                  );
                });
              },
              child: Text(
                'Sign up',
                style: TextStyle(fontSize: 24, color: black),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            black = black == Colors.black ? Colors.white : Colors.black;
            white = white == Colors.white ? Colors.black : Colors.white;
          });
        },
        backgroundColor: const Color(0xffe84a5d),
        child: Icon(
          Icons.change_circle,
          color: black,
        ),
      ),
    );
  }
}
