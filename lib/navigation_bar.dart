import 'package:flutter/material.dart';
import 'package:musifyflutter/Pages/browser.dart';
import 'package:musifyflutter/Pages/home.dart';
import 'package:musifyflutter/Pages/my_music.dart';
import 'package:musifyflutter/Pages/searchs.dart';


class ButtonNavBar extends StatefulWidget {
  const ButtonNavBar({super.key});

  @override
  State<ButtonNavBar> createState() => _ButtonNavBarState();
}

class _ButtonNavBarState extends State<ButtonNavBar> {
  int myCurrent = 0;
  List Pages=[
    const Home(),
    const Browser(),
    const Searchs(),


  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Pages[myCurrent],
        extendBody: true,
        bottomNavigationBar:
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                // color: Colors.black38,
                blurRadius: 25,
                offset: Offset(8,20)
              )
            ]
          ),
      
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BottomNavigationBar(

              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.black,
              selectedItemColor: Colors.green,
              unselectedItemColor: Colors.white,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              currentIndex: myCurrent,
              onTap: (index) {
                
                if(index==3){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyMusic(),) );
                }
                else{
                  setState(() {
                    myCurrent=index;
                  });
                }


              },
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.browse_gallery),label: 'browser'),
                BottomNavigationBarItem(icon: Icon(Icons.search),label: 'search'),
                BottomNavigationBarItem(icon: Icon(Icons.music_note),label: 'my music'),
              ],
            ),
          ),
        ),
      
      ),
    );
  }
}

