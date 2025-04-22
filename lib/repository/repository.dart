import 'package:foodmenu/model/category_model.dart';
import 'package:foodmenu/model/meals_model.dart';

class Repository {
  List<AvailableCategories> getCategories() {
    final List<Map<String, dynamic>> availableCategories = [
      {
        "id": "c1",
        "title": "Italian",
        "color": "purple",
      },
      {
        "id": "c2",
        "title": "Quick & Easy",
        "color": "red",
      },
      {
        "id": "c3",
        "title": "Hamburgers",
        "color": "orange",
      },
      {
        "id": "c4",
        "title": "German",
        "color": "amber",
      },
      {
        "id": "c5",
        "title": "Light & Lovely",
        "color": "blue",
      },
      {
        "id": "c6",
        "title": "Exotic",
        "color": "green",
      },
      {
        "id": "c7",
        "title": "Breakfast",
        "color": "lightBlue",
      },
      {
        "id": "c8",
        "title": "Asian",
        "color": "lightGreen",
      },
      {
        "id": "c9",
        "title": "French",
        "color": "pink",
      },
      {
        "id": "c10",
        "title": "Summer",
        "color": "teal",
      },
    ];

    return availableCategories
        .map((e) => AvailableCategories.fromJson(e))
        .toList();
  }

