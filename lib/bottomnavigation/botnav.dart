import 'package:flutter/material.dart';
import 'package:gridviewclass/bottomnavigation/videos.dart';
import 'files.dart';
import 'gallery.dart';
import 'home.dart';
import 'profile.dart';


class BotNav extends StatefulWidget {
  const BotNav({Key? key}) : super(key: key);

  @override
  State<BotNav> createState() => _BotNavState();
}

class _BotNavState extends State<BotNav> {
  final pageController = PageController(initialPage: 1);
  int currentSelected = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Bottom Navigaton Bar'),
        automaticallyImplyLeading: false,
      ),
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
      type: BottomNavigationBarType.shifting, // Shifting
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.black,
      selectedFontSize: 10,
      currentIndex: currentSelected,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.image), label: 'Gallery',
          backgroundColor: Colors.purple,),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: Colors.grey,),
        BottomNavigationBarItem(
          icon: Icon(Icons.file_present_sharp),
          label: 'File',
          backgroundColor: Colors.brown,),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_library_sharp),
          label: 'Video',
          backgroundColor: Colors.orange,),
        BottomNavigationBarItem(
          icon: Icon(Icons.person), label: 'profile',
          backgroundColor: Colors.green,),
      ],
      onTap: (int index) {
        setState(() {
          currentSelected = index;
          pageController.animateToPage(
            currentSelected,
            curve: Curves.fastOutSlowIn,
            duration: const Duration(milliseconds: 500),
          );
        });
      },
    );
  }

  Widget _getPagesAtIndex(index) {
    switch (index) {
      case 0:
        return Gallery();
      case 1:
        return Home();
      case 2:
        return Files();
      case 3:
        return Videos();
      case 4:
        return Profile();
      default:
        return const CircularProgressIndicator();
    }
  }

}
