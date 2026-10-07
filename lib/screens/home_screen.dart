import 'package:flutter/material.dart';
import '../data/dishes_data.dart';
import 'detail_screen.dart';
 
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Stack: imagen principal + nombre y leyenda encima
            Stack(
              children: [
                Image.asset(
                  'assets/images/Kitchen_N-banner.png',
                  width: double.infinity,
                  height: 220,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 16,
                  left: 16,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Kitchen N',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Sabor colombiano en cada plato',
                          style: TextStyle(color: Colors.white70, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
 
            // Column: nombre del restaurante + descripcion corta
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Kitchen N',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Comida tipica colombiana preparada con recetas caseras '
                    'y mucho sabor.',
                    style: TextStyle(color: Colors.black54),
                  ),
                  const SizedBox(height: 14),
 
                  // Row: tiempo de entrega + calificacion
                  Row(
                    children: const [
                      Icon(Icons.access_time, size: 18, color: Colors.orange),
                      SizedBox(width: 6),
                      Text('30 min entrega'),
                      SizedBox(width: 20),
                      Icon(Icons.star, size: 18, color: Colors.amber),
                      SizedBox(width: 6),
                      Text('4.7 calificacion'),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Platos disponibles',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
 
            // ListView vertical con los platos del menu
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: dishesList.length,
              itemBuilder: (context, index) {
                final dish = dishesList[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => DetailScreen(dish: dish)),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 230, 223, 223),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              dish.image,
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  dish.name,
                                  style: const TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  '\$ ${dish.price}',
                                  style: const TextStyle(color: Colors.green),
                                ),
                              ],
                            ),
                          ),
                          const Icon(Icons.shopping_cart_outlined, color: Colors.deepOrange),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}