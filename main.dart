import 'package:flutter/material.dart';

/*
The purpose of this syntax is to import the flutter material design library
widgets, UI Design (google design system)

import - dart keyword to include external libraries

package:flutter/ - refers to material package to comes w/ flutter widgets

this is essential for building Flutter apps w/standard UI.

*/

void main() {
  runApp(const MyApp());
}

/*
Entry points of the Flutter app

void main() - main function, starting point of any dart program.

runApp() Flutter Function that initializes the app and attaches the root widget
(MyApp) to the screen

const MyApp() - creates an instance of the MyApp widget, marked const for
compile-time optimization (immutable configuration)

**/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override //indicates this method overrides StatelessWidget build
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const MyHomePage(),
    );


  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( //provides a standard page layout, AppBar,body, text ect.
      appBar: AppBar(
        title: const Text('Hello Flutter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('IsangTula.jpg',
              width: 600,
              height: 600,
            ),
            const SizedBox(height: 20),
            const Text(
              'Isang 100 Tula',
              style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}

/*
defined as the root widget (main container) of the app

class MyApp StatelessWidget - MyApp is a const class thats extends StatelessWidgets

const MyApp({super.key}); - constructor super.key passses an optional key to the base class

key uniquely identify widgets tree


const - ensures immutable constructor

MaterialApp
- set up app structor: navigation, themes, home screen
- title - visible in the task switches
- theme - ThemeData(primarySwatch: Color.blue) sets primary color palette
-

**/