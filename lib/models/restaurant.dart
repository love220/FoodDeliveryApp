import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:fooddelapp/models/cart_item.dart';
import 'package:fooddelapp/models/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  // List of food menu

  final List<Food> _menu = [
    // burgers
    Food(
      name: "Classic burger",
      description: "Simple burger with a potato patty",
      imagePath: "lib/images/burgers/allo_burger.jpg",
      price: 0.55,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra veggies", price: 1.22),
        Addon(name: "Extra patty", price: 1.28),
        Addon(name: "Extra cheese", price: 2.66),
      ],
    ),
    Food(
      name: "Cleese burger",
      description: "Cheese burger with a potato patty",
      imagePath: "lib/images/burgers/cheese_burger.jpg",
      price: 0.55,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra veggies", price: 1.22),
        Addon(name: "Extra patty", price: 1.28),
        Addon(name: "Extra cheese", price: 2.66),
      ],
    ),
    Food(
      name: "Fries burger",
      description: "Fries burger with a potato patty, loaded veggies",
      imagePath: "lib/images/burgers/fries_burger.jpg",
      price: 0.55,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra veggies", price: 1.22),
        Addon(name: "Extra patty", price: 1.28),
        Addon(name: "Extra cheese", price: 2.66),
      ],
    ),
    Food(
      name: "Jalepino burger",
      description: "Jalepino burger with a fruits and sweet patties",
      imagePath: "lib/images/burgers/jalepino_burger.jpg",
      price: 0.55,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra veggies", price: 1.22),
        Addon(name: "Extra patty", price: 1.28),
        Addon(name: "Extra cheese", price: 2.66),
      ],
    ),
    Food(
      name: "Veg burger",
      description:
          "Simple burger with a potato patty, cheese, veggies and fruits",
      imagePath: "lib/images/burgers/veg_burger.jpg",
      price: 0.55,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra veggies", price: 1.22),
        Addon(name: "Extra patty", price: 1.28),
        Addon(name: "Extra cheese", price: 2.66),
      ],
    ),

    // Salads

    Food(
      name: "Fruit Salad",
      description: "Simple Salad with veggies",
      imagePath: "lib/images/salads/fruit_sal.jpg",
      price: 0.55,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra veggies", price: 1.22),
        Addon(name: "Extra fruits", price: 1.28),
        Addon(name: "Extra salt", price: 2.66),
      ],
    ),
    Food(
      name: "Mix Salad",
      description: "Simple Salad with veggies",
      imagePath: "lib/images/salads/mix_sal.jpg",
      price: 0.55,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra veggies", price: 1.22),
        Addon(name: "Extra fruits", price: 1.28),
        Addon(name: "Extra salt", price: 2.66),
      ],
    ),
    Food(
      name: "Mushroom Salad",
      description: "Simple Salad with veggies",
      imagePath: "lib/images/salads/musroom_sal.jpg",
      price: 0.55,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra veggies", price: 1.22),
        Addon(name: "Extra mushrooms", price: 1.28),
        Addon(name: "Extra salt", price: 2.66),
      ],
    ),
    Food(
      name: "Pine Salad",
      description: "Simple Salad with veggies",
      imagePath: "lib/images/salads/pine_sal.jpg",
      price: 0.55,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra veggies", price: 1.22),
        Addon(name: "Extra pines", price: 1.28),
        Addon(name: "Extra salt", price: 2.66),
      ],
    ),
    Food(
      name: "Protein Salad",
      description: "Simple Salad with veggies",
      imagePath: "lib/images/salads/protein_sal.jpg",
      price: 0.55,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra veggies", price: 1.22),
        Addon(name: "Extra whey", price: 1.28),
        Addon(name: "Extra salt", price: 2.66),
      ],
    ),

    // drinks

    Food(
      name: "Cold beer",
      description: "Simple cold beer",
      imagePath: "lib/images/drinks/cold_beer.jpg",
      price: 0.55,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra veggies", price: 1.22),
        Addon(name: "Extra whey", price: 1.28),
        Addon(name: "Extra salt", price: 2.66),
      ],
    ),
    Food(
      name: "Pine apple drink",
      description: "Simple cold beer",
      imagePath: "lib/images/drinks/pineapple_drink.jpg",
      price: 0.55,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra veggies", price: 1.22),
        Addon(name: "Extra whey", price: 1.28),
        Addon(name: "Extra salt", price: 2.66),
      ],
    ),
    Food(
      name: "Cock tail",
      description: "Simple cold beer",
      imagePath: "lib/images/drinks/fruit_tail.jpg",
      price: 0.55,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra veggies", price: 1.22),
        Addon(name: "Extra whey", price: 1.28),
        Addon(name: "Extra salt", price: 2.66),
      ],
    ),
    Food(
      name: "Grape drink",
      description: "Simple cold beer",
      imagePath: "lib/images/drinks/grape_drink.jpg",
      price: 0.55,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra veggies", price: 1.22),
        Addon(name: "Extra whey", price: 1.28),
        Addon(name: "Extra salt", price: 2.66),
      ],
    ),
    Food(
      name: "Mix Drink",
      description: "Simple cold beer",
      imagePath: "lib/images/drinks/mix_drink.jpg",
      price: 0.55,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra veggies", price: 1.22),
        Addon(name: "Extra whey", price: 1.28),
        Addon(name: "Extra salt", price: 2.66),
      ],
    ),

    // Desserts

    Food(
      name: "Berry roles",
      description: "Simple bery cake",
      imagePath: "lib/images/desserts/berry_roles.jpg",
      price: 0.55,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra veggies", price: 1.22),
        Addon(name: "Extra whey", price: 1.28),
        Addon(name: "Extra salt", price: 2.66),
      ],
    ),
    Food(
      name: "Choco cup",
      description: "Simple bery cake",
      imagePath: "lib/images/desserts/choco_cup.jpg",
      price: 0.55,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra veggies", price: 1.22),
        Addon(name: "Extra whey", price: 1.28),
        Addon(name: "Extra salt", price: 2.66),
      ],
    ),
    Food(
      name: "Grape Pie",
      description: "Simple bery cake",
      imagePath: "lib/images/desserts/grape_pie.jpg",
      price: 0.55,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra veggies", price: 1.22),
        Addon(name: "Extra whey", price: 1.28),
        Addon(name: "Extra salt", price: 2.66),
      ],
    ),
    Food(
      name: "Ice Choco",
      description: "Simple bery cake",
      imagePath: "lib/images/desserts/ice_choco.jpg",
      price: 0.55,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra veggies", price: 1.22),
        Addon(name: "Extra whey", price: 1.28),
        Addon(name: "Extra salt", price: 2.66),
      ],
    ),
    Food(
      name: "Waffe Cakes",
      description: "Simple bery cake",
      imagePath: "lib/images/desserts/waffe_cakes.jpg",
      price: 0.55,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra veggies", price: 1.22),
        Addon(name: "Extra whey", price: 1.28),
        Addon(name: "Extra salt", price: 2.66),
      ],
    ),

    // sides

    Food(
      name: "Combo Sides",
      description: "Burger X Fries",
      imagePath: "lib/images/sides/combo_side.jpg",
      price: 0.55,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra veggies", price: 1.22),
        Addon(name: "Extra whey", price: 1.28),
        Addon(name: "Extra salt", price: 2.66),
      ],
    ),
    Food(
      name: "Crisp Sides",
      description: "Burger X Fries",
      imagePath: "lib/images/sides/crisp_sides.jpg",
      price: 0.55,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra veggies", price: 1.22),
        Addon(name: "Extra whey", price: 1.28),
        Addon(name: "Extra salt", price: 2.66),
      ],
    ),
    Food(
      name: "Massed Potato",
      description: "Burger X Fries",
      imagePath: "lib/images/sides/massed_posta.jpg",
      price: 0.55,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra veggies", price: 1.22),
        Addon(name: "Extra whey", price: 1.28),
        Addon(name: "Extra salt", price: 2.66),
      ],
    ),
    Food(
      name: "Peri Fries",
      description: "Burger X Fries",
      imagePath: "lib/images/sides/peri_frie.jpg",
      price: 0.55,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra veggies", price: 1.22),
        Addon(name: "Extra whey", price: 1.28),
        Addon(name: "Extra salt", price: 2.66),
      ],
    ),
    Food(
      name: "veg_side",
      description: "Burger X Fries",
      imagePath: "lib/images/sides/veg_side.jpg",
      price: 0.55,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra veggies", price: 1.22),
        Addon(name: "Extra whey", price: 1.28),
        Addon(name: "Extra salt", price: 2.66),
      ],
    ),
  ];

  // Getters ******************

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  // Operations ****************

  // User cart

  final List<CartItem> _cart = [];

  // Add to the cart
  void addtoCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same

      bool isSameFood = item.food == food;

      // Check if the list of selected addons are the same

      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    // if the item already exists, increase the quantity

    if (cartItem != null) {
      cartItem.quantity++;
    }
    // otherwise add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  // remove from cart

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get total price

  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get total items in the cart

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  // clear the cart

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // Helpers**********************

  // generate a recipt

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here is your receipt.");
    receipt.writeln();

    // format the date to include up to seconds only

    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("-------------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("    Add-ons: ${_formAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("--------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

  // fromat double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  // format list of addons into a string summary

  String _formAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
