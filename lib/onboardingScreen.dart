import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'startPage.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView(
        dragStartBehavior: DragStartBehavior.start,
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 30, bottom: 50, left: 20, right: 20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/imgs/onboarda.png", width: 250),
                  Column(
                    children: [
                      Text(
                        "Manage your tasks",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "You can easily manage all of your daily\n tasks in DoMe for free",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Swipe >>",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 236, 228, 228),
                            fontSize: 20),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 30, bottom: 50, left: 20, right: 20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/imgs/Frame 161.png", width: 250),
                  Column(
                    children: [
                      Text(
                        "Create daily routine",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "In Uptodo  you can create your\n personalized routine to stay productive",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Swipe >>",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 236, 228, 228),
                            fontSize: 20),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 30, bottom: 50, left: 20, right: 20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/imgs/Frame 162.png", width: 250),
                  Column(
                    children: [
                      Text(
                        "Orgonaize your tasks",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "You can organize your daily tasks by\n adding your tasks into separate categories",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> StartPage() ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 161, 120, 255),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 40,
                          width: 150,
                          child: Center(
                              child: Text(
                            "Get Started",
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
