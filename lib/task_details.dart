import 'package:flutter/material.dart';
import 'navigationPage.dart';
import 'package:readmore/readmore.dart';
import 'statistics.dart';

class TaskDetails extends StatefulWidget {
  const TaskDetails({super.key});
  @override
  State<TaskDetails> createState() => _TaskDetails();
}

class _TaskDetails extends State<TaskDetails> {
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
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
                  MaterialPageRoute(
                      builder: (context) => const Navigationpage()),
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
              width: 50,
            ),
            Text(
              "Task details",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 140, top: 20),
              child: Text(
                "Web Development",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10, left: 20),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(33),
                          color: const Color.fromARGB(255, 209, 228, 245)),
                    ),
                    const IconButton(
                        padding: EdgeInsets.only(left: 33, top: 20),
                        onPressed: null,
                        icon: Icon(
                          Icons.calendar_month,
                          color: Color.fromARGB(255, 33, 96, 243),
                        ))
                  ],
                ),
                const SizedBox(
                  width: 15,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "04 April, at 11:30 AM",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 132, 129, 129),
                        fontSize: 20),
                  ),
                )
              ],
            ),
            const Row(children: [
              Padding(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  "In Progress ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 150),
                child: Text(
                  "60%",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20),
                ),
              ),
            ]),
            Stack(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Statistics()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(
                      right: 20,
                      top: 10,
                    ),
                    width: 300,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: const Color.fromARGB(255, 223, 226, 248),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 0, top: 10),
                  width: 200,
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: const Color.fromARGB(255, 5, 5, 245),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(right: 210, top: 30),
              child: Text(
                "Overview",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 25),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5, left: 23, right: 30),
              child: ReadMoreText(
                "This is a very long text that will be truncated andfoiewfoiewjoifwofhowhfowhifnwciuruchuxywoicfbxnfcwoiecbuxrecwqicbuyfxrewqcwuewexruxcwvcexxzoercxesdrcxesrx will show a 'Read More' button when it exceeds the specified number of lines.",

                trimLines: 2,
                trimLength: 222, // Show only the first 2 lines initially

                colorClickableText: Colors.blue,

                trimCollapsedText: 'Read More',

                trimExpandedText: 'Read Less',
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: Colors.black38),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30, right: 200),
              child: Text(
                "Members",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 25),
              ),
            ),
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 235, top: 10),
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 242, 242, 246),
                          width: 3.0),
                      borderRadius: BorderRadius.circular(40),
                      color: const Color.fromARGB(255, 7, 6, 6)),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(100), // Optional for fine-tuning

                    child: Image.asset(
                      'assets/images/yoosuf.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 40, top: 10),
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 242, 242, 246),
                          width: 3.0),
                      borderRadius: BorderRadius.circular(40),
                      color: const Color.fromARGB(255, 82, 7, 233)),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(100), // Optional for fine-tuning

                    child: Image.asset(
                      'assets/images/faria.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 80, top: 10),
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 242, 242, 246),
                          width: 3.0),
                      borderRadius: BorderRadius.circular(40),
                      color: const Color.fromARGB(255, 249, 3, 3)),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(100), // Optional for fine-tuning

                    child: Image.asset(
                      'assets/images/asif sir .jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 120, top: 10),
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 242, 242, 246),
                          width: 3.0),
                      borderRadius: BorderRadius.circular(40),
                      color: const Color.fromARGB(255, 249, 3, 3)),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(100), // Optional for fine-tuning

                    child: Image.asset(
                      'assets/images/jithin sir.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 160, top: 10),
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 242, 242, 246),
                          width: 3.0),
                      borderRadius: BorderRadius.circular(40),
                      color: const Color.fromARGB(255, 239, 235, 235)),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(100), // Optional for fine-tuning

                    child: Image.asset(
                      'assets/images/nihad teacher and me.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 210, top: 10),
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 242, 242, 246),
                        width: 3.0),
                    borderRadius: BorderRadius.circular(40),
                    color: const Color.fromARGB(255, 182, 215, 236),
                  ),
                  child: Container(
                      child: const IconButton(
                    padding: EdgeInsets.only(right: 1),
                    onPressed: null,
                    icon: Icon(
                      Icons.add,
                      color: Color.fromARGB(255, 2, 6, 253),
                    ),
                  )),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, right: 230),
              child: Text(
                "Tasks",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 25),
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
                  color: const Color.fromARGB(255, 218, 229, 250)),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                      margin: EdgeInsets.only(bottom: 2),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(11),
                        child: Image.asset(
                          'assets/images/design presentaion.jpg',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      )),
                  const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15, right: 30),
                        child: Text(
                          "Introduction",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2, left: 10),
                        child: Text("09:00 AM - 11:00 AM",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.blue)),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, top: 0),
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: const Color.fromARGB(255, 5, 62, 248),
                    ),
                    child: Container(
                        child: const IconButton(
                      padding: EdgeInsets.only(
                        right: 1,
                      ),
                      onPressed: null,
                      icon: Icon(
                        Icons.check,
                        color: Color.fromARGB(255, 251, 251, 253),
                      ),
                    )),
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
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                      margin: EdgeInsets.only(bottom: 2),
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
                        padding: EdgeInsets.only(top: 15, left: 15),
                        child: Text(
                          "Project Discription",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2, left: 5),
                        child: Text("11:30 AM - 01:00 PM",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Color.fromARGB(255, 252, 116, 107))),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, top: 4),
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: const Color.fromARGB(255, 5, 62, 248),
                    ),
                    child: Container(
                        child: const IconButton(
                      padding: EdgeInsets.only(right: 1, bottom: 1),
                      onPressed: null,
                      icon: Icon(
                        Icons.check,
                        color: Color.fromARGB(255, 251, 251, 253),
                      ),
                    )),
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
