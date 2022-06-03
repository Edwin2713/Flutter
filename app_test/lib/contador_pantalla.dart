
import 'package:flutter/material.dart';

class ContadorPantalla extends StatefulWidget  {
  const ContadorPantalla({Key? key}) : super(key: key);

  @override
  State<ContadorPantalla> createState() => _ContadorPantallaState();
}

class _ContadorPantallaState extends State<ContadorPantalla> {

  int contador =10;

  void increase(){
    contador++;
    setState(() { });
  }
  void decrease(){
    contador--;
    setState(() { });
  }
  void reset(){
    contador=0;
    setState(() { });
  }

@override
  Widget build(BuildContext context) {
    const fontSize = TextStyle(fontSize: 30);
    
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 239, 243),
      
      appBar: AppBar(
        title:  const Text(" APP Contador", textAlign: TextAlign.right,),
        elevation: 0,
      ),
      body: Center(
        child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
                const Text("Numero de Clicks", style: fontSize),
                Text('$contador', style: fontSize),
              ],
            ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ControlButtons(
        increasefn: increase,
        decreasefn: decrease,
        resetfn: reset,
      ),
        );
    
  }
}

class ControlButtons extends StatelessWidget {

  final Function increasefn;
  final Function decreasefn;
  final Function resetfn;


  const ControlButtons({
    Key? key, 
    required this.increasefn, 
    required this.decreasefn, 
    required this.resetfn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      
      children: [
        
           FloatingActionButton(            
          child: const Icon(Icons.exposure_minus_1_rounded),
          onPressed: () => decreasefn()),             
           FloatingActionButton(            
          child: const Icon(Icons.exposure_zero_rounded),
          onPressed: () => resetfn()),             
           FloatingActionButton(            
          child: const Icon(Icons.plus_one_rounded),
          onPressed: () => increasefn()),
      ],
    );
  }
}
 