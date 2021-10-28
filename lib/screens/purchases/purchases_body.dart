import 'package:basic/constants/color_constants.dart';
import 'package:basic/constants/textstyle_constants.dart';
import 'package:flutter/material.dart';

Widget purchasesBody(TabController tabController) {
  return TabBarView(
    // physics: NeverScrollableScrollPhysics(),
    controller: tabController,
    children: [
      genListView(),
      genListView(),
      genListView(),
    ],
  );
}

Column genListView() {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.only(
          right: 10,
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                keyboardType: TextInputType.text,
                style: bodyTextStyle,
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: captionTextStyle.merge(
                    TextStyle(color: lightGreyColor),
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(
                    left: 20,
                    top: 13,
                    bottom: 10,
                    right: 20,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                    color: greyColor,
                  ),
                ),
              ),
            ),
            Container(
              width: 1,
              color: greyColor,
              height: 35,
              margin: EdgeInsets.symmetric(horizontal: 10),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.filter_alt_outlined),
            ),
          ],
        ),
      ),
      Container(
        color: veryLightGreyColor,
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                margin: EdgeInsets.only(
                  left: 20,
                  right: 10,
                ),
                decoration: BoxDecoration(
                  color: lightGreyColor?.withOpacity(.3),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.filter_alt_outlined,
                      size: 17,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 0,
                        right: 10,
                      ),
                      child: Text(
                        'Filters',
                        style: labelBoldTextStyle,
                      ),
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Center(
                        child: Text(
                          '1',
                          style: labelBoldTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 7,
                ),
                margin: EdgeInsets.only(
                  right: 10,
                ),
                decoration: BoxDecoration(
                  color: lightGreyColor?.withOpacity(.3),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Text(
                  '01 Oct 2021 - 31 Oct 2021',
                  style: labelTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
      // Divider(
      //   height: 0,
      //   thickness: 3,
      // ),
      Expanded(
        child: ListView.separated(
          separatorBuilder: (_, __) {
            return Divider(
              height: 0,
            );
          },
          itemCount: 50,
          itemBuilder: (BuildContext context, int i) {
            return InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 20,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Crepes from Jim',
                            style: bodyTextStyle,
                          ),
                          SizedBox(height: 5),
                          Text(
                            '20 OCT 2021 • 06:23',
                            style: labelTextStyle.merge(
                              TextStyle(color: lightGreyColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'XAF10,000,000',
                        style: captionBoldTextStyle,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    ],
  );
}
