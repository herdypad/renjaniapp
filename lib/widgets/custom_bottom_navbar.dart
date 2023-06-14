import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../themes.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);
  final int selectedIndex;
  final Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ItemNavbar(
            isSelected: selectedIndex == 0,
            label: '',
            assetIcon: 'assets/icons/ic_home.png',
            onTap: () => onTap(0),
          ),
          ItemNavbar(
            isSelected: selectedIndex == 1,
            label: '',
            assetIcon: 'assets/icons/ic_galery.png',
            onTap: () => onTap(1),
          ),
          ItemNavbar(
            isSelected: selectedIndex == 2,
            label: '',
            assetIcon: 'assets/icons/ic_rank.png',
            onTap: () => onTap(2),
          ),
        ],
      ),
    );
  }
}

class ItemNavbar extends StatelessWidget {
  const ItemNavbar({
    Key? key,
    required this.isSelected,
    required this.label,
    this.assetIcon = '',
    this.onTap,
    this.icon,
  }) : super(key: key);

  final bool isSelected;
  final String label;
  final String assetIcon;
  final Function()? onTap;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: Get.width / 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: isSelected ? 22 : 20,
              height: isSelected ? 22 : 20,
              child: assetIcon.isNotEmpty
                  ? Image.asset(
                      assetIcon,
                      color: isSelected ? kWhite : primaryColor3,
                    )
                  : Icon(
                      icon,
                      color: isSelected ? kWhite : primaryColor3,
                      size: isSelected ? 16 : 15,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
