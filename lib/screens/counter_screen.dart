
import 'package:flutter/material.dart';

import 'custom_action_count.dart';
class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    int counter = 0;
    void incrementCounter() {
        counter++;
      setState((){});
    }
    void decrementCounter() {
        counter--;
      setState((){});
    }
    void resetCounter() {
        counter=0;
      setState((){});
    }
  @override
  Widget build(BuildContext context) {
    TextStyle fontSize30 = const TextStyle(fontSize: 30);
    return   Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Center(
          child: Text('Contador'),
        ),
      ),
      body:  Center(
        child: Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [
              Text(
                'Número de clicks:', style: fontSize30),
              Text(
                '$counter',
                style: const TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
            ],
          ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:  CustomActionCount(
        incrementCounterFn: incrementCounter ,
        decrementCounterFn: decrementCounter ,
        resetCounterFn: resetCounter ,
      ),
    );
  }
}

