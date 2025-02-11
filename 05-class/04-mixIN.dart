abstract class BaseChocolate {
  bool hasChocolate = true;
}

mixin HasNuts {
  bool hasHazelnuts = true;
  bool hasAlmonds = true;
}

mixin HasRice {
  bool hasRice = true;
}

class ChocolateBar extends BaseChocolate with HasNuts, HasRice {
  List<String> ingredients = [];

 ChocolateBar() {
    if (hasChocolate) ingredients.add('Chocolate');
    if (hasHazelnuts) ingredients.add('Hazelnuts');
    if (hasAlmonds) ingredients.add('Almonds');
    if (hasRice) ingredients.add('Rice');
  }

  List<String> getIngredients() {
    return ingredients;
  }

  void displayIngredients() {
    print('Ingredients: ${ingredients.join(', ')}');
  }
}

abstract class BaseFruitSalad {
  bool hasFruit = true;
}

mixin HasBerries {
  bool hasStrawberries = true;
  bool hasBlueberries = true;
}

mixin HasCitrus {
  bool hasOranges = true;
  bool hasLemons = true;
}

class FruitSalad extends BaseFruitSalad with HasBerries, HasCitrus {
  List<String> ingredients = [];

  FruitSalad() {
    if (hasFruit) ingredients.add('Fruit');
    if (hasStrawberries) ingredients.add('Strawberries');
    if (hasBlueberries) ingredients.add('Blueberries');
    if (hasOranges) ingredients.add('Oranges');
    if (hasLemons) ingredients.add('Lemons');
  }

  List<String> getIngredients() {
    return ingredients;
  }

  void displayIngredients() {
    print('Ingredients: ${ingredients.join(', ')}');
  }
}

void main() {
  var myFruitSalad = FruitSalad();
  myFruitSalad.displayIngredients();
  
  var myChocolate = ChocolateBar();
  myChocolate.displayIngredients();
}
