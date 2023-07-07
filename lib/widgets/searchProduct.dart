import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../Utlis/color..dart';

class SearchForProduct extends StatefulWidget {
  @override
  State<SearchForProduct> createState() => _SearchForProductState();
}

class _SearchForProductState extends State<SearchForProduct> {
  List<String> catgory = [
    'جميع النتائج',
    'الأعلى تقييماً',
    'الأثكر مبيعاً',
    'المتاجر',
    'المنتجات',
  ];
  List imageList = [
    'assets/small card.png',
    'assets/small card2.png',
    'assets/small card3.png',
    'assets/small card4.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 40,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: catgory.length,
                itemBuilder: (c, i) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: RC.primary),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          catgory[i],
                          style: TextStyle(
                            fontSize: 16,
                            color: RC.primary,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Container(
            margin: EdgeInsets.all(12),
            child: new MasonryGridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              itemCount: imageList.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12)),
                        child: Image(
                          image: AssetImage(imageList[index]),
                          fit: BoxFit.contain,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'ريال',
                                style: TextStyle(color: RC.primary),
                              ),
                              Text(
                                '  22',
                                style: TextStyle(color: RC.primary),
                              ),
                            ],
                          ),
                          Text("بوكية ورد"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Text(
                                "بوكية ورد",
                                style: TextStyle(),
                              ),
                              Text('1'),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
