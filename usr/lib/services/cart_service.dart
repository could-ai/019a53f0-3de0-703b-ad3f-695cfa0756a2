import 'package:flutter/foundation.dart';
import '../models/cart_item.dart';
import '../models/restaurant.dart';

class CartService extends ChangeNotifier {
  final List<CartItem> _items = [];
  String? _currentRestaurantId;

  List<CartItem> get items => _items;
  int get itemCount => _items.fold(0, (sum, item) => sum + item.quantity);

  double get subtotal => _items.fold(0.0, (sum, item) => sum + item.totalPrice);

  double get deliveryFee {
    // Fast delivery charge: $2.99 for orders under $20, free for $20+
    return subtotal >= 20.0 ? 0.0 : 2.99;
  }

  double get serviceFee => 1.50; // Platform service fee

  double get total => subtotal + deliveryFee + serviceFee;

  bool get isFreeDelivery => subtotal >= 20.0;

  void addItem(MenuItem menuItem, String restaurantId, String restaurantName) {
    // Check if adding from different restaurant
    if (_currentRestaurantId != null && _currentRestaurantId != restaurantId) {
      // Clear cart when switching restaurants
      _items.clear();
    }

    _currentRestaurantId = restaurantId;

    // Check if item already exists
    final existingIndex = _items.indexWhere(
      (item) => item.menuItem.id == menuItem.id,
    );

    if (existingIndex >= 0) {
      _items[existingIndex].quantity++;
    } else {
      _items.add(CartItem(
        menuItem: menuItem,
        quantity: 1,
        restaurantId: restaurantId,
        restaurantName: restaurantName,
      ));
    }

    notifyListeners();
  }

  void removeItem(String menuItemId) {
    _items.removeWhere((item) => item.menuItem.id == menuItemId);
    
    if (_items.isEmpty) {
      _currentRestaurantId = null;
    }
    
    notifyListeners();
  }

  void updateQuantity(String menuItemId, int quantity) {
    if (quantity <= 0) {
      removeItem(menuItemId);
      return;
    }

    final index = _items.indexWhere((item) => item.menuItem.id == menuItemId);
    if (index >= 0) {
      _items[index].quantity = quantity;
      notifyListeners();
    }
  }

  void clearCart() {
    _items.clear();
    _currentRestaurantId = null;
    notifyListeners();
  }
}
