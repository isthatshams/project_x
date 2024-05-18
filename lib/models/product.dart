import 'package:uuid/uuid.dart';

var uuid = const Uuid();

class Product {
  final String name;
  final String id;
  final String discreption;
  final double price;
  final String image;
  final double availablility;
  final bool favourite;
  List? colours;
  List? sizes;
  Product({
    required this.name,
    required this.discreption,
    required this.price,
    required this.availablility,
    required this.image,
    this.favourite = false,
    this.sizes,
    this.colours,
  }) : id = uuid.v4();
}
