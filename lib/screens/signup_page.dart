import 'package:flutter/material.dart';
import 'package:splite_app/items/text_field.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({super.key});

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  Color black = Colors.black;
  Color white = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: ListView(
        //Change column to ListView
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 80,
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Sign UP',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: black,
                ),
              ),
              Text(
                'Creat an account, its Free',
                style: TextStyle(fontSize: 18, color: black),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          /*
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'Email',
              style: TextStyle(fontSize: 18),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              cursorColor: Colors.black,
              style: TextStyle(fontSize: 24),
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            ),
          ),
         */
          TextFaildWedget(
            name: 'User name',
            textColor: black,
            color: black,
            type: TextInputType.name,
          ),
          TextFaildWedget(
            name: 'E-mail',
            textColor: black,
            color: black,
            type: TextInputType.emailAddress,
          ),
          TextFaildWedget(
            name: 'Password',
            textColor: black,
            color: black,
            // black: Colors.black,
            // white: Colors.white,
            type: TextInputType.visiblePassword,
          ),
          TextFaildWedget(
            name: 'Confirme Password',
            textColor: black,
            color: black,
            // black: Colors.black,
            // white: Colors.white,
            type: TextInputType.visiblePassword,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(100, 80),
                  backgroundColor: black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {},
              child: Text(
                'Sign up',
                style: TextStyle(fontSize: 24, color: white),
              ),
            ),
          ),
          Center(
            child: Text(
              'Already have an account? Login',
              style: TextStyle(fontSize: 18, color: black),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: black,
          onPressed: () {
            setState(() {
              black = black == Colors.black ? Colors.white : Colors.black;
              white = white == Colors.white ? Colors.black : Colors.white;
            });
          },
          label: Icon(
            Icons.change_circle,
            color: white,
          )),
    );
  }
}
