import 'package:flutter/material.dart';

class InboxCHeck extends StatefulWidget {
  const InboxCHeck({super.key});

  @override
  State<InboxCHeck> createState() => _InboxCHeck();
}

class _InboxCHeck extends State<InboxCHeck> {
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
              margin: const EdgeInsets.only(top: 8, left: 20),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: const Color.fromARGB(31, 118, 113, 113)),
            ),
            Container(
              margin: const EdgeInsets.only(left: 26, top: 18),
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
              margin: const EdgeInsets.only(left: 38, top: 18),
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
              margin: const EdgeInsets.only(left: 26, top: 30),
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
              margin: const EdgeInsets.only(top: 30, left: 38),
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
        ),

        /// First icon on the left
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 80),
              child: const Text(
                "Inbox",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
              ),
            )
          ],
        ), // Text in the middle

        actions: <Widget>[
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 8, left: 5),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: const Color.fromARGB(31, 118, 113, 113)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, top: 4.5, right: 25),
                child:
                    IconButton(icon: const Icon(Icons.tune), onPressed: () {}),
              )
            ],
          ), // Third icon on the right
        ],
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20, left: 5),
              width: 320,
              height: 70,
              child: SizedBox(
                child: SearchBar(
                  backgroundColor: const WidgetStatePropertyAll(
                      Color.fromARGB(255, 218, 238, 254)),
                  shape: WidgetStatePropertyAll<OutlinedBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14))),
                  hintText: "Search",
                  onTap: () {},
                  onChanged: (_) {},
                  leading: const Icon(Icons.search),
                ),
              ),
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20, right: 230),
                  child: Text(
                    "Today",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                        color: Colors.black38),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 30,
                              top:
                                  10), //  margin: const EdgeInsets.only(right: 220, top: 25),
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: const Color.fromARGB(255, 240, 239, 239)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                100), // Optional for fine-tuning

                            child: Image.asset(
                              'assets/images/asif sir .jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10, right: 80),
                                  child: Text(
                                    "Asif sir ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10, left: 5),
                                  child: Text(
                                    "10 minutes ago ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromARGB(147, 40, 40, 41)),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 70, top: 10),
                              child: Text(
                                "Tell me about your project",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(147, 40, 40, 41)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 30,
                              top:
                                  10), //  margin: const EdgeInsets.only(right: 220, top: 25),
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: const Color.fromARGB(255, 240, 239, 239)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                100), // Optional for fine-tuning

                            child: Image.asset(
                              'assets/images/jithin sir.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 90),
                                  child: const Text(
                                    "Jithin sir ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 20),
                                  child: const Text(
                                    "11:45 AM",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromARGB(147, 40, 40, 41)),
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 90, top: 10),
                              child: Text(
                                "Let's shedule a meeting",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(147, 40, 40, 41)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 30,
                              top:
                                  10), //  margin: const EdgeInsets.only(right: 220, top: 25),
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: const Color.fromARGB(255, 240, 239, 239)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                100), // Optional for fine-tuning

                            child: Image.asset(
                              'assets/images/nihad teacher and me.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 05),
                                  child: const Text(
                                    "Nihad",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  width: 135,
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 15),
                                  child: const Text(
                                    "10:00 AM",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromARGB(147, 40, 40, 41)),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 90, top: 10),
                              child: Text(
                                "Last project is complete.",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(147, 40, 40, 41)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 180),
                      child: Text(
                        "Yesterday",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 25,
                            color: Colors.black38),
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 30,
                                  top:
                                      10), //  margin: const EdgeInsets.only(right: 220, top: 25),
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color:
                                      const Color.fromARGB(255, 240, 239, 239)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    100), // Optional for fine-tuning

                                child: Image.asset(
                                  'assets/images/nishan kunjumon.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, right: 100),
                                      child: Text(
                                        "Nishan",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, left: 25),
                                      child: Text(
                                        "12:15 PM",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromARGB(
                                                147, 40, 40, 41)),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 90, top: 10),
                                  child: Text(
                                    "I'll research this topic.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromARGB(147, 40, 40, 41)),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 30,
                                  top:
                                      10), //  margin: const EdgeInsets.only(right: 220, top: 25),
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color:
                                      const Color.fromARGB(255, 240, 239, 239)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    100), // Optional for fine-tuning

                                child: Image.asset(
                                  'assets/images/faria.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, right: 105),
                                      child: Text(
                                        "Faris",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, left: 35),
                                      child: Text(
                                        "12:15 PM",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromARGB(
                                                147, 40, 40, 41)),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 105, top: 10),
                                  child: Text(
                                    "Well done. Good Job",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromARGB(147, 40, 40, 41)),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 30,
                                  top:
                                      10), //  margin: const EdgeInsets.only(right: 220, top: 25),
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color:
                                      const Color.fromARGB(255, 240, 239, 239)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    100), // Optional for fine-tuning

                                child: Image.asset(
                                  'assets/images/yoosuf.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, right: 100),
                                      child: Text(
                                        "Yoosuf",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, left: 27),
                                      child: Text(
                                        "09:10 AM",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromARGB(
                                                147, 40, 40, 41)),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 115, top: 10),
                                  child: Text(
                                    "New Task is ready",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromARGB(147, 40, 40, 41)),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 30,
                                  top:
                                      10), //  margin: const EdgeInsets.only(right: 220, top: 25),
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color:
                                      const Color.fromARGB(255, 240, 239, 239)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    100), // Optional for fine-tuning

                                child: Image.asset(
                                  'assets/images/sheher.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, right: 100),
                                      child: Text(
                                        "Shaheer",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, left: 20),
                                      child: Text(
                                        "08:05 AM",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromARGB(
                                                147, 40, 40, 41)),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 100, top: 10),
                                  child: Text(
                                    "What about your task",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromARGB(147, 40, 40, 41)),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ), // Key line to center dock
    );
  }
}
