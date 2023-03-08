// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({super.key, required this.items});

  final List<CategoryListItem> items;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Wrap(
        children: List.from(
          items.map((item) => _CategoryItemWidget(item: item))
        ),
      ),
    );
  }
}

class _CategoryItemWidget extends StatelessWidget {
  const _CategoryItemWidget({super.key, required this.item});
  final CategoryListItem item;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 4.2,
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8),
    
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: () {
              item.onTap(item);
            },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: ColoredBox(
                        color: Color(0xffF5F8F5),
                        child: Image.network(
                          item.imageUrl,
                          fit: BoxFit.cover,
                          ),
                      ),
                    ),
                  ),
                ),
              ),
              Text(item.label, style: TextStyle(fontSize: 12),)
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryListItem {
  final String label;
  final String imageUrl;
  final void Function(CategoryListItem item) onTap;

  CategoryListItem(
    {
    required this.label,
    required this.imageUrl,
    required this.onTap, 
  });
  

}
