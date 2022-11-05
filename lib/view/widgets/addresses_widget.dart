import 'package:flutter/material.dart';
import 'package:flutter_task/theme/theme.dart';

class AddressesWidget extends StatelessWidget {
  AddressesWidget({Key? key}) : super(key: key);
  List addresses = [
    {
      "imgUrl": "assets/images/img1.jpg",
      "title": "Home Address",
      "address": "Moustafa St. No:2",
      "street": "Street x12"
    },
    {
      "imgUrl": "assets/images/img1.jpg",
      "title": "Office Address",
      "address": "Axis Istanbul,B2 Block",
      "street": "Floor 2,office 11"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      margin: EdgeInsets.all(10),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2.5,
            crossAxisSpacing: 10,
            mainAxisSpacing: 0,
          ),
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: addresses.length,
          itemBuilder: (context, index) => Container(
                padding: EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(color: DataTheme.secondaryColor, width: 1)),
                child: Row(
                  children: [
                    Image.asset(addresses[index]["imgUrl"],
                        width: 50, height: 50, fit: BoxFit.cover),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          addresses[index]["title"],
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          addresses[index]["address"],
                          style: TextStyle(
                              fontSize: 9, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          addresses[index]["street"],
                          style: TextStyle(
                              fontSize: 9, fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
              )),
    );
  }
}
