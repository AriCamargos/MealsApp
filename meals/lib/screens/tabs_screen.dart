import 'package:flutter/material.dart';
import 'package:meals/screens/category_screen.dart';
import 'package:meals/screens/favorite_screen.dart';
import '../components/main_drawer.dart';

//Navegação com abas

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  //Variável inteira começando com 0.
  int _selectedScreenIndex = 0;

  //Lista de Widgets.
  final List<Widget> _screens = const [
    CategoriesScreen(),
    FavoriteScreen(),
  ];

  //Lista de String
  final List<String> _titles = const [
    'Lista de Categorias',
    'Meus Favoritos',
  ];

  //Função para alterar a variável inteira criada
  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_selectedScreenIndex]),
      ),
      //Definindo os 2 componentes que irão aparecer nas 2 abas
      body: _screens[_selectedScreenIndex],
      drawer: const MainDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        //Chamo a função no onTap
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        currentIndex: _selectedScreenIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category_rounded),
            label: 'Categorias',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_rounded),
            label: 'Favoritos',
          ),
        ],
      ),
    );
  }
}
