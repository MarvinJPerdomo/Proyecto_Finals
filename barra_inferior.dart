List<Map<String, dynamic>> recetasFavoritas = [];

/*import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:recetas/src/views/favoritos.dart';
import 'package:recetas/src/views/home_page.dart';
import 'package:recetas/src/views/login.dart';

class BarraInferior extends StatefulWidget {
  const BarraInferior({super.key});

  @override
  State<BarraInferior> createState() => _BarraInferiosState();
}

class _BarraInferiosState extends State<BarraInferior> {
  int selectedIndex = 0;
  final screens = [HomePage(), Favorito(), LoginPage()];
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  //final colores = [Colors.blueGrey, Colors.deepOrange, Colors.green];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      //backgroundColor: Colors.tealAccent,
      body: screens[selectedIndex],
      bottomNavigationBar: Container(
        //margin: const EdgeInsets.only(bottom: 10),
        child: CurvedNavigationBar(
          key: navigationKey,
          color: const Color.fromARGB(255, 246, 244, 103),
          backgroundColor: Colors.transparent,
          height: 60,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),
          index: selectedIndex,
          items: <Widget>[
            _builNavItem(Icons.home, selectedIndex == 0),
            _builNavItem2(Icons.favorite, selectedIndex == 1),
            _builNavItem3(Icons.account_circle, selectedIndex == 2),
          ],
          // buttonBackgroundColor: Colors.brown,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
        ),
      ),
    );
  }

  Widget _builNavItem(IconData icon, bool selectedIndex) {
    return Icon(Icons.home,
        color: selectedIndex
            ? const Color.fromARGB(255, 72, 79, 219)
            : Colors.blueGrey);
  }

  Widget _builNavItem2(IconData icon, bool selectedIndex) {
    return Icon(Icons.favorite,
        color: selectedIndex
            ? const Color.fromARGB(255, 231, 56, 56)
            : Colors.blueGrey);
  }

  Widget _builNavItem3(IconData icon, bool selectedIndex) {
    return Icon(Icons.account_circle,
        color: selectedIndex ? Colors.green : Colors.blueGrey);
  }
}
*/
