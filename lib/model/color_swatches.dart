import 'package:flutter/material.dart';

class ColorSwatches extends StatefulWidget {
  final List<Color> color;
  final int selectedIndex;
  final ValueChanged<int> onchanged;

  const ColorSwatches({
    required this.color, 
    required this.selectedIndex, 
    required this.onchanged, 
    super.key
  });

  @override
  State<ColorSwatches> createState() => _ColorSwatchesState();
}

class _ColorSwatchesState extends State<ColorSwatches> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(widget.color.length, (index) {
        return GestureDetector(
          onTap: () => widget.onchanged(index),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: widget.color[index],
              shape: BoxShape.circle,
              border: Border.all(
                width: 3, 
                color: widget.selectedIndex == index ? Colors.black : Colors.grey
              ),
            ),
          ),
        );
      })
    );
  }
}