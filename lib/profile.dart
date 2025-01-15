import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
   bool isSelected = false;

void toggleSwitch(bool value){
    setState(() {
      isSelected=!isSelected;
    });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        primary: true,
        // ignore: prefer_const_constructors
        leading: Icon(Icons.widgets), // First icon on the left

        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 70),
              child: const Text(
                "Profile",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
              ),
            )
          ],
        ), // Text in the middle
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 30, top: 40),
                width: 155,
                height: 155,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 44, 75, 249),
                      width: 3.0),
                  borderRadius: BorderRadius.circular(80),
                  color: const Color.fromARGB(255, 251, 249, 249),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 40, top: 53),
                width: 135,
                height: 130,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 121, 119, 119),
                      width: 6.0),
                  shape: BoxShape.circle,
                  color: const Color.fromARGB(255, 246, 240, 240),
                ),
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(100), // Optional for fine-tuning

                  child: Image.asset(
                    'assets/images/WhatsApp Image 2024-11-11 at 20.02.23_7bfbb617.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 150, top: 120),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(20),
                    backgroundColor: const Color.fromARGB(
                        255, 180, 219, 251), // <-- Button color
                    //foregroundColor: Colors.red, // <-- Splash color
                  ),
                  child: const Icon(Icons.edit,
                      color: Color.fromARGB(255, 3, 23, 241)),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 0),
            child: Text(
              "Sajad Yoosuf",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'assets/images/10969279.png',
                    width: 40,
                    height: 30,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "Edit Profile",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  const SizedBox(
                    width: 120,
                  ),
                  const IconButton(
                    onPressed: null,
                    icon: Icon(Icons.arrow_forward_ios),
                    iconSize: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'assets/images/remove image.png',
                    width: 40,
                    height: 30,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "Change Password",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  const IconButton(
                    onPressed: null,
                    icon: Icon(Icons.arrow_forward_ios),
                    iconSize: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'assets/images/location.png',
                    width: 40,
                    height: 30,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "Turn on Location",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                 Switch(value: isSelected , onChanged: toggleSwitch,activeColor: const Color.fromARGB(255, 95, 40, 244),)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Image.asset(
                    'assets/images/send.png',
                    width: 40,
                    height: 30,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "Email Notifications",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                                    Switch(value: isSelected , onChanged: toggleSwitch,activeColor: const Color.fromARGB(255, 95, 40, 244),)

                ],
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  SizedBox(width: 20,),
                  Image.asset(
                    'assets/images/images-removebg-preview.png',
                    width: 30,
                    height: 30,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "Settings",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  const SizedBox(
                    width: 140,
                  ),
                  const IconButton(
                    onPressed: null,
                    icon: Icon(Icons.arrow_forward_ios),
                    iconSize: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  SizedBox(width: 15,),
                  Image.asset(
                    'assets/images/exit reoved.png',
                    width: 40,
                    height: 30,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    "Logout",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  const SizedBox(
                    width: 155,
                  ),
                  const IconButton(
                    onPressed: null,
                    icon: Icon(Icons.arrow_forward_ios),
                    iconSize: 20,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
