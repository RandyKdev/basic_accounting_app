import 'package:basic/constants/color_constants.dart';
import 'package:basic/constants/textstyle_constants.dart';
import 'package:flutter/material.dart';

Widget salesBody(TabController tabController) {
  return TabBarView(
    physics: NeverScrollableScrollPhysics(),
    controller: tabController,
    children: [
      genListView(),
      genListView(),
      genListView(),
    ],
  );
}

ListView genListView() {
  return ListView.separated(
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
                      'Crepes pour Jim',
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
                  'Amoutn 234,095',
                  style: captionBoldTextStyle,
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
