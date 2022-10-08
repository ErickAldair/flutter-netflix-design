import 'package:flutter/material.dart';


class ItemRedondeado extends StatelessWidget {
  const ItemRedondeado({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        const SizedBox(width: 10),
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(110),
                border: Border.all(
                  color: Colors.yellow,
                  width: 2,
                )
              ),
              child: ClipOval(
                child: Image.network(
                  'https://www.mubis.es/media/users/7286/120071/posible-portada-de-vengadores-la-era-de-ultron-original.jpg',
                  fit: BoxFit.cover,
                  )
              ),
            ),
            const Text('AVENGERS', style: (TextStyle(fontSize: 20, color: Colors.white, letterSpacing: 3)))
          ],
        ),
        const SizedBox(width: 10)
      ],
    );
  }
}