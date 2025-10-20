import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/providers/cart_provider.dart';
import 'package:riverpod_files/providers/products_provider.dart';
import 'package:riverpod_files/shared/cart_icon.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allProducts = ref.watch(productsProvider);
    final cartProducts = ref.watch(cartProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('ShopStore'),
        actions: const [CartIcon()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: allProducts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 1.0, // ← Carrés parfaits
          ),
          itemBuilder: (context, index) {
            final product = allProducts[index];
            final isInCart = cartProducts.contains(product);

            return Card(
              elevation: 3,
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // IMAGE AVEC TAILLE ENCORE AUGMENTÉE
                    Image.asset(
                      product.image,
                      width: 120, // ← TAILLE AUGMENTÉE (était 100)
                      height: 120, // ← TAILLE AUGMENTÉE (était 100)
                      fit: BoxFit.contain,
                    ),
                    Text(
                      product.title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      '£${product.price}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: isInCart
                          ? TextButton(
                        onPressed: () {
                          ref.read(cartProvider.notifier).removeProduct(product);
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.red[50],
                        ),
                        child: const Text(
                          'Remove',
                          style: TextStyle(color: Colors.red),
                        ),
                      )
                          : TextButton(
                        onPressed: () {
                          ref.read(cartProvider.notifier).addProduct(product);
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue[50],
                        ),
                        child: const Text(
                          'Add to Cart',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}