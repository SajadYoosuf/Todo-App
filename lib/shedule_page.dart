import 'package:flutter/material.dart';
import 'navigationPage.dart';
import 'package:date_picker_plus/date_picker_plus.dart';

class ShedulePage extends StatefulWidget {
  const ShedulePage({super.key});

  @override
  State<ShedulePage> createState() => _ShedulePage();
}

class _ShedulePage extends State<ShedulePage> {
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
              width: 70,
            ),
            Text(
              "Shedule",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 5),
                child: SizedBox(
                  width: 350,
                  height: 350,
                  child: RangeDatePicker(
                    leadingDateTextStyle: const TextStyle(
                        color: Color.fromARGB(255, 2, 2, 5),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    daysOfTheWeekTextStyle: const TextStyle(
                        color: Color.fromARGB(255, 10, 10, 15),
                        fontWeight: FontWeight.bold),
                    enabledCellsTextStyle: const TextStyle(
                        color: Color.fromARGB(255, 89, 89, 91),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                    selectedCellsTextStyle: const TextStyle(
                        color: Color.fromARGB(255, 2, 2, 250),
                        fontWeight: FontWeight.bold),
                    singleSelectedCellTextStyle: const TextStyle(
                        color: Color.fromARGB(255, 246, 246, 250),
                        fontWeight: FontWeight.bold),
                    singleSelectedCellDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: const Color.fromARGB(255, 1, 22, 246),
                    ),
                    centerLeadingDate: true,
                    minDate: DateTime(2020, 10, 10),
                    maxDate: DateTime(2024, 10, 30),
                    onRangeSelected: (value) {
                      // Handle selected range
                    },
                  ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(right: 170, bottom: 20),
                  child: const Text(
                    "Added Task",
                    style: TextStyle(
                        color: Color.fromARGB(255, 4, 4, 8),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )),
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
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                        margin: const EdgeInsets.only(bottom: 2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(11),
                          child: Image.asset(
                            'assets/images/email campaign.jpg',
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        )),
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 15, right: 10),
                          child: Text(
                            "Email campaign",
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
                  ],
                ),
              ),
              const SizedBox(
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
                        margin: const EdgeInsets.only(bottom: 2, right: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(11),
                          child: Image.asset(
                            'assets/images/keyword research.png',
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
                            "Keyword Research",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 2, right: 40),
                          child: Text("09:00 AM - 11:00 AM",
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
              const SizedBox(
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
                    color: const Color.fromARGB(255, 234, 220, 241)),
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
                            "Analytics meeting",
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
                                  color: Color.fromARGB(255, 121, 28, 167))),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
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
                    color: const Color.fromARGB(255, 218, 229, 250)),
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
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 5,
          child: TextButton(
              onPressed: null,
              child: Container(
                padding: const EdgeInsets.only(left: 125, top: 10),
                margin: const EdgeInsets.only(bottom: 10),
                height: 60,
                width: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 59, 103, 249),
                ),
                child: const Text(
                  "Shedule",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 25),
                ),
              )),
        ),
      ]),
    );
  }
}
