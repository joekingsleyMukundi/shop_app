enum Complexity {
  Simple,
  Challenging,
  Hard,
}

enum Affordability { Affordable, Pricey, Luxurious }

class Meal {
  final id;
  final categories;
  final title;
  final imageUrl;
  final ingredients;
  final steps;
  final duration;
  final complexity;
  final affordability;
  final isGlutenFree;
  final isLactoseFree;
  final isVegan;
  final isVegetarian;
  const Meal(
      {this.id,
      this.categories,
      this.title,
      this.imageUrl,
      this.ingredients,
      this.steps,
      this.duration,
      this.complexity,
      this.affordability,
      this.isGlutenFree,
      this.isLactoseFree,
      this.isVegan,
      this.isVegetarian});
}
