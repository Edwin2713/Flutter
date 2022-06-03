
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget  {
  const HomeScreen({Key? key}) : super(key: key);
@override
  Widget build(BuildContext context) {
    const fontSize = TextStyle(fontSize: 30);
    int contador =10;
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 239, 243),
      appBar: AppBar(
        title:  const Text("APP"),
        elevation: 0,
      ),
      body: Center(
        child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
                const Text("PANTALLA DE INICIO", style: fontSize),
                Text('$contador', style: fontSize),
              ],
            ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton:FloatingActionButton(
        
        child: const Icon(Icons.priority_high_sharp),
        onPressed: () {
          
          contador ++;
         },),
        );
    
  }
}
 