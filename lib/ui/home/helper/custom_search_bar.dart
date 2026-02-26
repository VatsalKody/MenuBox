import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      top: 75,
      left: 20,
      right: 20,
      height: 50,
      child: SearchBar(hintText: 'Search Here', leading: Icon(Icons.search_rounded)),
    );
  }
}
