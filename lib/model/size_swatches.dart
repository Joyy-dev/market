import 'package:flutter/material.dart';

class SizeSwatches extends StatefulWidget {
  final List<String> size;
  final int selectedIndex;
  final ValueChanged<int> onchanged;

  const SizeSwatches({
    required this.size,
    required this.selectedIndex,
    required this.onchanged,
    super.key
  });

  @override
  State<SizeSwatches> createState() => _SizeSwatchesState();
}

class _SizeSwatchesState extends State<SizeSwatches> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(widget.size.length, (index) {
        return GestureDetector(
          onTap: () => widget.onchanged(index),
          child: Container(
            alignment: Alignment.center,
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: widget.selectedIndex == index ? Color(0xFF1B1B3A) : Color.fromARGB(255, 215, 215, 255) ,
              shape: BoxShape.circle,
            ),
            child: Text(
              widget.size[index],
              style: TextStyle(
                fontSize: 18,
                color: widget.selectedIndex == index ? Colors.white : Color.fromARGB(255, 35, 35, 214),
                fontWeight: FontWeight.bold
              ), textAlign: TextAlign.center,
            ),
          ),
        );
      }),
    );
  }
}