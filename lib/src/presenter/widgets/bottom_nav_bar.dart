import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.barItem,
  }) : super(key: key);

  final List<Widget> barItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        height: 55.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: barItem,
        ),
      ),
    );
  }
}

class BottomBarItem extends StatelessWidget {
  const BottomBarItem({
    Key? key,
    required this.title,
    required this.onTap,
    required this.icon,
    required this.iconActive,
    required this.isActive,
  }) : super(key: key);
  final String title;
  final Function() onTap;
  final IconData icon;
  final IconData iconActive;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        width: double.infinity,
        constraints: const BoxConstraints(maxWidth: 75.0),
        child: Column(
          children: [
            const SizedBox(height: 7.0),
            Icon(
              isActive ? iconActive : icon,
              color: isActive ? Colors.black : Colors.grey,
              size: 24,
            ),
            const SizedBox(height: 4.0),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(color: isActive ? Colors.black : Colors.grey),
            ),
            const SizedBox(height: 2.0),
          ],
        ),
      ),
    );
  }
}
