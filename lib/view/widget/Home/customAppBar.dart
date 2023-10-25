import 'package:flutter/material.dart';
class customAppBar extends StatelessWidget {
   customAppBar({Key? key, this.onPressed,this.onPressedNoti}) : super(key: key);
 final void Function()? onPressed;
   final void Function()? onPressedNoti;

   @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.only(top: 30),
      child: Row(
        children: [
          Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Search.. ',
                    prefixIcon: IconButton(
                      onPressed: onPressed,
                      icon: Icon(Icons.search),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius:
                        BorderRadius.all(Radius.circular(20))),
                    filled: true,
                    fillColor: Colors.grey[300]),
              )),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius:
                BorderRadius.all(Radius.circular(15))),
            child: IconButton(
              onPressed: onPressedNoti,
              icon: Icon(
                Icons.notifications_active_outlined,
                color: Colors.grey[400],
              ),
            ),
          )
        ],
      ),
    );
  }
}
