import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Register",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "UserName",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 34, 33, 33),
                border: OutlineInputBorder(),
                hintStyle: TextStyle(color: Colors.white),
                labelStyle: TextStyle(color: Colors.white),
                hintText: 'Enter your Username',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Password",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              style: TextStyle(color: Colors.white),
              obscureText: true,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 34, 33, 33),
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(color: Colors.white),
                  hintStyle: TextStyle(color: Colors.white),
                  hintText: 'Enter your secure password'),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Confirm Password",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              style: TextStyle(color: Colors.white),
              obscureText: true,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 34, 33, 33),
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(color: Colors.white),
                  hintStyle: TextStyle(color: Colors.white),
                  hintText: 'Enter your secure password'),
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 161, 120, 255),
                ),
                child: Center(
                  child: Text(
                    "REGISTER",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
