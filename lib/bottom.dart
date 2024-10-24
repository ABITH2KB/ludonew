import 'package:flutter/material.dart';
import 'package:ludokhel1/home.dart';
import 'package:ludokhel1/tab2.dart';
class TabNavigationItem {
  final Widget page;
  final Widget title;
  final Widget image; // Replace icon with a custom image widget

  TabNavigationItem({
    required this.page,
    required this.title,
    required this.image, // Add the custom image property
  });

  static List<TabNavigationItem> get items => [
    TabNavigationItem(
      page: const Home(),
      image: Image.asset(  'asset/image/cart.png', height: 30), // Replace with your custom image
      title: const Text("Home"),
    ),
    TabNavigationItem(
      page: const profile(),
      image: Image.asset( 'asset/image/trophy.png', height: 30), // Replace with your custom image
      title: const Text("Swipable"),
    ),
    TabNavigationItem(
      page: const profile(),
      image: Image.asset( 'asset/image/cart.png', height: 30), // Replace with your custom image
      title: const Text("Swipable"),
    ),
    TabNavigationItem(
      page: const profile(),
      image: Image.asset( 'asset/image/cart.png', height: 30), // Replace with your custom image
      title: const Text("Swipable"),
    ),
    TabNavigationItem(
      page: const profile(),
      image: Image.asset( 'asset/image/cart.png', height: 30), // Replace with your custom image
      title: const Text("Swipable"),
    ),
  ];
}
