import 'package:chats/CHATGPT/chat.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
     decoration: BoxDecoration(
        color: Color.fromARGB(255, 211, 179, 159)
    ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // drawer: Drawer(
        // ),
        appBar: AppBar(
      leading: Image.asset('assets/1024.png',
       color:   Color.fromRGBO(16, 163, 127, 1),
    
      
      ),
      title: Text('Ask it',
      style: GoogleFonts.poppins(
        color: Colors.black
      ),
      ),
      backgroundColor: Colors.white,
    ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
        
              SizedBox(height: 10),
              SizedBox(height: 40,
              child: Text('Choose Your Task for AI',
              style: GoogleFonts.poppins(
              fontSize: 17,
              fontWeight: FontWeight.w500
              ),
              
              )),


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
                        child: Text('Relationship',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
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
                        child: Text('Zodiac',
                       style: GoogleFonts.poppins(
                          fontSize: 12,
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
                        child: Text('Mental Health',
                       style: GoogleFonts.poppins(
                          fontSize: 12,
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
                        child: Text('Workouts',
                       style: GoogleFonts.poppins(
                          fontSize: 12,
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
                        child: Text('Finance',
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
                        child: Text('Language Translation',
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
                        child: Text('Coding',
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
                        child: Text('Food',
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
    
    
    
    
             
        
        
            ],
            ),
          ),
        ),
      ),
    );
  }
}