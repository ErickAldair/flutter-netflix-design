import 'package:flutter/material.dart';

class ItemImg extends StatelessWidget{
  const ItemImg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Row(
      children: [
        const SizedBox(width: 10),
        Image.network(
          'https://conocedores.com/wp-content/uploads/2022/04/Spiderman-No-Way-Home-49.jpg',
          width: 120,
          height: 200,
          fit: BoxFit.cover,
          
        ),
      ],
    );
  }

}