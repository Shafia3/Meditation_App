class Meal {
  final String mealTime,
      name,
      imagePath,
      timeTaken,
      kiloCaloriesBurnt,
      preparation;
  final List ingredient;

  Meal({
    required this.preparation,
    required this.ingredient,
    required this.imagePath,
    required this.kiloCaloriesBurnt,
    required this.mealTime,
    required this.name,
    required this.timeTaken,
  });
}

final meals = [
  Meal(
      mealTime: "Breakfast",
      imagePath: "assets/fruit.jpeg",
      name: "Fruit Granola",
      timeTaken: "10",
      kiloCaloriesBurnt: "271",
      ingredient: [
        "5 cups old-fashioned oats",
        "1 cup sliced almonds",
        "1/2 cup sunflower kernels",
        "1/2 cup ground flaxseed",
        "1/2 cup packed brown sugar",
        "1/4 cup maple syrup",
        "1/4 cup honey",
        "2 tablespoons canola oil",
        "1/2 teaspoon salt",
        "1/2 teaspoon ground cinnamon",
        "1 teaspoon vanilla extract",
        "1/2 cup dried cranberries",
        "1/2 cup dried banana chips",
        "1/2 cup dried apricots, halved",
      ],
      preparation:
          "In a large bowl, combine the oats, almonds, sunflower kernels and flax. In a small saucepan, combine the brown sugar, maple syrup, honey, oil, salt and cinnamon. Cook and stir over medium heat for 2-3 minutes or until brown sugar is dissolved and mixture is heated through. Remove from the heat; stir in vanilla. Pour over oat mixture and toss to coat."),
  Meal(
      mealTime: "Dinner",
      imagePath: "assets/pasta.jpeg",
      name: " Pesto Pasta",
      timeTaken: "16",
      kiloCaloriesBurnt: "160",
      ingredient: [
        "1 (16 ounce) package pasta ",
        "2 tablespoons olive oil",
        "½ cup chopped onion",
        " 2 ½ tablespoons pesto ",
        "salt to taste",
      ],
      preparation:
          "It will thin out the pesto so it coats everything nicely and creates a glossy pesto sauce that coats every bit of pasta. The starch in the water emulsifies with the pesto, which simply means the fat in the pesto + starch in the water thickens. Just like when you shake up salad dressings – same thing."),
  Meal(
      mealTime: "Snack",
      imagePath: "assets/keto.webp",
      name: " Keto Snack",
      timeTaken: "10",
      kiloCaloriesBurnt: "414",
      ingredient: [
        "Baked Buffalo Wings",
        "Chicken Bacon Asparagus Twists",
        "Keto pancakes",
        "Keto nuts",
        "Keto Peanut Butter Cookies",
        "Smoked Trout Spread",
      ],
      preparation:
          "Creamy, smoky, and bright, this dip is a sure-fire winner whenever you serve it. It's also super easy: though it's often made in a food processor, we found it required less cleanup to flake the fish by hand before stirring it into the softened cream cheese. Win! Transfer to a 15x10x1-in. baking pan coated with cooking spray. Bake at 350° for 20-25 minutes or until golden brown, stirring every 8 minutes. Cool completely on a wire rack. Stir in dried fruits. Store in an airtight container.Health tip: Granola typically has healthy whole grains and nuts, but added sugar and sweetened dried fruit, too. Eat this calorie-dense cereal in relatively small portion sizes."),
];
