import 'package:flutter/material.dart';
import 'package:flutter_application_netflix/widgets/item_img.dart';
import 'package:flutter_application_netflix/widgets/item_redondeado.dart';
import 'package:flutter_application_netflix/widgets/logo.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body:  ListView(
        children:  [
          const Logo(),
          listahorizontal('Avances', const  ItemRedondeado(), 5),
          const SizedBox(height: 10),
          listahorizontal('Programas sobre viajes', const  ItemImg(), 5),
          const SizedBox(height: 10),
          listahorizontal('Tendencia', const  ItemImg(), 5),
          const SizedBox(height: 10),
          listahorizontal('Mi Lista', const  ItemImg(), 5),
         // const ItemImg()

        ],
      ),
      bottomNavigationBar: navInferior(),
   );
  }


  BottomNavigationBar navInferior(){
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white30,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
        BottomNavigationBarItem(icon: Icon(Icons.ac_unit_sharp), label: 'Destacado')
      ]
    ); 
  }

  Widget listahorizontal(String titulo, Widget item, int cantidad){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

         Padding(
          padding:  const EdgeInsets.all(12.0),
          child:  Text(
            titulo, 
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20
            )),
        ),

        Container(
          height: 110,
          child: ListView.builder(
            itemCount: cantidad,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => item,
            ),
        )

      ],
    );
  }
}