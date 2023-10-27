import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


 // ignore: must_be_immutable
 class ItemsWidget extends StatelessWidget{
  List img = [
    'curug1',
    'curug 2',
    'bunga 1',
    'bunga 2', 
    'langit malam',
    'api unggun',
 ];
  @override
  Widget build(BuildContext context){
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: (150/195),
      children: [
        for(int i = 0; i <img.length; i++)
        Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 8,
              ),
            ],
          ),
          child: Column(
            children: [
              InkWell(
                onTap: () {},
                

                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    "images/${img[i]}.jpg",
                    width: 120,
                    height: 120,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8),
                child : Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                  img[i],
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                    SizedBox(height: 8),
                    Text(
                      "My Best Picture",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black
                      ),
                    ),
                  ],
                ),
                ),
                ),
                // Padding(
                //   padding: EdgeInsets.symmetric(vertical: 5),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Text(
                //         "Love My Picture",
                //         style: TextStyle(
                //           fontSize: 18,
                //           fontWeight: FontWeight.w400,
                //           color: Color.fromARGB(255, 0, 0, 0),
                //         ),
                //       ),
                //       Container(
                //         padding: EdgeInsets.all(5),
                //         decoration: BoxDecoration(
                //           color: Color.fromARGB(255, 255, 255, 255),
                //           borderRadius: BorderRadius.circular(20),
                //         ),
                //         child: Icon(
                //           CupertinoIcons.heart,
                //             size: 20,
                //         ),
                //       ),
                //     ],
                //   ),
                //   ),
          ],),
        ),
      ],
    );
  }
 }