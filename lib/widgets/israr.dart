import 'package:flutter/material.dart';


void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class SubCategory {
  final int id;
  final String name;
  const SubCategory({required this.id, required this.name});
}

class Category {
  final int id;
  final String name;
  final List<SubCategory> subCategories;
  const Category(
      {required this.id, required this.name, required this.subCategories});
}

class _HomePageState extends State<HomePage> {
  List<Category> categories = const [
    Category(
      id: 10,
      name: "Men",
      subCategories: [
        SubCategory(id: 11, name: "Jeans"),
        SubCategory(id: 12, name: "T-Shirts")
      ],
    ),
    Category(
      id: 20,
      name: "Women",
      subCategories: [
        SubCategory(id: 21, name: "Dress"),
        SubCategory(id: 22, name: "Shoes")
      ],
    ),
    Category(
      id: 30,
      name: "Sports",
      subCategories: [
        SubCategory(id: 31, name: "Criket"),
        SubCategory(id: 32, name: "Football")
      ],
    )
  ];

  Category? selectedCategory;

  SubCategory? selectedSubCategory;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tasker')),
      body: Column(
        children: [
          DropdownButton<Category>(
            // Step 3.
            value: selectedCategory,
            // Step 4.
            items:
                categories.map<DropdownMenuItem<Category>>((Category category) {
              return DropdownMenuItem<Category>(
                value: category,
                child: Text(
                  category.name,
                  style: const TextStyle(fontSize: 30),
                ),
              );
            }).toList(),
            // Step 5.
            onChanged: (Category? newValue) {
              setState(() {
                selectedCategory = newValue!;
                selectedSubCategory = null;
              });
            },
          ),
          const SizedBox(
            height: 50,
          ),
          DropdownButton<SubCategory>(
            // Step 3.
            value: selectedSubCategory,
            // Step 4.
            items:
                (selectedCategory?.subCategories??[]).map<DropdownMenuItem<SubCategory>>((SubCategory subCategory) {
              return DropdownMenuItem<SubCategory>(
                value: subCategory,
                child: Text(
                  subCategory.name,
                  style: const TextStyle(fontSize: 30),
                ),
              );
            }).toList(),
            // Step 5.
            onChanged: (SubCategory? newValue) {
              setState(() {
                selectedSubCategory = newValue!;
              });
            },
          )
        ],
      ),
    );
  }
}