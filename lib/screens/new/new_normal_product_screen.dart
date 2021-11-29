import 'package:basic/Enums/button_size_enums.dart';
import 'package:basic/classes/spacing_class.dart';
import 'package:basic/constants/color_constants.dart';
import 'package:basic/constants/textstyle_constants.dart';
import 'package:basic/screens/edit/edit_expense_screen.dart';
import 'package:basic/screens/edit/edit_service1_screen.dart';
import 'package:basic/screens/edit/edit_service_screen.dart';
import 'package:basic/screens/new/new_item_screen.dart';
import 'package:basic/screens/upload/upload_item_screen.dart';
import 'package:basic/screens/upload/upload_product_screen.dart';
import 'package:basic/widgets/appbar_button_widget.dart';
import 'package:basic/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NewNormalProductScreen extends StatelessWidget {
  const NewNormalProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([
      SystemUiOverlay.top,
      SystemUiOverlay.bottom,
    ]);

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: primaryColor,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: desaturatedGreyColor,
    ));

    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: primaryColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppBarButtonWidget(
              icon: Icon(
                Icons.arrow_back_ios,
                size: 17,
              ),
              isIconSameSize: false,
              onTap: () {
                Navigator.of(context).pop();
              },
              size: ButtonSize.small,
              text: 'Return',
            ),
            AppBarButtonWidget(
              icon: Image.asset('images/edit_icon.png'),
              isIconSameSize: true,
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext ctx) {
                  return UploadItemScreen();
                }));
              },
              size: ButtonSize.small,
              text: 'Edit',
            ),
          ],
        ),
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          child: Container(
            margin: EdgeInsets.only(
              left: 20,
              bottom: 20,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Select a product',
                style: h6TextStyle.merge(TextStyle(color: whiteColor)),
              ),
            ),
          ),
          preferredSize: Size.fromHeight(60),
        ),
      ),
      body: Column(
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
          Divider(
            height: 0,
            thickness: 3,
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
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext ctx) {
                      return EditExpenseScreen();
                    }));
                  },
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
                                'Crepes au chocolat',
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
                            '20 in stock',
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
      ),
      persistentFooterButtons: [
        Container(
            padding: EdgeInsets.all(10),
            child: ButtonWidget(
              backgroundColor: Colors.transparent,
              outlined: true,
              loading: false,
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext ctx) {
                  return EditService1Screen();
                }));
              },
              size: ButtonSize.big,
              text: 'Create a new product',
              textColor: accentColor!,
            )),
      ],
    );
  }
}
