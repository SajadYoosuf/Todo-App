import 'package:flutter/material.dart';
import 'home_page.dart';
import 'inbox.dart';
import 'profile.dart';
import 'upcoming_tasks.dart';
import 'new_task.dart';

class Navigationpage extends StatefulWidget {
  const Navigationpage({super.key});
  @override
  State<Navigationpage> createState() => _NavigationPage();
}

class _NavigationPage extends State<Navigationpage> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: NavigationBar(
        height: 70,
        indicatorColor: const Color.fromARGB(255, 253, 251, 253),
        backgroundColor: const Color.fromARGB(255, 251, 249, 251),
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        destinations: <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home,
                color: currentPageIndex == 0
                    ? const Color.fromARGB(255, 6, 26, 245)
                    : const Color.fromARGB(255, 0, 0, 1)),
            icon: const Icon(Icons.home_outlined),
            label: '',
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: NavigationDestination(
              icon: Icon(Icons.calendar_month,
                  color: currentPageIndex == 1
                      ? const Color.fromARGB(255, 3, 23, 242)
                      : const Color.fromARGB(255, 3, 3, 5)),
              label: '',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: NavigationDestination(
              icon: Icon(Icons.chat_bubble,
                  color: currentPageIndex == 2
                      ? const Color.fromARGB(255, 3, 60, 246)
                      : const Color.fromARGB(255, 7, 7, 12)),
              label: '',
            ),
          ),
          NavigationDestination(
            icon: Icon(Icons.person,
                color: currentPageIndex == 3
                    ? const Color.fromARGB(255, 4, 24, 242)
                    : const Color.fromARGB(255, 7, 7, 10)),
            label: '',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
        backgroundColor: const Color.fromARGB(255, 4, 70, 237),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TaskCreation()),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 40,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: <Widget>[
        const MyHomePage(),
        const UpcomingTasks(),
        const InboxCHeck(),
        const ProfilePage()
      ][currentPageIndex],
    );
  }
}
