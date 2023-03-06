import 'package:flutter/material.dart';

class CategoryListWidget extends StatefulWidget {
  const CategoryListWidget({super.key});

  @override
  State<CategoryListWidget> createState() => _CategoryListWidgetState();
}

class _CategoryListWidgetState extends State<CategoryListWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          _CategoryItemWidget(),
          _CategoryItemWidget(),
      
        ],
      ),
    );
  }
}

class _CategoryItemWidget extends StatelessWidget {
  const _CategoryItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.network(
          'https://s3-sa-east-1.amazonaws.com/deliveryon-uploads/products/traillerdoserginho/34_55c2ab9b72a92.png',
          width: 100,
          height: 100,
          fit: BoxFit.contain,
          ),
        Text('Label')
      ],
    );
  }
}