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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildImageBox('assets/testImage1.jpg'),
                  const SizedBox(width: 12),
                  _buildImageBox('assets/zorro.jpg'),
                  const SizedBox(width: 12),
                  _buildImageBox('assets/testImage1.jpg'),
                  const SizedBox(width: 12),
                  _buildImageBox('assets/zorro.jpg'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Stack(
              children: [
                Container(
                  height: 360,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                      image: AssetImage('assets/testImage1.jpg'),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage('assets/zorro.jpg'),
                        fit: BoxFit.fitHeight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage('assets/testImage1.jpg'),
                        fit: BoxFit.fitHeight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
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

  Widget _buildImageBox(String imagePath) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.fitHeight,
        ),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 8),
        ],
      ),
    );
  }
}
