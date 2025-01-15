import 'package:flutter/material.dart';
import 'package:horizontal_date_picker_flutter/horizontal_date_picker_flutter.dart';
import 'shedule_page.dart';

class UpcomingTasks extends StatefulWidget {
  const UpcomingTasks({super.key});

  @override
  State<UpcomingTasks> createState() => _UpcomingTasks();
}

class _UpcomingTasks extends State<UpcomingTasks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        primary: true,
        leading: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 6, left: 20),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: const Color.fromARGB(31, 118, 113, 113)),
            ),
            Container(
              margin: const EdgeInsets.only(left: 27, top: 14),
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: const Color.fromARGB(31, 118, 113, 113),
                border: Border.all(
                    color: const Color.fromARGB(255, 64, 64, 65), width: 0.4),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 39, top: 14),
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: const Color.fromARGB(31, 118, 113, 113),
                border: Border.all(
                    color: const Color.fromARGB(255, 64, 64, 65), width: 0.4),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 27, top: 26),
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: const Color.fromARGB(31, 118, 113, 113),
                border: Border.all(
                    color: const Color.fromARGB(255, 64, 64, 65), width: 0.4),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 26, left: 39),
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: const Color.fromARGB(31, 118, 113, 113),
                border: Border.all(
                    color: const Color.fromARGB(255, 64, 64, 65), width: 0.4),
              ),
            )
          ],
        ), // First icon on the left

        title: const Text(
          "Upcoming Taks",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        // Text in the middle
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(right: 130),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Today",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Color.fromARGB(255, 155, 155, 153),
                      fontSize: 20),
                ),
                Text(
                  "Monday, 04 Apr",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Color.fromARGB(255, 6, 6, 5),
                      fontSize: 25),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            margin: EdgeInsets.only(top: 20, left: 20),
            child: HorizontalDatePicker(
              unSelectedItemColor: Colors.white,
              selectedItemColor: const Color.fromARGB(255, 144, 144, 144),
              onDateTap: (p0) {},
              startDate: DateTime.now(),
              endDate: DateTime.now().add(Duration(days: 40)),
              dayTextStyle: const TextStyle(
                  color: Color.fromARGB(255, 6, 5, 5), fontSize: 13),
              weekDayTextStyle: const TextStyle(
                  color: Color.fromARGB(255, 3, 3, 3), fontSize: 13),
              monthTextStyle: const TextStyle(
                  color: Color.fromARGB(255, 8, 6, 6), fontSize: 13),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 20),
                  const Text(
                    "Schedule",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 8, 6, 6),
                        fontSize: 25),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  TextButton.icon(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            12), // Adjust value for desired radius
                      ),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {
                      {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ShedulePage()),
                        );
                      }
                    },
                    icon: const Icon(Icons.add),
                    label: const Text('Add New'),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 320,
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
                      padding: EdgeInsets.only(top: 15, left: 20),
                      child: Text(
                        "UI Design Presentation",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2, right: 23),
                      child: Text("09:00 AM - 11:00 AM",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.blue)),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
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
                      padding: EdgeInsets.only(top: 15, left: 20),
                      child: Text(
                        "Web Page Design",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2, left: 20),
                      child: Text("11:30 AM - 01:00 PM",
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
          SizedBox(
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
                color: const Color.fromARGB(255, 234, 220, 241)),
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
                        'assets/images/meeting and collabration.avif',
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
                        "Meet & Collabration",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2, left: 6),
                      child: Text("02:30 PM - 04:00 PM",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Color.fromARGB(255, 121, 28, 167))),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
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
                color: const Color.fromARGB(255, 225, 245, 228)),
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
                        'assets/images/group research.jpg',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    )),
                const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 6),
                      child: Text(
                        "Group Research",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2, left: 20),
                      child: Text("04:30 PM - 06:00 PM",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Color.fromARGB(255, 24, 172, 31))),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
