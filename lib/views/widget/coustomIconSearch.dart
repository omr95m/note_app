import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  final icon;
  const SearchWidget({
    super.key,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: Icon(icon),
      ),
    );
  }
}
