import 'package:flutter/material.dart';
import 'show_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: Project(),
    );
  }
}
class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
   bool showText = false;
bool showimage = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Color.fromARGB(255, 229, 242, 245),
appBar: AppBar(
  backgroundColor: Color.fromARGB(255, 116, 185, 185),
  title: Text("Id Card",style: TextStyle(fontSize: 27)  ,
   ),
  centerTitle: true,
  leading: IconButton(onPressed:(){},
  icon:Icon(Icons.menu,size: 30),
),
    ),
body: Center(
    child: Column(
      
     // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
      Container(
                      margin: EdgeInsets.fromLTRB(40, 100, 00, 50),
        child:
Text("To know more details about the student click here ",
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), 
                        fontSize: 20,
                        fontWeight:FontWeight.w800 ,
                        ),
),
width: 280,
),
 TextButton(
  
              onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ShowInfo()),);
                 
                },

child: ClipRRect(
               borderRadius: BorderRadius.circular(150),
                child: Image.asset(
                'images/3.jpg',
                
                 width: 150,
                 height: 150,
              ),
              
              ),
                ),              
                ],
              
            ),
),
              );
}
}