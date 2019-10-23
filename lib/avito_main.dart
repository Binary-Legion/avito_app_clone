import 'package:avito_app/screens/acccount_screen.dart';
import 'package:avito_app/screens/announces_screen.dart';
import 'package:avito_app/screens/chat_screen.dart';
import 'package:avito_app/screens/notifications_screen.dart';
import 'package:avito_app/screens/selling__screen.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class AvitoMain extends StatefulWidget {
  @override
  _AvitoMainState createState() => _AvitoMainState();
}

class _AvitoMainState extends State<AvitoMain> {

  int _currrentIndex = 0;

  _onTapped(int index)
  {
    setState(() {
      _currrentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {


    List<Widget> _screens = [
     AnnouncesScreen(),
     AccountScreen(),
     SellingScreen(),
     ChatScreen(),
     NotificationsScreen(),
    ];


    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: kAppBarIconColor,
        ),
        backgroundColor: Colors.white,
        title: Image.asset(
          'images/avito_logo.png',
          width: 100.0,
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: kAppBarIconColor,
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child: Container(
            height: 48.0,
            child: AppBar(
              backgroundColor: Colors.white,
              title: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Toutes les catégories',
                    style: kCategorieTextStyle,
                  ),
                  Text(
                    'Tout le maroc',
                    style: kTerritoirTextStyle,
                  ),
                ],
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.local_offer),
                  iconSize: 18.0,
                  color: kAppBarIconColor,
                ),
                IconButton(
                  icon: Icon(Icons.view_comfy),
                  iconSize: 18.0,
                  color: kAppBarIconColor,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Container(
        width: 60.0,
        height: 60.0,
        child: RawMaterialButton(
          shape: CircleBorder(),
          fillColor: kAccentColor,
          elevation: 0.0,
          child: Icon(
            Icons.camera_alt,
            color: Colors.white,
          ),
          onPressed: (){
            setState(() {
              _currrentIndex = 2;
            });
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currrentIndex ,
        onTap: _onTapped,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            title: Text(
              'Annonces',
              style: kBottomBarItemTextStyle,
            ),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text(
              'Compte',
              style: kBottomBarItemTextStyle,
            ),
            icon: Icon(Icons.perm_identity),
          ),
          BottomNavigationBarItem(
            title: Text(
              'Vendez',
              style: kBottomBarItemTextStyle,
            ),
            icon: Container(
              height: 22.0,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
              'Chat',
              style: kBottomBarItemTextStyle,
            ),
            icon: Icon(Icons.forum),
          ),
          BottomNavigationBarItem(
            title: Text(
              'Notifications',
              style: kBottomBarItemTextStyle,
            ),
            icon: Icon(Icons.notifications_none),
          ),
        ],
      ),
      body: _screens[_currrentIndex],
    );
  }
}
