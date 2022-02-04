import 'package:flutter/material.dart';
import 'package:meals/utils/app_routes.dart';
import '../models/meal.dart';

//Representando o Item de uma refeição
class MealItem extends StatelessWidget {
  final Meal meal;
  // ignore: use_key_in_widget_constructors
  const MealItem(this.meal);

  //Função
  void _selectMeal(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRoutes.MEAL_DETAIL,
      arguments: meal,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //Passando uma referência para a função.
      onTap: () => _selectMeal(context),
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.all(10),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(children: [
          Stack(
            //Pra colocar algo em cima da imagem.
            children: [
              ClipRRect(
                //Deixar as bordar arredondadas
                borderRadius: const BorderRadius.only(
                    //Bordas apenas superiores
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: Image.network(
                  meal.imageUrl,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                //Widget acompanha a Stack as posições do que foi colocar acima da imagem em Stack
                bottom: 20,
                right: 10,
                child: Container(
                  //Container atrás do nome dos hamburgueres
                  width: 300,
                  color: Colors.black54,
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 20,
                  ),
                  child: Text(
                    meal.title,
                    style: const TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                    ),
                    softWrap: true, //Caso precise de quebra de linha
                    overflow: TextOverflow
                        .fade, //Se estourar o texto na tela, fica meio transparente
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    const Icon(Icons.schedule_rounded),
                    const SizedBox(width: 6),
                    Text('${meal.duration} min'),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.work_rounded),
                    const SizedBox(width: 6),
                    Text(meal.complexityText),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.attach_money_rounded),
                    const SizedBox(width: 6),
                    Text(meal.costText),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
