import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelui/widgets/destination_carousal.dart';
import 'package:flutter/services.dart';

// ignore: non_constant_identifier_names


class HomeScreen extends StatefulWidget {
  

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  int tap=0,check=0;
  int _selectedIndex=0;
  int _currentTab=0;
  List<IconData> _icons=[
    FontAwesomeIcons.plane,
    FontAwesomeIcons.biking,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking
  ];
  Widget _buildIcon(int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          _selectedIndex=index;
        });
      },
          child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: index==_selectedIndex?Theme.of(context).accentColor:Colors.grey[200],
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(_icons[index], 
        size:25.0,
        color: index ==_selectedIndex?Theme.of(context).primaryColor:Colors.grey[800],
        )
        ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical:30.0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 120.0),
                          child: Text("What would you like to find?"
              ,style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height:20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              
              children: 
                _icons.asMap().entries.map((MapEntry map)=>_buildIcon(map.key),
                ).toList(),
              
              
            ),
            SizedBox(height:20.0),
                DestinationCarousal(),
            

          ],
          
          )
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.green[900],
            
            currentIndex: _currentTab,
          onTap: (tap){
            setState(() {
              _currentTab=tap;
              check=tap; 
                           
            });

          },
          items: [
            BottomNavigationBarItem(
              
              
              icon:Icon(Icons.home,
              size: 30.0,
              
              ),
              
              title:Text("Home"),
              ),
            BottomNavigationBarItem(
            
              icon: Icon(
                Icons.search,
                size:30.0,),
              title:Text("Search",),
                
                ),
              BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 15.0,
                backgroundImage: AssetImage("assets/images/img.jpg"),
              ),
                title:Text("Profile",),
                ),
              
              
              ],
          
          ),
      
    );
  }
}