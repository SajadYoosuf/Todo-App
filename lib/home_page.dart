import 'package:flutter/material.dart';
import 'task_details.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
      appBar: AppBar(
        backgroundColor: Colors.white30,
        primary: true,
        // First icon on the left

        title: Row(
          children: [
            Stack(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: const Color.fromARGB(31, 118, 113, 113)),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 9, top: 9.5),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: const Color.fromARGB(31, 118, 113, 113),
                    border: Border.all(
                        color: const Color.fromARGB(255, 64, 64, 65),
                        width: 0.4),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 22, top: 9.5),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: const Color.fromARGB(31, 118, 113, 113),
                    border: Border.all(
                        color: const Color.fromARGB(255, 64, 64, 65),
                        width: 0.4),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 9, top: 22.9),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: const Color.fromARGB(31, 118, 113, 113),
                    border: Border.all(
                        color: const Color.fromARGB(255, 64, 64, 65),
                        width: 0.4),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 22.9, left: 22),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: const Color.fromARGB(31, 118, 113, 113),
                    border: Border.all(
                        color: const Color.fromARGB(255, 64, 64, 65),
                        width: 0.4),
                  ),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 70),
              child: const Text(
                "HomePage",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
              ),
            )
          ],
        ), // Text in the middle

        actions: <Widget>[
          Stack(
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: const Color.fromARGB(31, 118, 113, 113)),
              ),
              const IconButton(
                  color: Colors.white,
                  padding: EdgeInsets.only(bottom: 10, right: 7),
                  icon: Icon(Icons.notifications_none),
                  onPressed: null),
            ],
          )

          // Third icon on the right
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: 320,
            height: 180,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [
                    const Color.fromARGB(255, 37, 53, 230)
                        .withAlpha(200), // Lighter shade at the top

                    const Color.fromARGB(255, 67, 106, 234),
                    const Color.fromARGB(255, 165, 165, 237),
                    const Color.fromARGB(255, 17, 100, 232),

                    // Matching background color at the bottom
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  transform: const GradientRotation(3.14 / 4),
                )),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 30, right: 40),
                  child: Text(
                    "Today's progress summary",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 245, 244, 244),
                        fontSize: 18),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 200, top: 10),
                  child: Text(
                    "15 Tasks",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 245, 244, 244),
                        fontSize: 15),
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 220, top: 25),
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 242, 242, 246),
                              width: 3.0),
                          borderRadius: BorderRadius.circular(40),
                          color: const Color.fromARGB(255, 7, 6, 6)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            100), // Optional for fine-tuning

                        child: Image.asset(
                          'assets/images/asif sir .jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 25, top: 25),
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 242, 242, 246),
                              width: 3.0),
                          borderRadius: BorderRadius.circular(40),
                          color: const Color.fromARGB(255, 82, 7, 233)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            100), // Optional for fine-tuning

                        child: Image.asset(
                          'assets/images/jithin sir.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 50, top: 25),
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 242, 242, 246),
                              width: 3.0),
                          borderRadius: BorderRadius.circular(40),
                          color: const Color.fromARGB(255, 249, 3, 3)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            100), // Optional for fine-tuning

                        child: Image.asset(
                          'assets/images/sheher.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 75, top: 25),
                      width: 45,
                      height: 45,
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
                    const Padding(
                      padding: EdgeInsets.only(left: 140, top: 30),
                      child: Text(
                        "Progress          40%",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 245, 244, 244),
                            fontSize: 15),
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 140, top: 60),
                          width: 120,
                          height: 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: const Color.fromARGB(255, 189, 194, 239),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 140, top: 60),
                          width: 60,
                          height: 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: const Color.fromARGB(255, 230, 230, 237),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
                height: 80,
              ),
              const Text(
                "Today's Task",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
              ),
              const SizedBox(
                width: 110,
              ),
              TextButton.icon(
                style: TextButton.styleFrom(),
                onPressed: null,
                label: const Text(
                  'See All',
                  style: TextStyle(
                    color: Colors.black38,
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 320,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                border: Border.all(
                    color: const Color.fromARGB(255, 151, 151, 155),
                    width: 0.1),
                color: Colors.white),
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
                        'assets/images/ui design.png',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    )),
                const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15, right: 40),
                      child: Text(
                        "UI Design",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2, left: 20),
                      child: Text("09:00 AM - 10:00 AM",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.black26)),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.chevron_right,
                        size: 35,
                      )),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 320,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                border: Border.all(
                    color: const Color.fromARGB(255, 151, 151, 155),
                    width: 0.1),
                color: Colors.white),
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
                      padding: EdgeInsets.only(top: 15, left: 22),
                      child: Text(
                        "Web Development",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2, left: 22),
                      child: Text("11:30 AM - 12:30 PM",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.black26)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TaskDetails()),
                        );
                      },
                      icon: const Icon(
                        Icons.chevron_right,
                        size: 35,
                      )),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 320,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                border: Border.all(
                    color: const Color.fromARGB(255, 151, 151, 155),
                    width: 0.1),
                color: Colors.white),
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
                        'assets/images/office meeting.jpg',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    )),
                const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15, right: 5),
                      child: Text(
                        "Office Meeting",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2, left: 20),
                      child: Text("02:30 PM - 03:30 PM",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.black26)),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.chevron_right,
                        size: 35,
                      )),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 320,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                border: Border.all(
                    color: const Color.fromARGB(255, 151, 151, 155),
                    width: 0.1),
                color: Colors.white),
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
                        'assets/images/dashboard.jpg',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    )),
                const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 20),
                      child: Text(
                        "Dashboard Design",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2, left: 20),
                      child: Text("03:30 PM - 05:00 PM",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.black26)),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 22),
                  child: IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.chevron_right,
                        size: 35,
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
