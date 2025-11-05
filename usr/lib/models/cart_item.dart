import 'restaurant.dart';

class CartItem {
  final MenuItem menuItem;
  int quantity;
  final String restaurantId;
  final String restaurantName;

  CartItem({
    required this.menuItem,
    required this.quantity,
    required this.restaurantId,
    required this.restaurantName,
  });

  double get totalPrice => menuItem.price * quantity;
}
