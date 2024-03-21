import 'package:flutter/material.dart';
import 'package:pizza_app/utils/data.dart';

class PizzaSize extends StatefulWidget {
  const PizzaSize({Key? key}) : super(key: key);

  @override
  State<PizzaSize> createState() => _PizzaSizeState();
}

class _PizzaSizeState extends State<PizzaSize> {
  late int selectedSize;

  @override
  void initState() {
    super.initState();
    selectedSize = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = 0; i < pizzaSizes.length; i++)
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedSize = i;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: selectedSize == i
                        ? Theme.of(context).primaryColor
                        : Colors.grey[300]!,
                    width: 1.5,
                  ),
                  color: selectedSize == i ? Colors.blue[100] : null,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Text(
                  pizzaSizes[i],
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color:
                        selectedSize == i ? Colors.grey[800] : Colors.grey[600],
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
