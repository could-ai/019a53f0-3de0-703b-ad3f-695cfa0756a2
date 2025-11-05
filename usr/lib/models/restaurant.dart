class Restaurant {
  final String id;
  final String name;
  final String imageUrl;
  final double rating;
  final String category;
  final int deliveryTime; // in minutes
  final double deliveryFee;
  final bool isFreeDelivery;
  final List<MenuItem> menuItems;

  Restaurant({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.rating,
    required this.category,
    required this.deliveryTime,
    required this.deliveryFee,
    required this.isFreeDelivery,
    required this.menuItems,
  });
}

class MenuItem {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final String category;

  MenuItem({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.category,
  });
}
