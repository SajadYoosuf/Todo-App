import 'package:flutter/material.dart';
import 'package:my_second_project/main.dart';
import 'taskData.dart';

class TaskCreation extends StatefulWidget {
  const TaskCreation({super.key});
  @override
  State<TaskCreation> createState() => _TaskCreation();
}

class _TaskCreation extends State<TaskCreation> {
  final TextEditingController _taskName = TextEditingController();
  final TextEditingController _taskCategory = TextEditingController();
  final TextEditingController _taskDate = TextEditingController();
  final TextEditingController _taskStartTime = TextEditingController();
  final TextEditingController _taskEndTime = TextEditingController();
  final TextEditingController _taskDiscription = TextEditingController();
  final TextEditingController _taskImagePick = TextEditingController();

  List<Taskdata> taskData = [];

  void _taskDataAdding() {
    setState(() {
      taskData.add(Taskdata(
          taskName: _taskName,
          dateTime: dateTime,
          timeofStart: timeofStart,
          timeofEnd: timeofEnd,
          discription: discription,
          image: image));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20, top: 7),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(31, 118, 113, 113),
                    borderRadius: BorderRadius.circular(11)),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 15,
                  top: 1,
                ),
                child: IconButton(
                    iconSize: 17,
                    color: const Color.fromARGB(255, 105, 104, 104),
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    },
                    icon: const Icon(Icons.arrow_back_ios_new)),
              ),
            ],
          ),
          title: const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              "Create New Task",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )),
      body: Column(
        children: [
          const Row(
            children: [
              SizedBox(
                width: 25,
                height: 70,
              ),
              Text(
                "Task Name",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ],
          ),
          SizedBox(
            width: 300,
            height: 70,
            child: TextField(
              controller: _taskName,
              decoration: InputDecoration(
                hintStyle: const TextStyle(
                  color: Color.fromARGB(255, 188, 182, 182),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 199, 195, 195), width: 1.0),
                ),
                hintText: 'Ui design',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              right: 200,
            ),
            child: Text(
              "Category",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              const SizedBox(
                width: 28,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: const Color.fromARGB(255, 5, 85, 245),
                    iconColor: const Color.fromARGB(255, 221, 221, 234),
                    fixedSize: const Size(80, 40),
                  ),
                  onPressed: null,
                  child: const Text(
                    "Design",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 15),
                  )),
              const SizedBox(
                width: 10,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: const Color.fromARGB(255, 228, 228, 249),
                    iconColor: const Color.fromARGB(255, 221, 221, 234),
                    fixedSize: const Size(120, 40),
                  ),
                  onPressed: null,
                  child: const Text(
                    "Development",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 14, 11, 11),
                        fontSize: 15),
                  )),
              const SizedBox(
                width: 10,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: const Color.fromARGB(255, 228, 228, 249),
                    iconColor: const Color.fromARGB(255, 221, 221, 234),
                    fixedSize: const Size(100, 40),
                  ),
                  onPressed: null,
                  child: const Text(
                    "Research",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 1, 1, 1),
                        fontSize: 15),
                  )),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(right: 165, top: 15),
            child: Text(
              "Date & Time",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 7, 5, 5),
                  fontSize: 25),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 300,
            height: 70,
            child: TextField(
              //  controller: _taskCategory,
              decoration: InputDecoration(
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(255, 188, 182, 182),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 199, 195, 195), width: 1.0),
                  ),
                  hintText: '07-11-2024',
                  suffixIcon: const Padding(
                    padding: EdgeInsetsDirectional.only(end: 12.0),
                    child: Icon(
                      Icons.calendar_month,
                      color: Color.fromARGB(255, 3, 84, 246),
                    ), // myIcon is a 48px-wide widget.
                  )),
            ),
          ),
          const Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Text(
                "Start time",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 7, 5, 5),
                    fontSize: 23),
              ),
              SizedBox(
                width: 60,
              ),
              Text(
                "End time",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 7, 5, 5),
                    fontSize: 23),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              SizedBox(
                width: 130,
                height: 50,
                child: TextField(
                  controller: _taskStartTime,
                  decoration: InputDecoration(
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 188, 182, 182),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 199, 195, 195),
                            width: 1.0),
                      ),
                      hintText: '09 AM',
                      suffixIcon: const Padding(
                        padding: EdgeInsetsDirectional.only(end: 12.0),
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          color: Color.fromARGB(255, 3, 84, 246),
                        ), // myIcon is a 48px-wide widget.
                      )),
                ),
              ),
              const SizedBox(
                width: 40,
                height: 20,
              ),
              SizedBox(
                width: 130,
                height: 50,
                child: TextField(
                  controller: _taskEndTime,
                  decoration: InputDecoration(
                      hintText: '09 AM',
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 199, 195, 195),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 199, 195, 195),
                            width: 1.0),
                      ),
                      suffixIcon: const Padding(
                        padding: EdgeInsetsDirectional.only(end: 12.0),
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          color: Color.fromARGB(255, 3, 84, 246),
                        ), // myIcon is a 48px-wide widget.
                      )),
                ),
              ),
            ],
          ),
          const Row(
            children: [
              SizedBox(
                width: 30,
                height: 60,
              ),
              Text(
                "Description",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 7, 5, 5),
                    fontSize: 30),
              ),
            ],
          ),
          SizedBox(
            width: 300,
            height: 70,
            child: TextField(
              controller: _taskDiscription,
              decoration: InputDecoration(
                hintStyle: const TextStyle(
                  color: Color.fromARGB(255, 188, 182, 182),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 199, 195, 195), width: 1.0),
                ),
                hintText:
                    'Research design paths.There are many\ncareer paths within the field of design',
              ),
              maxLines: 2, // Allow up to 5 lines of text

              minLines: 1,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                backgroundColor: const Color.fromARGB(255, 10, 75, 239),
                iconColor: const Color.fromARGB(255, 221, 221, 234),
                fixedSize: const Size(300, 60),
              ),
              onPressed: _taskDataAdding,
              child: const Text(
                "Create task",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 15),
              )),
        ],
      ),
    );
  }
}
