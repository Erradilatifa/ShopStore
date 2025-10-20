import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/models/product.dart';

const List<Product> allProducts = [
  Product(
    id: '1',
    title: 'iPhone 15 Pro',
    price: 999.0,
    image: 'assets/products/iPhone15Pro-removebg-preview.png', // ← CORRIGÉ
  ),
  Product(
    id: '2',
    title: 'iPhone 15',
    price: 799.0,
    image: 'assets/products/iPhone15-removebg-preview.png', // ← CORRIGÉ
  ),
  Product(
    id: '3',
    title: 'iPhone 14',
    price: 699.0,
    image: 'assets/products/iphone14-removebg-preview.png', // ← CORRIGÉ
  ),
  Product(
    id: '4',
    title: 'iPhone 13',
    price: 599.0,
    image: 'assets/products/iphone13-removebg-preview.png', // ← CORRIGÉ
  ),
  Product(
    id: '5',
    title: 'iPhone SE',
    price: 429.0,
    image: 'assets/products/iphonese-removebg-preview.png', // ← CORRIGÉ
  ),
  Product(
    id: '6',
    title: 'AirPods Pro',
    price: 249.0,
    image: 'assets/products/airpodspro-removebg-preview.png', // ← CORRIGÉ
  ),
  Product(
    id: '7',
    title: 'Apple Watch',
    price: 399.0,
    image: 'assets/products/applewatch-removebg-preview.png', // ← CORRIGÉ
  ),
];

// ANCIENNE SYNTAXE - ÇA FONCTIONNE TOUJOURS
final productsProvider = Provider<List<Product>>((ref) {
  return allProducts;
});

final reducedProductsProvider = Provider<List<Product>>((ref) {
  return allProducts.where((p) => p.price < 500).toList();
});

final premiumProductsProvider = Provider<List<Product>>((ref) {
  return allProducts.where((p) => p.price >= 500).toList();
});