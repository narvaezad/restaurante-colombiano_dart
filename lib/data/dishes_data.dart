import '../models/dish.dart';
 
// Lista de platos que se muestran en la pantalla de inicio.

final List<Dish> dishesList = [
  Dish(
    name: 'Bandeja Paisa',
    description:
        'Una auténtica bandeja paisa preparada al estilo tradicional, con frijoles,' 
        'arroz blanco, carne molida, chicharrón crocante, huevo,'
        'chorizo, tajadas de plátano maduro y aguacate. Un plato abundante que' 
        'representa todo el sabor de la cocina antioqueña.',
    price: 16000,
    image: 'assets/images/bandeja-paisa.jpg',
    rating: 4.8,
    ingredients: ['Frijoles Rojos', 'Arroz Blanco', 'Chicharron', 'Chorizo', 'Huevo', 'Aguacate', 'Arepa', 'Platano Maduro'],
  ),
  Dish(
    name: 'Pescado Frito con Arroz de Coco',
    description:
        'Pescado fresco frito hasta quedar dorado y crocante, acompañado de nuestro tradicional'
         'arroz de coco, ensalada fresca y una porción de patacones.'
          'Una preparación inspirada en los sabores de la costa Caribe colombiana.',
    price: 16000,
    image: 'assets/images/arroz-de-coco-y-pescado-frito.jpg',
    rating: 4.7,
    ingredients: ['Pescado', 'Coco', 'Arroz', 'Patacones', 'Limon', 'Ensalada', 'Cebolla', 'Tomate', 'Ajo'],
  ),
  Dish(
    name: 'Lechona Tolimense',
    description:
        'Deliciosa lechona al estilo tradicional tolimense, preparada con carne'
         'de cerdo, arroz, arvejas y especias seleccionadas.'
         ' Su cocción lenta permite obtener una carne suave y llena de sabor,' 
          'acompañada de un crocante que la hace irresistible.',
    price: 26000,
    image: 'assets/images/lechona-tolimense.jpg',
    rating: 4.9,
    ingredients: ['Cerdo', 'Arroz', 'Arvejas', 'Cebolla', 'Ajo', 'Especias', 'Sal', 'Pimienta'],
  ),
  Dish(
    name: 'Cocido Boyacense',
    description:
        'Reconfortante cocido boyacense preparado con diferentes carnes,'
        'tubérculos, verduras y legumbres, siguiendo el espíritu de las recetas'
        'tradicionales de la cocina de Boyacá. Un plato abundante, casero y lleno'
         'de sabores de nuestra tierra.',
    price: 26000,
    image: 'assets/images/cocido-boyacense.jpg',
    rating: 4.7,
    ingredients: ['Carne de res', 'Pollo', 'Cerdo', 'Papa', 'Mazorca', 'Habas', 'Tomate', 'Cebolla', 'Especias'],
  ),
  Dish(
    name: 'Arroz Atollado',
    description:
         'Tradicional arroz atollado preparado con arroz, carnes seleccionadas, verduras y un'
         'delicioso guiso casero que combina todos sus sabores. Una receta colombiana reconfortante'
         'perfecta para quienes disfrutan de una comida abundante y llena de tradición.',
    price: 12000,
    image: 'assets/images/arroz-atollado.jpg',
    rating: 4.5,
    ingredients: ['Arroz', 'Carne de cerdo', 'Pollo', 'Chorizo', 'Pimenton', 'Tomate', 'Cebolla', 'Ajo', 'Especias'],
  ),
];