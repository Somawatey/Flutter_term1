void main() {
  // Map of pizza prices
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  // Example order
  const orders = ['margherita', 'pepperoni'];

  // Your code
  double total = 0;
  for (var pizza in orders) {
    if (pizzaPrices.containsKey(pizza)) {
      total += pizzaPrices[pizza]!;
    } else {
      // If pizza is not on the menu, print a message and return
      print('$pizza pizza is not on the menu');
    }
  }
  if (total> 0) {
    print(total);
  }
}
