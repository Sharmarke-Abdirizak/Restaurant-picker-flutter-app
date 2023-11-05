import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: RestaurantPicker(),
  ));
}

class RestaurantPicker extends StatefulWidget {
  const RestaurantPicker({super.key});

  @override
  State<RestaurantPicker> createState() => _RestaurantPickerState();
}

class _RestaurantPickerState extends State<RestaurantPicker> {
  List<String> restaurants = [
    '',
    ' Parallel 37',
    'Starbelly',
    'Brass Tacks',
    'Lord Stanley',
    'Top of the Mark',
    'Pier 23',
    'Plumed Horse',
    'Everest',
    'The Aviary',
    'Rebar',
    'Proxi',
    'The Rosebud',
    'The Signature Room',
    'Goosefoot'
        'Catch 35',
    'Gemini',
    'Burger & Beer Joint',
    'Catch of the Day',
    'CRUST',
    'Daily Grill',
    'Full Moon',
    'Garage Kitchen + Bar',
    'Grubstake',
    'Harvest Beat',
    'Hot & Crusty',
    'King and Queen ',
    'Lazy Bear',
    'Mad for Chicken',
    'Nightbird',
    'Outlier',
    'Rusty Pelican'
        'Sea Spice',
    'Stateside',
    'The Capital Grille',
    'The Deck',
    'The Local Eatery',
    'The Red Door',
    'Tower 23 Hotel',
    'Waterbar Restaurant',
    'Wise Sons',
  ];

  dynamic currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant Picker App'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Which Restaurant Do You Wanna Eat ?',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 20, letterSpacing: 1),
            ),
            SizedBox(height: 20),
            Text(
              restaurants[currentIndex],
              style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber.shade300,
                  foregroundColor: Colors.blueGrey,
                  textStyle: TextStyle(letterSpacing: 2)),
              onPressed: () {
                final index = Random().nextInt(restaurants.length);
                setState(() {
                  currentIndex = index;
                });
              },
              child: Text(
                'Pick a Restaurant',
              ),
            )
          ],
        ),
      ),
    );
  }
}
