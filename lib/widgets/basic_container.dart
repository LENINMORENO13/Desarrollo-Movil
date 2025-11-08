import 'package:flutter/material.dart';

class BasicContainer extends StatelessWidget {
  const BasicContainer(this.label, this.icon, {super.key});

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('$label: $icon');  // Solo imprime en consola (opcional)
      },
      child: Container(
        width: 100,
        height: 100,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: const BorderRadius.all(Radius.circular(40)),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(label),
              Icon(icon, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
