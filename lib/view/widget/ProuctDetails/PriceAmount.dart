import 'package:flutter/material.dart';
class PriceAmount extends StatelessWidget {
   PriceAmount({Key? key,required this.Amount,required this.add,required this.min}) : super(key: key);
String?Amount;
   void Function()? add;
   void Function()? min;
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 60,
        margin: EdgeInsets.all(20),
        child:Row(
          children: [
            IconButton(onPressed: add, icon: Icon(Icons.remove)),
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(bottom: 10),
                width: 50,
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                ),
                child: Text(Amount!,style: TextStyle(fontSize: 15,height: 1.5),)),
            IconButton(onPressed: min, icon: Icon(Icons.add)),

          ],
        )
    );
  }
}
