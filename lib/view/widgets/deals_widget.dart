import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/theme/theme.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class DealsWidget extends StatelessWidget {
  DealsWidget({Key? key}) : super(key: key);
  List deals = [
    {
      "imgUrl": "assets/images/img1.jpg",
      "title": "Steak",
      "pieces": 5,
      "far": "15 Minutes Away",
      "priceBefore": 18,
      "priceAfter": 12
    },
    {
      "imgUrl": "assets/images/img1.jpg",
      "title": "Vegetables",
      "pieces": 7,
      "far": "15 Minutes Away",
      "priceBefore": 15,
      "priceAfter": 10
    },
    {
      "imgUrl": "assets/images/img1.jpg",
      "title": "Beverages",
      "pieces": 10,
      "far": "15 Minutes Away",
      "priceBefore": 20,
      "priceAfter": 15
    },
    {
      "imgUrl": "assets/images/img1.jpg",
      "title": "Fish",
      "pieces": 4,
      "far": "15 Minutes Away",
      "priceBefore": 8,
      "priceAfter": 4
    },
  ];
  CarouselController control = CarouselController();
  int categoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: deals.length,
        carouselController: control,
        itemBuilder: (context, index, realIndex) => Container(
              padding: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                  // color: Colors.amber,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  border:
                      Border.all(color: DataTheme.secondaryColor, width: 1)),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        alignment: Alignment.topLeft,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(deals[index]["imgUrl"])),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                      ),
                      Positioned(
                          top: -5,
                          left: -5,
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  LineAwesomeIcons.heart,
                                  size: 15,
                                )),
                          ))
                    ],
                  ),

                  // IconButton(
                  //     alignment: Alignment.topLeft,
                  //     padding: EdgeInsets.all(0),
                  //     color: Colors.amber,
                  //     onPressed: () {},
                  //     icon: Icon(
                  //       LineAwesomeIcons.heart,
                  //       color: Colors.white,
                  //     ))),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        deals[index]["title"],
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Pieces:${deals[index]["pieces"]}",
                        style:
                            TextStyle(fontSize: 9, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        deals[index]["far"],
                        style:
                            TextStyle(fontSize: 9, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text("${deals[index]["priceAfter"]}"),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "${deals[index]["priceBefore"]}",
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                                minimumSize:
                                    MaterialStateProperty.all(Size.zero),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                )),
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor: MaterialStateProperty.all(
                                    DataTheme.cartIconsbg)),
                            onPressed: () {},
                            child: Icon(
                              LineAwesomeIcons.shopping_cart,
                              color: DataTheme.cartIconsfg,
                              size: 30,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
        options: CarouselOptions(
          viewportFraction: .7,
          autoPlay: true,
          padEnds: false,
          height: 100,
          onPageChanged: (index, reason) {
            categoryIndex = index;
          },
        ));
  }
}
