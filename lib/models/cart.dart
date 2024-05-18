import 'package:project_x/models/product.dart';
import 'package:uuid/uuid.dart';

var uuid = const Uuid();

class Cart {
  final String id;
  final Product product;
  int quantity; //reason: is beacause the cart might be changed by the user at anytime

  Cart({required this.product, required this.quantity}) : id = uuid.v4();
}
