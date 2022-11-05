import 'package:flutter/material.dart';
import 'package:flutter_task/theme/theme.dart';
import 'package:flutter_task/view/widgets/appbar_widget.dart';
import 'package:flutter_task/view/widgets/footer_widget.dart';

class CartScreen extends StatelessWidget {
  List items = [
    {
      "imgUrl": "assets/images/img1.jpg",
      "title": "Steak",
      "content": "173 Grams",
      "far": "15 Minutes Away",
      "price": 28,
    },
    {
      "imgUrl": "assets/images/img1.jpg",
      "title": "Vegetables",
      "content": "173 Grams",
      "far": "15 Minutes Away",
      "price": 20,
    },
    {
      "imgUrl": "assets/images/img1.jpg",
      "title": "Beverages",
      "content": "173 Grams",
      "far": "15 Minutes Away",
      "price": 15,
    },
    {
      "imgUrl": "assets/images/img1.jpg",
      "title": "Fish",
      "content": "173 Grams",
      "far": "15 Minutes Away",
      "price": 8,
    },
    {
      "imgUrl": "assets/images/img1.jpg",
      "title": "Fish",
      "content": "173 Grams",
      "far": "15 Minutes Away",
      "price": 8,
    },
    {
      "imgUrl": "assets/images/img1.jpg",
      "title": "Fish",
      "content": "173 Grams",
      "far": "15 Minutes Away",
      "price": 8,
    },
    {
      "imgUrl": "assets/images/img1.jpg",
      "title": "Fish",
      "content": "173 Grams",
      "far": "15 Minutes Away",
      "price": 8,
    },
  ];
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
                Container(
                  padding: EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Cart",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                ListView.builder(
                  itemExtent: 100,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (context, index) => Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: DataTheme.secondaryColor, width: 1)),
                          child: Row(
                            children: [
                              Image.asset(items[index]["imgUrl"],
                                  width: 70, height: 70, fit: BoxFit.cover),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    items[index]["title"],
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    items[index]["content"],
                                    style: TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    items[index]["price"].toString(),
                                    style: TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.zero,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                style: ButtonStyle(
                                    minimumSize:
                                        MaterialStateProperty.all(Size.zero),
                                    padding: MaterialStateProperty.all(
                                        EdgeInsets.symmetric(
                                            horizontal: 2, vertical: 2)),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                                    elevation: MaterialStateProperty.all(0),
                                    backgroundColor: MaterialStateProperty.all(
                                        DataTheme.cartIconsbg)),
                                onPressed: () {},
                                child: Icon(
                                  Icons.add,
                                  color: DataTheme.cartIconsfg,
                                  size: 30,
                                ),
                              ),
                              Text(
                                "1",
                                style: TextStyle(fontWeight: FontWeight.bold),
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
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                                    elevation: MaterialStateProperty.all(0),
                                    backgroundColor: MaterialStateProperty.all(
                                        DataTheme.cartIconsbg)),
                                onPressed: () {},
                                child: Icon(
                                  Icons.remove,
                                  color: DataTheme.cartIconsfg,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
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
