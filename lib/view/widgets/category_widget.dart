import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CategorySliderWidget extends StatelessWidget {
  CategorySliderWidget({Key? key}) : super(key: key);
  List categories = [
    {"imgUrl": "assets/images/img1.jpg", "title": "Steak"},
    {"imgUrl": "assets/images/img1.jpg", "title": "Vegetables"},
    {"imgUrl": "assets/images/img1.jpg", "title": "Beverages"},
    {"imgUrl": "assets/images/img1.jpg", "title": "Fish"},
    {"imgUrl": "assets/images/img1.jpg", "title": "Juice"},
    {"imgUrl": "assets/images/img1.jpg", "title": "Chickens"},
    {"imgUrl": "assets/images/img1.jpg", "title": "Juice"}
  ];
  CarouselController control = CarouselController();
  int categoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: categories.length,
        carouselController: control,
        itemBuilder: (context, index, realIndex) => Container(
            alignment: Alignment.center,
            width: 150,
            padding: EdgeInsets.symmetric(
              vertical: 5,
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(categories[index]["imgUrl"])),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber),
                  child: GestureDetector(
                    onTap: () {},
                  )),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                categories[index]["title"],
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
              ))
            ])),
        options: CarouselOptions(
          viewportFraction: .20,
          autoPlay: true,
          height: 120,
          onPageChanged: (index, reason) {
            categoryIndex = index;
          },
        ));
  }
}
