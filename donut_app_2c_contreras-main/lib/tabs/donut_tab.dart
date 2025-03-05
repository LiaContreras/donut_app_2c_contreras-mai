import 'package:donut_app_2c_contreras/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {

  //Lista de donas
    final List donutsOnSale = [

   // [ donutFlavor, donutPrice, donutColor, imageName ]

   ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],

   ["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],

   ["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png"],

   ["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png"],

];
   DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    //Widget para crearcuadrícula 
    return GridView.builder(
      //Cuántos elementos hay? 
      itemCount: donutsOnSale.length,
      padding: EdgeInsets.all(12),
      //Organiza como se veran los elementos
      //prepa 1. Cómo se organizarán los elementos 
      gridDelegate: // en una fila el eje cruzado es el vertical PREGUNTA DE EXAMEN
      SliverGridDelegateWithFixedCrossAxisCount(
        //Cuántas columnas
        //
        crossAxisCount: 2,

        //Relación de aspecto
        childAspectRatio: 1/1.5,  

      ),
      itemBuilder: (context,index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
        );
        
      } ,
    );
  }
}