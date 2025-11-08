import 'package:flutter/material.dart';
import 'package:new_world_2025/widgets/basic_container.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            // Row con scroll horizontal - REQUISITO: separación 12px
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  BasicContainer('1', Icons.abc_outlined),
                  const SizedBox(width: 12), // 12px de separación
                  BasicContainer('2', Icons.ac_unit_rounded),
                  const SizedBox(width: 12),
                  BasicContainer('3', Icons.access_alarms_outlined),
                  const SizedBox(width: 12),
                  BasicContainer('4', Icons.access_time),
                  const SizedBox(width: 12),
                  BasicContainer('5', Icons.icecream_outlined),
                  const SizedBox(width: 12),
                  BasicContainer('6', Icons.phone),
                  const SizedBox(width: 12),
                  BasicContainer('7', Icons.settings),
                ],
              ),
            ),
            const SizedBox(height: 20),
            
            // Stack (lo que hiciste en clase)
            Stack(
              children: [
                Container(
                  height: 360,
                  width: double.infinity,
                  color: Colors.blue,
                ),
                Container(height: 100, width: 100, color: Colors.green),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                  margin: const EdgeInsets.all(50),
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            // Wrap
            Wrap(
              children: [
                BasicContainer('1', Icons.ac_unit),
                BasicContainer('2', Icons.account_box),
                BasicContainer('3', Icons.access_time_rounded),
                BasicContainer('4', Icons.abc_outlined),
                BasicContainer('5', Icons.accessibility),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
