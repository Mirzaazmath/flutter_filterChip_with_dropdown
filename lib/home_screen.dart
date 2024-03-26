import 'package:flutter/material.dart';

import 'filter_chip_with_dropdown.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const List<String> _filters = <String>[
    'Apple',
    'Banana',
    'Orange',
    'Mango',
    'Grapes',
    'Watermelon',
    'Kiwi',
    'Strawberry',
    'Sugarcane',
  ];

  String selectedFilter = "";
  String filterTitle="Type";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("App Bar"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Custom Widget
                  CustomFilterChipWithDropDown(
                    filterList: _filters,
                    title: filterTitle,
                    selectedFilter: selectedFilter,
                    onSelect: (String value) {
                      setState(() {
                        selectedFilter = value;
                      });
                    },
                    onDelete: () {
                      setState(() {
                        selectedFilter = "";
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
