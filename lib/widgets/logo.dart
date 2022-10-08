import 'package:flutter/material.dart';


class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        cabecera(),
        infoserie(),
        const SizedBox(height: 10),
        botonera(),
        
        
      ],
    );
  }
}

Widget cabecera (){
  return Stack(
          children: [
            Image.network(
              'https://hips.hearstapps.com/es.h-cdn.co/fotoes/images/series-television/the-sinner-serie-critica-jessica-biel-netflix/137683404-1-esl-ES/The-Sinner-es-la-proxima-serie-que-no-podras-dejar-de-maratonear.jpg',
              height: 350,
              fit: BoxFit.cover,
              ),

            Container(
              width: double.infinity,
              height: 350,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black38,
                    Colors.black
                  ]
                )
              ),
            ),

            const SafeArea(child: NavBar()),
            
          ],
        );
}

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children:  [
        Image.asset('assets/img/Netflix-Logo-2006.png', width: 50),
    
        const Text('Programas', style: TextStyle(color: Colors.white, fontSize: 16)),
    
        const Text('Peliculas', style: TextStyle(color: Colors.white, fontSize: 16)),
    
        const Text('Mi Lista', style: TextStyle(color: Colors.white, fontSize: 16))
    
      ],
    );
  }
}

Widget infoserie(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      Text('Drama', style: TextStyle(color: Colors.white, fontSize: 12)),
      SizedBox(width: 5),
      Icon(Icons.fiber_manual_record, color: Colors.red, size: 5),
      SizedBox(width: 5),
      Text('Serie', style: TextStyle(color: Colors.white, fontSize: 12)),
      SizedBox(width: 5),
      Icon(Icons.fiber_manual_record, color: Colors.red, size: 5),
      SizedBox(width: 5),
      Text('Suspenso', style: TextStyle(color: Colors.white, fontSize: 12)),
      SizedBox(width: 5),
      Icon(Icons.fiber_manual_record, color: Colors.red, size: 5),
      SizedBox(width: 5),
      Text('Acción', style: TextStyle(color: Colors.white, fontSize: 12)),
    ],
  );
}

Widget botonera(){
  return Row(

    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

    children:  [
      
      Column(
        children: const [
           Icon(Icons.check, color: Colors.white),
           SizedBox(height: 2),
           Text('Mi Lista', style: TextStyle(color: Colors.white, fontSize: 10))
        ],
      ),

      TextButton(
        style: TextButton.styleFrom(backgroundColor: Colors.white),
        onPressed: null, 
        child: Row(
          children: const [
            Icon(Icons.play_arrow, color: Colors.black),
            SizedBox(width: 3),
            Text('Reproducir', style: TextStyle(color: Colors.black))
          ],
        )         
      ),

      Column(
        children: const [
           Icon(Icons.info_outline, color: Colors.white),
           SizedBox(height: 2),
           Text('Información', style: TextStyle(color: Colors.white, fontSize: 10))
        ],
      ),
    ],
  );
}