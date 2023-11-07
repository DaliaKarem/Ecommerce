import 'package:ecommerce/core/const/color.dart';
import 'package:flutter/material.dart';
class ProductImageDesign extends StatelessWidget {
  const ProductImageDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: 10,
          left: 10,
          child: IconButton(
            onPressed: () {
              print("Go back");
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
            ),
          ),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: IconButton(
            onPressed: () {
              print("Add to Fav");
            },
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
            ),
          ),
        ),
        Container(
          height: 180,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [
                colorApp.primary.withOpacity(0.7),
                colorApp.primary.withOpacity(0.3),
              ],
            ),
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
          ),
        ),
        Positioned(
          top: 30,
          right: 20,
          left: 20,
          child: Image.network(
            "https://te.eg/wps/wcm/connect/a8dc2d00-df65-4ecc-a22a-6b24ece3b296/Samsung-Galaxy-A34.png?MOD=AJPERES&CACHEID=a8dc2d00-df65-4ecc-a22a-6b24ece3b296",
            height: 250,
          ),
        ),
      ],
    );
  }
}
