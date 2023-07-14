import 'package:flutter/material.dart';
import 'package:gridviewclass/youtube/shorts.dart';
import 'package:gridviewclass/youtube/subcriptions.dart';

import 'add.dart';
import 'home.dart';
import 'library.dart';

class YoutubeTask extends StatelessWidget {
  const YoutubeTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final pageController = PageController(initialPage: 0);
  int currentSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: 5,
        controller: pageController,
        itemBuilder: (BuildContext context, index) {
          return _getPagesAtIndex(index);
        },
        onPageChanged: (int index) {
          setState(() {
            currentSelected = index;
          });
        },
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      selectedFontSize: 10,
      unselectedFontSize: 10,
      currentIndex: currentSelected,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), activeIcon: Icon(Icons.home), label: 'Home',),
        BottomNavigationBarItem(icon: Icon(Icons.play_circle_outline), activeIcon: Icon(Icons.play_circle), label: 'Shorts',),
        BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline), activeIcon: Icon(Icons.add_circle), label: 'Add',),
        BottomNavigationBarItem(icon: Icon(Icons.subscriptions_outlined), activeIcon: Icon(Icons.subscriptions), label: 'Subcriptions',),
        BottomNavigationBarItem(icon: Icon(Icons.video_library_outlined), activeIcon: Icon(Icons.video_library), label: 'Library',),
      ],
      onTap: (int index) {
        setState(() {
          currentSelected = index;
          pageController.animateToPage( currentSelected, curve: Curves.fastOutSlowIn,
            duration: const Duration(milliseconds: 500),
          );
        });
      },
    );
  }

  Widget _getPagesAtIndex(int index) {
    switch(index){
      case 0: return Home();
      case 1: return Shorts();
      case 2: return Add();
      case 3: return Subcriptions();
      case 4: return Library();
      default:
        return const CircularProgressIndicator();
    }
  }
}
