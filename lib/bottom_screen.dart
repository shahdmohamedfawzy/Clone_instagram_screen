import 'package:flutter/material.dart';
import 'package:uploading/profile2.dart';
import 'package:uploading/reels_screen.dart';
import 'package:uploading/search_profie.dart';
import 'package:uploading/store_screen.dart';

import 'home.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({super.key});

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}



class _BottomScreenState extends State<BottomScreen> {
  int currentIndex=0;
  List<Widget>screen=[
    Home(),
    Search(),
    ReelsScreen(),
    StoreScreen(),
    Profile2(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.white,
          showUnselectedLabels: true,
          onTap:(value){
            setState(() {
              currentIndex=value;
            });
          },
          items: [
      BottomNavigationBarItem(
      icon:Icon(Icons.home
      ),
        label:'.',
    ),
    BottomNavigationBarItem(
    icon:Icon(Icons.search
    ),
      label: '..',
    ),
    BottomNavigationBarItem(
    icon:Icon(Icons.ondemand_video
    ),
      label: '...',
    ),
    BottomNavigationBarItem(
    icon:Icon(Icons.store),
    label: '....',
    ),
    BottomNavigationBarItem(icon:
    CircleAvatar(
    backgroundImage: NetworkImage('https://i.pinimg.com/236x/88/7c/cc/887cccbd1656d926a28cb1f571fe7a10.jpg'),
    ),
    ),
        ],
    ),
    );
  }
}