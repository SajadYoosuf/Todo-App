import 'package:flutter/material.dart';
import 'navigationPage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
            height: 500,
            width: 360,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image:
                        AssetImage('assets/images/first-removebg-preview.png')),
                gradient: LinearGradient(
                  colors: [
                    const Color.fromARGB(255, 8, 84, 237)
                        .withAlpha(200), // Lighter shade at the top

                    const Color.fromARGB(255, 247, 248,
                        249), // Matching background color at the bottom
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
          ),
          Container(
            width: 360,
            height: 200,
            padding: const EdgeInsets.only(left: 5, top: 20, right: 10),
            child: const Column(
              children: [
                Text(
                  "Welcome to GO Task",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                      color: Color.fromARGB(255, 10, 9, 9)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "A workspace around 10 Million influencers",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Color.fromARGB(255, 72, 71, 71)),
                ),
                Text(
                  "aroundthe global of the world",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Color.fromARGB(255, 75, 74, 74)),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 32, top: 10),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      backgroundColor: const Color.fromARGB(255, 80, 128, 249),
                      iconColor: Colors.white,
                      fixedSize: const Size(300, 50),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Navigationpage()),
                      );
                    },
                    child: const Text(
                      'Let\'s Start',
                      style: TextStyle(
                          color: Color.fromARGB(222, 230, 227, 227),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
