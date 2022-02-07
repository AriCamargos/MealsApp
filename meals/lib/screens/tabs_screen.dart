// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:meals/screens/category_screen.dart';
import 'package:meals/screens/favorite_screen.dart';
import '../components/main_drawer.dart';
import '../models/meal.dart';

//Navegação com abas

class TabsScreen extends StatefulWidget {
  final List<Meal> favoriteMeals;

  const TabsScreen(this.favoriteMeals);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  //Variável inteira começando com 0.
  int _selectedScreenIndex = 0;

  //Lista de Widgets.
  late List<Widget> _screens;
  //Lista de String
  late List<String> _title;

  @override
  void initState() {
    super.initState();
    _screens = [
      const CategoriesScreen(),
      FavoriteScreen(widget.favoriteMeals),
    ];
    _title = const [
      'Lista de Categorias',
      'Meus Favoritos',
    ];
  }

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
        title: Text(_title[_selectedScreenIndex]),
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
            icon: Icon(Icons.favorite_rounded),
            label: 'Favoritos',
          ),
        ],
      ),
    );
  }
}
