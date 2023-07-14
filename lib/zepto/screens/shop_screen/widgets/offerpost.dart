import 'package:flutter/material.dart';

class OfferPost extends StatefulWidget {
  const OfferPost({Key? key}) : super(key: key);

  @override
  State<OfferPost> createState() => _OfferPostState();
}

class _OfferPostState extends State<OfferPost> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      //color: Colors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(5),
            height: 70,
            width: 70,
            color: Colors.black12,
            child: Center(child: Text('Free Delivery Above Rs.149',
                style: TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.bold))),
          ),
          Container(
            child: Center(child: Text('Delivery To You In 16 Mins',
                style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold))),
          ),
          Container(
            padding: EdgeInsets.all(5),
            height: 70,
            width: 70,
            color: Colors.black12,
            child: Center(child: Text('Free Delivery Above Rs.149',
                style: TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.bold))),
          )
        ],
      ),
    );
  }
}
