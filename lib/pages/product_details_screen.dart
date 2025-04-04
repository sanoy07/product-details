import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.cyan[800],
        title: Text(product.title,style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (product.thumbnail.isNotEmpty)
              Image.network(
                product.thumbnail,
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              )
            else
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.grey[300],
                child: const Center(child: Text('No Image Available')),
              ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Brand: ${product.brand ?? 'Unknown'}',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Category: ${product.category ?? 'Uncategorized'}',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    product.description ?? 'No description available.',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Text(
                        '\$${product.price?.toStringAsFixed(2) ?? '0.00'}',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(color: Colors.green),
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          // TODO: Add to cart functionality
                        },
                        child: const Text('Add to Cart'),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
