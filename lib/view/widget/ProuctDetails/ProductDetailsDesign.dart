import 'package:flutter/material.dart';
class ProductDetailsDesign extends StatelessWidget {
   ProductDetailsDesign({Key? key, required this.itemName, required this.categryName, required this.itemDesc, required this.itemDiscount, required this.itemPrice, required this.res}) : super(key: key);
 String? itemName,itemDesc;
 String? categryName;
 String? itemDiscount,itemPrice,res;
  @override
  Widget build(BuildContext context) {
    return
      Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            itemName!,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.black, fontSize: 20),
          ),
          Center( // Center the "Type" and price
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center, // Center the row horizontally
              children: [
                Text(
                  "Type: ",
                  style: Theme.of(context).textTheme.bodyText1!,
                ),
                Text(
                  categryName!,
                  style: Theme.of(context).textTheme.bodyText1!,
                ),
              ],
            ),
          ),
          (itemDiscount != "0")
              ? Container(
            alignment: Alignment.center,
            //padding: const EdgeInsets.only(left: 18.0),
            child: Row(
              children: [
                Text("\$${itemPrice}",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(

                      decoration: TextDecoration.lineThrough,
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text("\$${res}",
                      style:
                      Theme.of(context).textTheme.bodyText1!),
                ),
              ],
            ),
          )
              : Container(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text(
              "\$${itemPrice}",
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              itemDesc! +"" +itemDesc! +"" +itemDesc! +""+itemDesc! +"" +itemDesc! +"" +itemDesc! +""+itemDesc! +"" +itemDesc! +"" +itemDesc! +"",
                style: Theme.of(context).textTheme.bodyText1),
          )
        ],
      ),
    );
  }
}
