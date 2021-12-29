import 'package:flutter/material.dart';
import './position.dart';

// I'm wondering how I could have an opening page where I ask for the user's favorite animal and name,
// and then I would go to what I have built here.
// Then maybe a closing page at the end as well?
// Although maybe since I've structured my choices as a list of Positions with strings, I couldn't just insert a favorite animal?

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Choose Your Own Adventure!',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Colors.blue.shade50,
      ),
      home: const MyHomePage(title: 'Choose Your Own Adventure!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  List<Position> storyData = [
    // Position(
    //   id: 'A',
    //   script: 'Welcome to my choose your own adventure game! Input your favorite animal!'
    // ),
    Position(
      id: '0',
      script:
          "You are trying to fall asleep one stormy night when you hear a noise behind the closet door across your room. You get up to go investigate. As you get closer, the noise begins to get louder. It sounds like things are breaking behind the doors. Do you...",
      choice1: "1. Open the door and see what's inside.",
      choice2: "2. Run out of your house and drive away.",
    ),
    Position(
      id: '1',
      script:
          "You open the door to see what's inside. There's just a little [insert favorite animal] inside! Do you...",
      choice1:
          "1. Let the [insert favorite animal] go outside in your backyard for the night and then go back to sleep.",
      choice2: "2. Take it to bed with you and cuddle with it.",
    ),
    Position(
      id: '2',
      script:
          "As you drive away, you notice in the distance that a UFO is approaching your house rapidly. Do you...",
      choice1: "1. Drive away from the house and hide in the bushes.",
      choice2: "2. Drive back home, go upstairs, and open your closet door.",
    ),
    Position(
      id: '3',
      script:
          "You wake up and you're not in your bed. You're not even in your house. You find yourself in a prison cell on an alien ship with the [insert favorite animal]. Do you...",
      choice1: "1. Attempt to fight the aliens and overtake the ship",
      choice2:
          "2. Attempt to negotiate with the aliens to let you go back home",
    ),
    Position(
      id: '4',
      script:
          "You open the door slowly and take a peak inside. There's just a little [insert favorite animal] inside! Suddenly, an alien ship takes you up inside the ship at an instant. You find yourself in a prison cell on the alien ship with the [insert favorite animal]. Do you...",
      choice1: "1. Attempt to fight the aliens and overtake the ship",
      choice2:
          "2. Attempt to negotiate with the aliens to let you go back home",
    ),
    Position(
      id: '5',
      script:
          "You decide to escape the prison cell to try and take over the ship. Do you...",
      choice1: "1. Take the [insert favorite animal] with you.",
      choice2: "2. Leave it in the cell",
    ),
    Position(
      id: '6',
      choice1: "Play again?",
      choice2: "You should ;)",
      script:
        "The aliens realize that picking you up was a mistake. They eject you out into space and you die. THE END"),
    Position(
      id: '7',
      choice1: "Play again?",
      choice2: "You should ;)",
      script:
        "You realize that having the [insert favorite animal] with you grants you superhuman powers. You are invincible and are able to take over the ship easily. You now live the rest of your life in possession of an awesome alien ship and a magical [insert favorite animal]. THE END",
    ),
    Position(
      id: '8',
      choice1: "Play again?",
      choice2: "You should ;)",
      script:
        "When you wake up, the [insert favorite animal] is gone and there is a big crater in the ground. You always wonder what happened to it. THE END"),
    Position(
      id: '9',
      choice1: "Play again?",
      choice2: "You should ;)",
      script:
        "While hiding in the bushes, the UFO steals your entire house, only leaving the basement. The insurance companies don't believe you when you say a UFO took your house, and you will always wonder what was in your closet. THE END"),
  ];

  void _doChoice1() {
    setState(() {
      if (_counter == 0) {
        _counter = 1;
        return;
      }
      if (_counter == 1) {
        _counter = 8;
        return;
      }
      if (_counter == 2) {
        _counter = 9;
        return;
      }
      if (_counter == 3) {
        _counter = 5;
        return;
      }
      if (_counter == 4) {
        _counter = 5;
        return;
      }
      if (_counter == 5) {
        _counter = 7;
        return;
      }
      if (_counter == 6) {
        _counter = 0;
        return;
      }
      if (_counter == 7) {
        _counter = 0;
        return;
      }
      if (_counter == 8) {
        _counter = 0;
        return;
      }
      if (_counter == 9) {
        _counter = 0;
        return;
      }
    });
  }

  void _doChoice2() {
    setState(() {
      if (_counter == 0) {
        _counter = 2;
        return;
      }
      if (_counter == 1) {
        _counter = 3;
        return;
      }
      if (_counter == 2) {
        _counter = 4;
        return;
      }
      if (_counter == 3) {
        _counter = 6;
        return;
      }
      if (_counter == 4) {
        _counter = 6;
        return;
      }
      if (_counter == 5) {
        _counter = 6;
        return;
      }
      if (_counter == 6) {
        _counter = 0;
        return;
      }
      if (_counter == 7) {
        _counter = 0;
        return;
      }
      if (_counter == 8) {
        _counter = 0;
        return;
      }
      if (_counter == 9) {
        _counter = 0;
        return;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green.shade200,
                    border: Border.all(
                        color: Colors.green
                            .shade200, // I know this doesn't do anything lol
                        width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    storyData[_counter].script.toString(),
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                color: Colors.green.shade200,
                onPressed: _doChoice1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    storyData[_counter].choice1.toString(),
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                color: Colors.green.shade200,
                onPressed: _doChoice2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    storyData[_counter].choice2.toString(),
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Maybe there is a better way of doing this since we don't show the raised buttons at the end