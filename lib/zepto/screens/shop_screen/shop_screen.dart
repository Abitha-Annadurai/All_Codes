import 'package:flutter/material.dart';
import 'package:gridviewclass/zepto/screens/shop_screen/widgets/banners.dart';
import 'package:gridviewclass/zepto/screens/shop_screen/widgets/gridcolumn.dart';
import 'package:gridviewclass/zepto/screens/shop_screen/widgets/grids.dart';
import 'package:gridviewclass/zepto/screens/shop_screen/widgets/offerpost.dart';
import '../../constants.dart';
import '../../mq.dart';
import 'widgets/best_selling.dart';
import 'widgets/exclusive_offers.dart';
import 'widgets/groceries.dart';
import 'widgets/meats.dart';
import 'widgets/search_field.dart';

class ShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MQuery().init(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 20, bottom: 10),
          child: Column(
            children: [
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.only(left: 8),
                color: Colors.purple,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('ZEPTO', style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),),
                    Row(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.account_balance_wallet, color: Colors.white)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.white)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.person, color: Colors.white)),
                      ],
                    )
                  ],
                ),
              ),
              //SizedBox(height: 10),
              OfferPost(),
              SizedBox(height: 10),
              SearchField(),
              SizedBox(height: 10),
              Banners(),
              SizedBox(height: 10),
              _buildSectiontitle('Explore By Categories', () {}),
              Grids(),
              GridColumn(),
              _buildSectiontitle('Exclusive Offers', () {}),
              ExclusiveOffers(),
              SizedBox(height: 10),
              _buildSectiontitle('Best Sellings', () {}),
              BestSellings(),
              SizedBox(height: 10),
              _buildSectiontitle('Groceries', () {}),
              Groceries(),
              SizedBox(height: 10),
              _buildSectiontitle('Meats', () {}),
              Meats(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectiontitle(String title, [onTap]) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: kTitleStyle.copyWith(fontSize: 18),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              'See all>',
              style: TextStyle(color: Colors.purple),
            ),
          ),
        ],
      ),
    );
  }
}
