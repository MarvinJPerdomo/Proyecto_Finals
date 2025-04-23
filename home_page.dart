import 'package:flutter/material.dart';
//import 'package:recetas/src/api/api.dart';
import 'package:recetas/src/views/git_page.dart';
//import 'package:recetas/src/views/login.dart';
//import 'package:recetas/src/widgets/item_list.dart';
import 'package:go_router/go_router.dart';
import 'package:recetas/src/views/favoritos.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  late PageController pc;
  final List<String> routes = ['/recetas', '/favoritos', '/'];
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    context.go(routes[index]);
  }

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: selectedIndex);
  }

  setPaginaActual(value) {
    setState(() {
      selectedIndex = value;
    });
  }

  final colores = [Colors.blueGrey, Colors.deepOrange, Colors.green];
  //final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<FavoriteProvider>(context);

    return Scaffold(
        extendBody: true,
        body: PageView(
          controller: pc,
          onPageChanged: setPaginaActual,
          children: [
            GitPage(),
            //PrincipalPage(),
            Favoritospage(),
            //LoginPage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: const Color.fromARGB(255, 245, 187, 116),
            selectedItemColor: colores[selectedIndex],
            currentIndex: selectedIndex,
            onTap: onItemTapped,
            items: [
              //home_outlined
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  activeIcon: Icon(Icons.home),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border),
                  activeIcon: Icon(Icons.favorite),
                  label: "Favoritos"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined),
                  activeIcon: Icon(Icons.account_circle),
                  label: "Registro")
            ]));
  }
}
