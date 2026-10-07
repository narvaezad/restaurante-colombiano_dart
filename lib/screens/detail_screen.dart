import 'package:flutter/material.dart';
import '../models/dish.dart';
 
class DetailScreen extends StatefulWidget {
  final Dish dish;
  const DetailScreen({super.key, required this.dish});
 
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}
 
class _DetailScreenState extends State<DetailScreen> {
  int cantidad = 1;
 
  void aumentar() {
    setState(() {
      cantidad++;
    });
  }
 
  void disminuir() {
    setState(() {
      if (cantidad > 1) cantidad--;
    });
  }
 
  @override
  Widget build(BuildContext context) {
    final dish = widget.dish;
    return Scaffold(
      appBar: AppBar(
        title: Text(dish.name),
        backgroundColor: const Color.fromARGB(255, 214, 142, 59),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagen grande del plato
            Image.network(
              dish.image,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Column: nombre, descripcion, precio
                  Text(
                    dish.name,
                    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    dish.description,
                    style: const TextStyle(color: Color.fromARGB(255, 12, 12, 10)),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '\$ ${dish.price}',
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
 
                  // Row: contador de cantidad + calificacion
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: disminuir,
                            icon: const Icon(Icons.remove_circle_outline),
                          ),
                          Text('$cantidad', style: const TextStyle(fontSize: 18)),
                          IconButton(
                            onPressed: aumentar,
                            icon: const Icon(Icons.add_circle_outline),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber),
                          const SizedBox(width: 4),
                          Text('${dish.rating}'),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
 
                  // ListView horizontal con los ingredientes
                  const Text(
                    'Ingredientes',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 90,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: dish.ingredients.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 70,
                          margin: const EdgeInsets.only(right: 10),
                          child: Column(
                            children: [
                              const CircleAvatar(
                                radius: 25,
                                backgroundColor: Color(0xFFFFE0CC),
                                child: Icon(Icons.eco, color: Color.fromARGB(255, 0, 0, 0)),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                dish.ingredients[index],
                                textAlign: TextAlign.center,
                                style: const TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        );
                      },

                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}