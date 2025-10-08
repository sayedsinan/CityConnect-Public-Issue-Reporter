import 'package:flutter/material.dart';

class MapReportsToggle extends StatefulWidget {
  const MapReportsToggle({super.key});

  @override
  State<MapReportsToggle> createState() => _MapReportsToggleState();
}

class _MapReportsToggleState extends State<MapReportsToggle> {
  int selectedIndex = 0; // 0 = Map, 1 = My Reports

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Map button
          GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 0;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              decoration: BoxDecoration(
                color: selectedIndex == 0 ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                'Map',
                style: TextStyle(
                  color: selectedIndex == 0 ? Colors.black : Colors.grey.shade700,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // My Reports button
          GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 1;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              decoration: BoxDecoration(
                color: selectedIndex == 1 ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                'My Reports',
                style: TextStyle(
                  color: selectedIndex == 1 ? Colors.black : Colors.grey.shade700,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
