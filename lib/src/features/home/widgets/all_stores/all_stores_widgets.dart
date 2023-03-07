import 'package:flutter/material.dart';
import 'package:pepperoni/pepperoni.dart';

class AllStoresWidgets extends StatefulWidget {
  final TabController tabController;
  const AllStoresWidgets({super.key, required this.tabController});

  @override
  State<AllStoresWidgets> createState() => _AllStoresWidgetsState();
}

class _AllStoresWidgetsState extends State<AllStoresWidgets> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisSize: MainAxisSize.min,
              children: [CategoryListWidget(
                items: [
                  CategoryListItem(label: 'Restaurantes', imageUrl:
                  'https://s3-sa-east-1.amazonaws.com/deliveryon-uploads/products/traillerdoserginho/34_55c2ab9b72a92.png',
                   onTap: (item) {widget.tabController.animateTo(1);}),
                  CategoryListItem(label: 'Mercado', imageUrl:
                    'https://w7.pngwing.com/pngs/251/668/png-transparent-shopping-cart-graphy-grocery-store-supermarket-a-cart-fruits-and-vegetables-food-retail-shopping-centre.png',
                    onTap: (item) {widget.tabController.animateTo(2);}),
                    CategoryListItem(label: 'Bebidas', imageUrl:
                  'https://static.wixstatic.com/media/b62ae2_8b22564bd0684e7a8046e7b6c26ef6ae~mv2.png/v1/fill/w_140,h_174,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/copo-de-refrigerante-1.png',
                   onTap: (item) {widget.tabController.animateTo(3);}),
                    CategoryListItem(label: 'Farmácia', imageUrl:
                  'https://www.pngall.com/wp-content/uploads/12/Pills-Medicine-PNG-Image.png',
                   onTap: (item) {widget.tabController.animateTo(4);}),
                   CategoryListItem(label: 'Pet', imageUrl:
                  'https://portalvidalivre.com/uploads/content/image/64549/Design_sem_nome__46_.jpg',
                   onTap: (item) {widget.tabController.animateTo(5);}),
                   CategoryListItem(label: 'Clube Pfood', imageUrl:
                  'https://img.freepik.com/icones-gratis/cupom_318-490261.jpg',
                   onTap: (item) {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Container(color: Colors.red,),));
                   }),
                   CategoryListItem(label: 'Shopping', imageUrl:
                  'https://cdn-icons-png.flaticon.com/512/3081/3081559.png',
                   onTap: (item) {Navigator.of(context).push(MaterialPageRoute(builder: (context) => Container(color: Colors.red,),));}),
                   
            ],  
          )
        ],
      );
  }
}  