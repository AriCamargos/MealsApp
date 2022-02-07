class Settings {
  bool isGlutenFree;
  bool isLactoseFree;
  bool isVegan;
  bool isVegetarian;

  Settings({
    this.isLactoseFree = false,
    this.isGlutenFree = false,
    this.isVegan = false,
    this.isVegetarian = false,
  });

}
