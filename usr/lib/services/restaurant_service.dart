import '../models/restaurant.dart';

class RestaurantService {
  // Mock data for demonstration
  static List<Restaurant> getMockRestaurants() {
    return [
      Restaurant(
        id: '1',
        name: 'Burger Palace',
        imageUrl: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=500',
        rating: 4.5,
        category: 'Burgers',
        deliveryTime: 20,
        deliveryFee: 2.99,
        isFreeDelivery: false,
        menuItems: [
          MenuItem(
            id: '1',
            name: 'Classic Cheeseburger',
            description: 'Juicy beef patty with cheddar cheese, lettuce, tomato',
            price: 8.99,
            imageUrl: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=300',
            category: 'Burgers',
          ),
          MenuItem(
            id: '2',
            name: 'Double Bacon Burger',
            description: 'Double beef patties with crispy bacon and cheese',
            price: 12.99,
            imageUrl: 'https://images.unsplash.com/photo-1553979459-d2229ba7433b?w=300',
            category: 'Burgers',
          ),
          MenuItem(
            id: '3',
            name: 'French Fries',
            description: 'Crispy golden french fries',
            price: 3.99,
            imageUrl: 'https://images.unsplash.com/photo-1573080496219-bb080dd4f877?w=300',
            category: 'Sides',
          ),
        ],
      ),
      Restaurant(
        id: '2',
        name: 'Pizza Express',
        imageUrl: 'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=500',
        rating: 4.7,
        category: 'Pizza',
        deliveryTime: 25,
        deliveryFee: 2.99,
        isFreeDelivery: false,
        menuItems: [
          MenuItem(
            id: '4',
            name: 'Margherita Pizza',
            description: 'Classic tomato sauce, mozzarella, and basil',
            price: 11.99,
            imageUrl: 'https://images.unsplash.com/photo-1574071318508-1cdbab80d002?w=300',
            category: 'Pizza',
          ),
          MenuItem(
            id: '5',
            name: 'Pepperoni Pizza',
            description: 'Loaded with pepperoni and mozzarella cheese',
            price: 13.99,
            imageUrl: 'https://images.unsplash.com/photo-1628840042765-356cda07504e?w=300',
            category: 'Pizza',
          ),
        ],
      ),
      Restaurant(
        id: '3',
        name: 'Chicken Hub',
        imageUrl: 'https://images.unsplash.com/photo-1626645738196-c2a7c87a8f58?w=500',
        rating: 4.3,
        category: 'Chicken',
        deliveryTime: 18,
        deliveryFee: 2.99,
        isFreeDelivery: false,
        menuItems: [
          MenuItem(
            id: '6',
            name: 'Fried Chicken Bucket',
            description: '8 pieces of crispy fried chicken',
            price: 15.99,
            imageUrl: 'https://images.unsplash.com/photo-1626082927389-6cd097cdc6ec?w=300',
            category: 'Chicken',
          ),
          MenuItem(
            id: '7',
            name: 'Chicken Sandwich',
            description: 'Crispy chicken breast with special sauce',
            price: 7.99,
            imageUrl: 'https://images.unsplash.com/photo-1606755962773-d324e0a13086?w=300',
            category: 'Sandwiches',
          ),
        ],
      ),
      Restaurant(
        id: '4',
        name: 'Taco Fiesta',
        imageUrl: 'https://images.unsplash.com/photo-1565299585323-38d6b0865b47?w=500',
        rating: 4.6,
        category: 'Mexican',
        deliveryTime: 22,
        deliveryFee: 2.99,
        isFreeDelivery: false,
        menuItems: [
          MenuItem(
            id: '8',
            name: 'Beef Tacos',
            description: '3 soft tacos with seasoned beef',
            price: 9.99,
            imageUrl: 'https://images.unsplash.com/photo-1551504734-5ee1c4a1479b?w=300',
            category: 'Tacos',
          ),
          MenuItem(
            id: '9',
            name: 'Chicken Burrito',
            description: 'Large burrito with grilled chicken and rice',
            price: 10.99,
            imageUrl: 'https://images.unsplash.com/photo-1626700051175-6818013e1d4f?w=300',
            category: 'Burritos',
          ),
        ],
      ),
    ];
  }

  static Restaurant? getRestaurantById(String id) {
    try {
      return getMockRestaurants().firstWhere((r) => r.id == id);
    } catch (e) {
      return null;
    }
  }
}
