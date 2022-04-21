import 'package:flutter/material.dart';
import '../scenes/scenes.dart';

class Main_Scenes extends StatefulWidget {
  const Main_Scenes({ Key? key }) : super(key: key);

  @override
  _Main_ScenesState createState() => _Main_ScenesState();
}

class _Main_ScenesState extends State<Main_Scenes> {
  int _selectedIndex = 0;
  static const List<Widget> _scenes =<Widget>[
      events(),
      connect(),
      search(),
      messages(),
      profile()      
  ];
  void _onItemTaooed(int index){
    setState(() {
      _selectedIndex =index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _scenes.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const<BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'Events'),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Connect'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTaooed,
      ),
    );
  }
}