import 'package:flutter/material.dart';
import 'package:modiul5/fromVi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 153, 238, 197)),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      padding: EdgeInsets.all(10),
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
    );

    MySnackBar(message, context) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(message)));
    }

    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            
            TextButton(
              // this textbutton we use style
              onPressed: () {
                MySnackBar("I am TextButton", context);
              },
              child: Text("Text"),
              style: buttonStyle,
            ),
            ElevatedButton(
              // this elevatedbutton we use style
              onPressed: () {
                MySnackBar('I am Elevated Button', context)
              },
              child: Text("Text"),
              style: buttonStyle,
            ),

            // here outline button we dont use any style ok ?
            // but we can show snackBar message
            OutlinedButton(
                onPressed: () {
                  MySnackBar('I Am cute Outline Button ', context);
                },
                child: Text("Text")),
          ],
        ),
      ),
    );
  }
}
