import 'package:flutter/material.dart';
import 'package:pizza_app/model/pizza_model.dart';

class PizzaDetails extends StatelessWidget {
  final Pizza pizzaDetails;

  const PizzaDetails({Key? key, required this.pizzaDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "\$${pizzaDetails.price}",
          style: TextStyle(
            fontSize: 24,
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          pizzaDetails.description,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
