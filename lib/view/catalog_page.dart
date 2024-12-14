import 'package:flutter/material.dart';

class CatalogPage extends StatelessWidget {
  final List<Map<String, String>> catalogItems = [
    {
      'image': 'assets/images/images1.jpg',
      'name': 'Puma',
      'price': '59.99'
    },
    {
      'image': 'assets/images/images2.jpg',
      'name': 'T-shirt',
      'price': '99.99'
    },
    {
      'image': 'assets/images/images3.jpg',
      'name': 'Under Armour',
      'price': '29.99'
    },
    {
      'image': 'assets/images/images1.jpg',
      'name': 'Puma Shoes',
      'price': '49.99'
    },
        {
      'image': 'assets/images/images1.jpg',
      'name': 'Puma',
      'price': '59.99'
    },
    {
      'image': 'assets/images/images2.jpg',
      'name': 'T-shirt',
      'price': '99.99'
    },
    {
      'image': 'assets/images/images3.jpg',
      'name': 'Under Armour',
      'price': '29.99'
    },
    {
      'image': 'assets/images/images1.jpg',
      'name': 'Puma Shoes',
      'price': '49.99'
    },
        {
      'image': 'assets/images/images1.jpg',
      'name': 'Puma',
      'price': '59.99'
    },
    {
      'image': 'assets/images/images2.jpg',
      'name': 'T-shirt',
      'price': '99.99'
    },
    {
      'image': 'assets/images/images3.jpg',
      'name': 'Under Armour',
      'price': '29.99'
    },
    {
      'image': 'assets/images/images1.jpg',
      'name': 'Puma Shoes',
      'price': '49.99'
    },
        {
      'image': 'assets/images/images1.jpg',
      'name': 'Puma',
      'price': '59.99'
    },
    {
      'image': 'assets/images/images2.jpg',
      'name': 'T-shirt',
      'price': '99.99'
    },
    {
      'image': 'assets/images/images3.jpg',
      'name': 'Under Armour',
      'price': '29.99'
    },
    {
      'image': 'assets/images/images1.jpg',
      'name': 'Puma Shoes',
      'price': '49.99'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 0.8,
          ),
          itemCount: catalogItems.length,
          itemBuilder: (context, index) {
            return _buildCatalogCard(
              image: catalogItems[index]['image']!,
              name: catalogItems[index]['name']!,
              price: catalogItems[index]['price']!,
            );
          },
        ),
      ),
    );
  }

  Widget _buildCatalogCard({
    required String image,
    required String name,
    required String price,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  '\$$price',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
