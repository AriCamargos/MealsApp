import 'package:flutter/material.dart';
import 'package:meals/components/main_drawer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
      ),
      drawer: const MainDrawer(),
      //Aqui foi colocado o Drawer porque na tela de main_drawer não
      // tem como voltar para tela anterior, pois isso iria diminuir cm a performance da aplicação,
      //com muito empilhamento.
      body: const Center(
        child: Text('Configurações'),
      ),
    );
  }
}
