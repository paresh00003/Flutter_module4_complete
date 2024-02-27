class Product {
  final double price;
  final String Name;
  final String image;
  final int num;

  Product(
      {required this.price, required this.image, required this.Name, required this.num});}

var productList = [
  Product(price: 5.00, image:  "assets/images/samosa.jpg", Name: "Samosa", num: 3),
  Product(price: 7.02, image:  "assets/images/burger.jpg", Name: "Burger", num: 1),
  Product(price: 8.08, image:  "assets/images/kiwi.jpg", Name: "kiwi", num: 2),
  Product(price: 20.10, image:  "assets/images/berry.jpg", Name: "Strawberry", num: 5),

];