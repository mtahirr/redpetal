import 'package:flutter/material.dart';

import '../Utlis/color..dart';

class FindPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/map.png')),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (c, i) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: RC.primary),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Image.asset('assets/small card.png'),
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    'متجر الزهور',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: RC.primary),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text('5.0'),
                                          Icon(
                                            Icons.star,
                                            color: RC.primary,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text('كم3'),
                                          Icon(
                                            Icons.location_on,
                                            color: RC.primary,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
