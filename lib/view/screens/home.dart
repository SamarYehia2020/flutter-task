import 'package:flutter/material.dart';
import 'package:flutter_task/theme/theme.dart';
import 'package:flutter_task/view/widgets/addresses_widget.dart';
import 'package:flutter_task/view/widgets/ads_widget.dart';
import 'package:flutter_task/view/widgets/appbar_widget.dart';
import 'package:flutter_task/view/widgets/category_widget.dart';
import 'package:flutter_task/view/widgets/deals_widget.dart';
import 'package:flutter_task/view/widgets/footer_widget.dart';
import 'package:flutter_task/view/widgets/search_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppbarWidget(),
      body: Stack(children: [
        Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
              padding: EdgeInsets.only(bottom: 70),
              child: Column(
                children: [
                  SearchWidget(),
                  AddressesWidget(),
                  //categories widget
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Explore by Category",
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.bold),
                            ),
                            Text("See All (36)")
                          ]),
                      CategorySliderWidget()
                    ],
                  ),
                  //deals widget
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Deals of the day",
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      DealsWidget()
                    ],
                  ),
                  AdsWidget(),
                ],
              ),
            )),
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            width: 350,
            height: 70,
            child: FooterWidget(),
          ),
        ),
        Positioned(
            bottom: 40,
            left: 130,
            child: Container(
                // alignment: Alignment.center,
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: DataTheme.mainColor,
                    image: DecorationImage(
                        image: AssetImage("assets/images/cart.png"))),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Text(
                    "91",
                    style: TextStyle(color: Colors.white),
                  ),
                ))),
      ]),
    ));
  }
}
