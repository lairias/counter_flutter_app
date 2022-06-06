import 'package:flutter/material.dart';

class CustomActionCount extends StatelessWidget {
  final Function incrementCounterFn;
  final Function decrementCounterFn;
  final Function resetCounterFn;
  const CustomActionCount({
    Key? key,
   required this.incrementCounterFn,
   required this.decrementCounterFn,
   required this.resetCounterFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
       
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.add),
          // onPressed: () => setState(() {counter++;})
          onPressed : () => incrementCounterFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.refresh),
        //  onPressed: () =>setState(() {counter = 0;})
        onPressed : () => resetCounterFn(),

        ),
       
         FloatingActionButton(
          child: const Icon(Icons.remove),
        //  onPressed: () =>setState(() {counter--;})
        onPressed : () => decrementCounterFn(),

        ),
      ],
    );
  }
}