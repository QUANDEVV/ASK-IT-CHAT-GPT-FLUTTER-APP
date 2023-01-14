import 'package:chats/CHATGPT/chat.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
      ),
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(

                 onTap: () {
    Navigator.push(
      context,
      PageRouteBuilder(
        transitionDuration: Duration(milliseconds: 750),
        pageBuilder: (context, animation, secondaryAnimation) => ChatPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = Offset(1.0, 0.0);
          var end = Offset.zero;
          var curve = Curves.ease;

          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      ),
    );
  },
                  child: Container(
                   height: 150,
                   width: 120,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.black
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Chat GPT',
                    style: TextStyle(
                      color: Colors.white
                    ),
                    
                    ),
                  ),
                
                  ),
                ),
              ),
Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(

                 onTap: () {
    Navigator.push(
      context,
      PageRouteBuilder(
        transitionDuration: Duration(milliseconds: 750),
        pageBuilder: (context, animation, secondaryAnimation) => ChatPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = Offset(1.0, 0.0);
          var end = Offset.zero;
          var curve = Curves.ease;

          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      ),
    );
  },
                  child: Container(
                   height: 150,
                   width: 120,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.black
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Image generator',
                    style: TextStyle(
                      color: Colors.white
                    ),
                    
                    ),
                  ),
                
                  ),
                ),
              ),

            ],
          ),

Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(

                 onTap: () {
    Navigator.push(
      context,
      PageRouteBuilder(
        transitionDuration: Duration(milliseconds: 750),
        pageBuilder: (context, animation, secondaryAnimation) => ChatPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = Offset(1.0, 0.0);
          var end = Offset.zero;
          var curve = Curves.ease;

          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      ),
    );
  },
                  child: Container(
                   height: 150,
                   width: 120,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.black
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Text To Speech',
                    style: TextStyle(
                      color: Colors.white
                    ),
                    
                    ),
                  ),
                
                  ),
                ),
              ),
Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(

                 onTap: () {
    Navigator.push(
      context,
      PageRouteBuilder(
        transitionDuration: Duration(milliseconds: 750),
        pageBuilder: (context, animation, secondaryAnimation) => ChatPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = Offset(1.0, 0.0);
          var end = Offset.zero;
          var curve = Curves.ease;

          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      ),
    );
  },
                  child: Container(
                   height: 150,
                   width: 120,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.black
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Image generator',
                    style: TextStyle(
                      color: Colors.white
                    ),
                    
                    ),
                  ),
                
                  ),
                ),
              ),

            ],
          ),

        ],),
      ),
    );
  }
}