  List<DummyMeals> getMeals() {
    final List<Map<String, dynamic>> dummyMeals = [
      {
        "id": "m1",
        "categories": ["c1", "c2"],
        "title": "Spaghetti with Tomato Sauce",
        "affordability": "affordable",
        "complexity": "simple",
        "imageUrl":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg",
        "duration": 20,
        "ingredients": [
          "4 Tomatoes",
          "1 Tablespoon of Olive Oil",
          "1 Onion",
          "250g Spaghetti",
          "Spices",
          "Cheese (optional)"
        ],
        "steps": [
          "Cut the tomatoes and the onion into small pieces.",
          "Boil some water - add salt to it once it boils.",
          "Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.",
          "In the meantime, heat up some olive oil and add the cut onion.",
          "After 2 minutes, add the tomato pieces, salt, pepper and your other spices.",
          "The sauce will be done once the spaghetti are.",
          "Feel free to add some cheese on top of the finished dish."
        ],
        "isGlutenFree": false,
        "isVegan": true,
        "isVegetarian": true,
        "isLactoseFree": true
      },
      {
        "id": "m2",
        "categories": ["c2"],
        "title": "Toast Hawaii",
        "affordability": "affordable",
        "complexity": "simple",
        "imageUrl":
            "https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg",
        "duration": 10,
        "ingredients": [
          "1 Slice White Bread",
          "1 Slice Ham",
          "1 Slice Pineapple",
          "1-2 Slices of Cheese",
          "Butter"
        ],
        "steps": [
          "Butter one side of the white bread",
          "Layer ham, the pineapple and cheese on the white bread",
          "Bake the toast for round about 10 minutes in the oven at 200°C"
        ],
        "isGlutenFree": false,
        "isVegan": false,
        "isVegetarian": false,
        "isLactoseFree": false
      },
      {
        "id": "m3",
        "categories": ["c2", "c3"],
        "title": "Classic Hamburger",
        "affordability": "pricey",
        "complexity": "simple",
        "imageUrl":
            "https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg",
        "duration": 45,
        "ingredients": [
          "300g Cattle Hack",
          "1 Tomato",
          "1 Cucumber",
          "1 Onion",
          "Ketchup",
          "2 Burger Buns"
        ],
        "steps": [
          "Form 2 patties",
          "Fry the patties for c. 4 minutes on each side",
          "Quickly fry the buns for c. 1 minute on each side",
          "Brush buns with ketchup",
          "Serve burger with tomato, cucumber and onion"
        ],
        "isGlutenFree": false,
        "isVegan": false,
        "isVegetarian": false,
        "isLactoseFree": true
      },
      {
        "id": "m4",
        "categories": ["c4"],
        "title": "Wiener Schnitzel",
        "affordability": "luxurious",
        "complexity": "challenging",
        "imageUrl":
            "https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg",
        "duration": 60,
        "ingredients": [
          "8 Veal Cutlets",
          "4 Eggs",
          "200g Bread Crumbs",
          "100g Flour",
          "300ml Butter",
          "100g Vegetable Oil",
          "Salt",
          "Lemon Slices"
        ],
        "steps": [
          "Tenderize the veal to about 2–4mm, and salt on both sides.",
          "On a flat plate, stir the eggs briefly with a fork.",
          "Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.",
          "Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.",
          "Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.",
          "Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.",
          "Place the schnitzels on a warmed plate and serve garnished with parsley and slices of lemon."
        ],
        "isGlutenFree": false,
        "isVegan": false,
        "isVegetarian": false,
        "isLactoseFree": false
      },
      {
        "id": "m5",
        "categories": ["c2", "c5", "c10"],
        "title": "Salad with Smoked Salmon",
        "affordability": "luxurious",
        "complexity": "simple",
        "imageUrl":
            "https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg",
        "duration": 15,
        "ingredients": [
          "Arugula",
          "Lamb's Lettuce",
          "Parsley",
          "Fennel",
          "200g Smoked Salmon",
          "Mustard",
          "Balsamic Vinegar",
          "Olive Oil",
          "Salt and Pepper"
        ],
        "steps": [
          "Wash and cut salad and herbs",
          "Dice the salmon",
          "Process mustard, vinegar and olive oil into a dressing",
          "Prepare the salad",
          "Add salmon cubes and dressing"
        ],
        "isGlutenFree": true,
        "isVegan": false,
        "isVegetarian": true,
        "isLactoseFree": true
      },
      {
        "id": "m6",
        "categories": ["c6", "c10"],
        "title": "Delicious Orange Mousse",
        "affordability": "affordable",
        "complexity": "hard",
        "imageUrl":
            "https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg",
        "duration": 240,
        "ingredients": [
          "4 Sheets of Gelatine",
          "150ml Orange Juice",
          "80g Sugar",
          "300g Yoghurt",
          "200g Cream",
          "Orange Peel"
        ],
        "steps": [
          "Dissolve gelatine in pot",
          "Add orange juice and sugar",
          "Take pot off the stove",
          "Add 2 tablespoons of yoghurt",
          "Stir gelatin under remaining yoghurt",
          "Cool everything down in the refrigerator",
          "Whip the cream and lift it under the orange mass",
          "Cool down again for at least 4 hours",
          "Serve with orange peel"
        ],
        "isGlutenFree": true,
        "isVegan": false,
        "isVegetarian": true,
        "isLactoseFree": false
      },
      {
        "id": "m7",
        "categories": ["c7"],
        "title": "Pancakes",
        "affordability": "affordable",
        "complexity": "simple",
        "imageUrl":
            "https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg",
        "duration": 20,
        "ingredients": [
          "1 Cup of Flour",
          "1 Cup of Milk",
          "2 Eggs",
          "1 Tsp of Baking Powder",
          "1 Tsp of Sugar",
          "Butter for frying"
        ],
        "steps": [
          "Mix all ingredients in a bowl",
          "Heat butter in a frying pan",
          "Pour a small amount of dough into the pan",
          "Cook until bubbles appear, then flip and cook the other side",
          "Repeat with the remaining dough"
        ],
        "isGlutenFree": false,
        "isVegan": false,
        "isVegetarian": true,
        "isLactoseFree": false
      },
      {
        "id": "m8",
        "categories": ["c8"],
        "title": "Sushi",
        "affordability": "expensive",
        "complexity": "challenging",
        "imageUrl":
            "https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg",
        "duration": 80,
        "ingredients": [
          "500g Rice",
          "800ml Water",
          "3 Sheets Nori",
          "500g Salmon",
          "1 Avocado",
          "Soy Sauce",
          "Wasabi",
          "Pickled Ginger"
        ],
        "steps": [
          "Rinse rice under cold water and boil with water",
          "Let the rice cool and season with vinegar",
          "Slice salmon and avocado",
          "Lay out nori on bamboo mat, spread rice, add salmon and avocado, roll tightly",
          "Cut rolls into pieces and serve with soy sauce, wasabi, and pickled ginger"
        ],
        "isGlutenFree": true,
        "isVegan": false,
        "isVegetarian": false,
        "isLactoseFree": true
      }
    ];

    return dummyMeals.map((e) => DummyMeals.fromJson(e)).toList();
  }
}
