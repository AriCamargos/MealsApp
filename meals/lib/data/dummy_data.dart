import 'package:flutter/material.dart';
import '../models/meal.dart';

import '../models/category.dart';

// ignore: constant_identifier_names
const DUMMY_CATEGORIES = [
  Category(
    id: 'c1',
    title: 'Italiano',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Rápido & Fácil',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Hamburgers',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'Alemã',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Leve & Saudável',
    color: Colors.indigo,
  ),
  Category(
    id: 'c6',
    title: 'Exótica',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Café da Manhã',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Asiática',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'Francesa',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Verão',
    color: Colors.teal,
  ),
];

// ignore: constant_identifier_names
const DUMMY_MEALS = [
  Meal(
    id: 'm1',
    categories: ['c1', 'c2'],
    title: 'Macarrão a Bolonhesa',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    ingredients: [
      '1 cebola',
      '1 colher de sopa de azeite de oliva',
      '5 azeitonas verdes picadas',
      '2 latas de molho de tomate pronto',
      '2 ubos de Caldo de carne ou legumes dissolvidos em 100ml de água',
      '1 cenoura',
      '2 tomates picados',
      '500g de Macarrão',
      '500g de Carne Moída',
    ],
    steps: [
      ' Pique a cebola, refogue por alguns minutos em uma panela com óleo quente até dourar a cebola, mexendo para não queimar.',
      'Misture a carne moída, deixe cozinhar por alguns minutos.',
      'Adicione o caldo, o molho, os tomates picados, a cenoura cortada ao meio e mexa bem, deixe cozinhar por aproximadamente 40minutos em fogo baixo com a panela semi tampada. Descarte a cenoura depois que o molho estiver pronto.',
      'Prepare o macarrão, misture o molho ao macarrão e sirva.',
      'Acompanhamento Sugerido: Queijo Ralado',
    ],
    duration: 20,
    isGlutenFree: false,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
    complexity: Complexity.simple,
    cost: Cost.cheap,
  ),
  Meal(
    id: 'm2',
    categories: ['c2'],
    title: 'Toarrada do Hawaii',
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    ingredients: [
      '1 Fatia de Pão Branco',
      '1 Fatia de Presunto',
      '1 Fatia de Abacaxi',
      '1-2 Fatias de Queijo',
      'Manteiga',
    ],
    steps: [
      'Manteiga um lado do pão branco',
      'Coloque o presunto, o ananás e o queijo no pão branco',
      'Asse a torrada por cerca de 10 minutos no forno a 200°C',
    ],
    duration: 10,
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: false,
    complexity: Complexity.simple,
    cost: Cost.cheap,
  ),
  Meal(
    id: 'm3',
    categories: ['c2', 'c3'],
    title: 'Hambúrguer Clássico',
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    ingredients: [
      '300g de carne',
      '1 Tomate',
      '1 pepino',
      '1 Cebola',
      'Ketchup',
      '2 pães de hambúrguer',
    ],
    steps: [
      'Faça 2 rissóis',
      'Frite os rissóis 4 minutos de cada lado',
      'Frite rapidamente os pães 1 minuto de cada lado',
      'Pães de hambúrguer com ketchup',
      'Servir hambúrguer com tomate, pepino e cebola'
    ],
    duration: 45,
    isGlutenFree: false,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: false,
    complexity: Complexity.simple,
    cost: Cost.fair,
  ),
  Meal(
    id: 'm4',
    categories: ['c4'],
    title: 'Wiener Schnitzel',
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    ingredients: [
      '8 Costeletas de Vitela',
      '4 ovos',
      '200g de migalhas de pão',
      '100g Farinha',
      '300ml Manteiga',
      '100g de óleo vegetal',
      'Sal',
      'fatias de limão',
    ],
    steps: [
      'Amacie a vitela a cerca de 2–4 min e salgue em ambos os lados.',
      'Em um prato raso, mexa os ovos rapidamente com um garfo.',
      'Revestir levemente as costeletas na farinha, em seguida, mergulhar no ovo e, finalmente, empanar na farinha de rosca.',
      'Aqueça a manteiga e o óleo em uma panela grande (deixe a gordura ficar bem quente) e frite os schnitzels até dourar dos dois lados.',
      'Certifique-se de jogar a panela regularmente para que os schnitzels fiquem cercados de óleo e a migalha fique fofa',
      'Retire e escorra em papel de cozinha. Frite a salsa no óleo restante e escorra.',
      'Coloque os schnitzels em um prato aquecido e sirva guarnecido com salsa e rodelas de limão.',
    ],
    duration: 60,
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: false,
    complexity: Complexity.medium,
    cost: Cost.expansive,
  ),
  Meal(
    id: 'm5',
    categories: ['c2', 'c5', 'c10'],
    title: 'Salada com salmão defumado',
    cost: Cost.expansive,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      'Rúcula',
      'Alface-de-cordeiro',
      'Salsinha',
      'Funcho',
      '200g de Salmão Defumado',
      'Mostarda',
      'Vinagre balsâmico',
      'Azeite',
      'Sal e pimenta'
    ],
    steps: [
      'Lave e corte a salada e as ervas',
      'Corte o salmão',
      'Processar mostarda, vinagre e azeite em uma sobremesa',
      'Prepare a salada',
      'Adicione cubos de salmão e molho',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: ['c6', 'c10'],
    title: 'Delicioso Mousse de Laranja',
    cost: Cost.cheap,
    complexity: Complexity.difficult,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '4 Folhas de Gelatina',
      '150ml de suco de laranja',
      '80g Açúcar',
      '300g Iogurte',
      '200g Creme',
      'Casca de laranja',
    ],
    steps: [
      'Dissolver a gelatina no pote',
      'Adicionar sumo de laranja e açúcar',
      'Tire a panela do fogão',
      'Adicione 2 colheres de sopa de iogurte',
      'Mexa a gelatina sob o iogurte restante',
      'Resfrie tudo na geladeira',
      'Bata o creme e levante-o sob a massa de laranja',
      'Resfrie novamente por pelo menos 4 horas',
      'Sir com casca de laranja',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: ['c7'],
    title: 'Panquecas',
    cost: Cost.cheap,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 xícaras de farinha de trigo',
      '3 1/2 colheres de chá de fermento em pó',
      '1 colher de chá de sal',
      '1 colher de sopa de açúcar branco',
      '1 1/4 xícaras de leite',
      '1 ovo',
      '3 colheres de sopa de manteiga derretida',
    ],
    steps: [
      'Em uma tigela grande, peneire a farinha, o fermento, o sal e o açúcar.',
      'Faça uma cova no centro e despeje o leite, o ovo e a manteiga derretida; misture até ficar homogêneo.',
      'Aqueça uma chapa ou frigideira levemente untada com óleo em fogo médio alto.',
      'Despeje ou coloque a massa na chapa, usando aproximadamente 1/4 de xícara para cada panqueca. Marrom em ambos os lados e servir quente.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: ['c8'],
    title: 'Sopa Indiana de Frango',
    cost: Cost.fair,
    complexity: Complexity.medium,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      '4 Peitos de Frango',
      '1 Cebola',
      '2 dentes de alho',
      '1 pedaço de gengibre',
      '4 colheres de sopa de amêndoas',
      '1 colher de chá de pimenta caiena',
      '500ml de Leite de Coco',
    ],
    steps: [
      'Corte e frite o peito de frango',
      'Processar cebola, alho e gengibre em pasta e refogar tudo',
      'Adicione especiarias e frite',
      'Adicione o peito de frango + 250ml de água e cozinhe tudo por 10 minutos',
      'Adicione leite de coco',
      'Servir com arroz'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: ['c9'],
    title: 'Macarons',
    cost: Cost.cheap,
    complexity: Complexity.difficult,
    imageUrl:
        'https://img.itdg.com.br/tdg/images/blog/uploads/2019/05/macarons-1.jpg',
    duration: 45,
    ingredients: [
      '36 g de açúcar cristal',
      '36 g de clara de ovo',
      '36 g de açúcar de confeiteiro',
      '42 g de farinha de amêndoa',
    ],
    steps: [
      'Peneire a farinha de amêndoa com o açúcar de confeiteiro duas vezes',
      'Bata as claras em neve em velocidade média',
      'Coloque metade do açúcar cristal e bata mais um pouco',
      'Coloque o restante e bata por 8 minutos',
      'Coloque o corante desejado para dar a cor de seu macaron por mais 1 minuto',
      'Acrescente a farinha de amêndoa e depois coloque num saquinho plástico',
      'Faca um pique na ponta do saquinho',
      'Em uma forma coloque papel-manteiga e faca pequenas bolinhas uma afastada da outra',
      'Deixe secar por 20 a 30 minutos',
      'Asse em forno 140°C, cerca de 13 minutos.',
      'Deixe de 1 a 2 minutos no forno desligado.',
      'Depois desenforme os disquinhos juntando 2 a 2.',
      'Recheie com doce de leite ou qualquer outro creme.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: ['c2', 'c5', 'c10'],
    title: 'Salada de Aspargos com Tomate Cereja',
    cost: Cost.expansive,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      'Aspargos Brancos e Verdes',
      '30g Pinhões',
      '300g Tomate Cereja',
      'Salada',
      'Sal, Pimenta e Azeite',
    ],
    steps: [
      'Lave, descasque e corte os espargos',
      'Cozinhe em água salgada',
      'Sal e pimenta os aspargos',
      'Torrar os pinhões',
      'Corte os tomates pela metade',
      'Misture com espargos, salada e molho',
      'Sirva com Baguete'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];
