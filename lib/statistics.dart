import 'package:flutter/material.dart';
import 'task_details.dart';

class Statistics extends StatefulWidget {
  const Statistics({super.key});

  @override
  State<Statistics> createState() => _Statistics();
}

class _Statistics extends State<Statistics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 17, top: 6),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: const Color.fromARGB(31, 118, 113, 113)),
            ),
            IconButton(
              padding: const EdgeInsets.only(left: 20, top: 3),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const TaskDetails()),
                );
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_sharp,
              ),
              iconSize: 20,
            ),
          ],
        ),
        title: const Row(
          children: [
            SizedBox(
              width: 70,
            ),
            Text(
              "Statistics",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      // ignore: prefer_const_constructors
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 170, top: 20),
              child: Text(
                "120 Tasks",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 100, top: 10),
              child: Text(
                "Assigned to you this week",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color.fromARGB(66, 25, 24, 24)),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40),
              height: 30,
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  Text(
                    "January",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "February",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "March",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "April",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: Colors.blue),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "May",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "June",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "July",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "August",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "September",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "October",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "November",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "December",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 30, left: 30),
                  child: Text(
                    "Statistics",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 50, top: 30),
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 176, 214, 245),
                      borderRadius: BorderRadius.circular(11)),
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Week",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Color.fromARGB(255, 113, 111, 111)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 0),
                        child: IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.keyboard_arrow_down,
                              color: Color.fromARGB(255, 113, 111, 111),
                            )),
                      )
                    ],
                  ),
                )
              ],
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 30),
                  child: Text(
                    "13     20    10    20    25    14    18",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
            Row(children: [
              Stack(
                // first container
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 35,
                      top: 10,
                    ),
                    width: 15,
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: const Color.fromARGB(255, 242, 243, 254),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      margin: const EdgeInsets.only(left: 35, bottom: 0),
                      width: 15,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: const Color.fromARGB(255, 5, 5, 245),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                // secont container
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 32,
                      top: 10,
                    ),
                    width: 15,
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: const Color.fromARGB(255, 242, 243, 254),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      margin: const EdgeInsets.only(left: 32, bottom: 0),
                      width: 15,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: const Color.fromARGB(255, 5, 5, 245),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                // third container
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 32,
                      top: 10,
                    ),
                    width: 15,
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: const Color.fromARGB(255, 242, 243, 254),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      margin: const EdgeInsets.only(left: 32, bottom: 0),
                      width: 15,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: const Color.fromARGB(255, 5, 5, 245),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                // fourth container
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 30,
                      top: 10,
                    ),
                    width: 15,
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: const Color.fromARGB(255, 242, 243, 254),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      margin: const EdgeInsets.only(left: 30, bottom: 0),
                      width: 15,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: const Color.fromARGB(255, 5, 5, 245),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                // fifth container
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 29,
                      top: 10,
                    ),
                    width: 15,
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: const Color.fromARGB(255, 242, 243, 254),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      margin: const EdgeInsets.only(left: 29, bottom: 0),
                      width: 15,
                      height: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: const Color.fromARGB(255, 5, 5, 245),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                // sixth container
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 29,
                      top: 10,
                    ),
                    width: 15,
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: const Color.fromARGB(255, 242, 243, 2549),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      margin: const EdgeInsets.only(left: 29, bottom: 0),
                      width: 15,
                      height: 125,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: const Color.fromARGB(255, 5, 5, 245),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                // sevonth container
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 29,
                      top: 10,
                    ),
                    width: 15,
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: const Color.fromARGB(255, 242, 243, 254),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      margin: const EdgeInsets.only(left: 29, bottom: 0),
                      width: 15,
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: const Color.fromARGB(255, 5, 5, 245),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 30),
                  child: Text(
                    " M      T      W      T      F      S      S",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(right: 120, top: 20),
              child: Text(
                "Latest Activities",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  border: Border.all(
                      color: const Color.fromARGB(255, 151, 151, 155),
                      width: 0.1),
                  color: const Color.fromARGB(255, 225, 245, 228)),
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                      margin: const EdgeInsets.only(bottom: 2),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(11),
                        child: Image.asset(
                          'assets/images/meeting and collabration.avif',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      )),
                  const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15, left: 10),
                        child: Text(
                          "Project meeting",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2, right: 40),
                        child: Text("Completed",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Color.fromARGB(255, 24, 172, 31))),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  border: Border.all(
                      color: const Color.fromARGB(255, 151, 151, 155),
                      width: 0.1),
                  color: const Color.fromARGB(255, 249, 230, 230)),
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                      margin: const EdgeInsets.only(bottom: 2),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(11),
                        child: Image.asset(
                          'assets/images/web development.jpg',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      )),
                  const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15, left: 10),
                        child: Text(
                          "Web page design",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2, right: 45),
                        child: Text("In progress",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Color.fromARGB(255, 252, 116, 107))),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
