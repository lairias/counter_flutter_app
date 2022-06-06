
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextStyle fontSize30 = const TextStyle(fontSize: 30);
    return   Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Center(
          child: Text('Contador de pasos'),
        ),
      ),
      body:  Center(
        child: Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  <Widget>[
              Text(
                'Número de clicks:', style: fontSize30),
             const Text(
                '0',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
            ],
          ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const  FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: null

      ),
    );
  }

}