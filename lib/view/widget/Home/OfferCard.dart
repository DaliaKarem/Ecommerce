import 'package:ecommerce/core/const/color.dart';
import 'package:flutter/material.dart';
class OfferCard extends StatelessWidget {
  const OfferCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Stack(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
                color: colorApp.primary,
                borderRadius:
                BorderRadius.all(Radius.circular(12))),
            child: ListTile(
              title: Text(
                "Discount",
                style: TextStyle(
                    color: Colors.grey[400], fontSize: 30),
              ),
              subtitle: Text(
                "Here is great Offer \n 20%OFF",
                style: TextStyle(
                    color: Colors.grey[400], fontSize: 15),
              ),
            ),
          ),
          Positioned(
              top: -20,
              right: -20,
              child: Container(
                height: 155,
                width: 155,
                decoration: BoxDecoration(
                    color: Colors.indigo.shade700,
                    borderRadius:
                    BorderRadius.all(Radius.circular(180))),
              )),
          Positioned(
              top: 50,
              right: 120,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.indigo.shade600,
                    borderRadius:
                    BorderRadius.all(Radius.circular(180))),
              )),
          Positioned(
              top: 0,
              right: 120,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.indigo.shade500,
                    borderRadius:
                    BorderRadius.all(Radius.circular(180))),
              )),
        ],
      ),
    );
  }
}
