
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../resources/app_colors.dart';
import '../../resources/app_strings.dart';
import '../../resources/drawables.dart';
import '../../util/app_appbar.dart';
import '../../util/app_decorations.dart';
import '../../util/custom_sized_boxes.dart';
import '../../util/custom_text_widget.dart';
import '../../util/widget_utils.dart';
import 'orders_details_screen.dart';

class OrdersListScreen extends StatelessWidget {
  OrdersListScreen({Key? key}) : super(key: key);

  List<String> items = [
    "All",
    "Pending",
    "Processing",
    "Delivered",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bgGreenColor,
        appBar: CustomAppBar(
            autoLeading: false,
            leadingWidget: WidgetUtils.widgets(
                child: Container(
              margin: const EdgeInsets.all(12),
              height: 40,
              width: 40,
              decoration: AppDecoration.decorationCircle(color: Colors.red),
              clipBehavior: Clip.antiAlias,
              alignment: Alignment.center,
              child: Image.asset(
                Drawables.avatar,
                fit: BoxFit.contain,
              ),
            )),
            actionWidget: WidgetUtils.widgets(
                child: Padding(
              padding: const EdgeInsets.all(18),
              child: Image.asset(
                Drawables.bellIcon,
                height: 27,
                width: 23.5,
              ),
            ))),
        body: ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 20),
          children: [
            horizontalScroll(
                color: Colors.black,
                title: AppStrings.all,
                bgColor: Colors.white),
            TextPOP14W400(AppStrings.totalOrders,
                textAlign: TextAlign.left, color: AppColors.textDarkGrayColor),
            const SizedBox(height: 8),
            verticalScroll()
          ],
        ));
  }

  Widget horizontalScroll(
      {required Color color, required String title, required Color bgColor}) {
    return SizedBox(
      height: 72,
      child: ListView.separated(
        padding: const EdgeInsets.fromLTRB(00, 27, 0, 14),
        physics: const AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: AppDecoration.decorationColoredRadius20(
                color:
                    index == 0 ? AppColors.primaryLoginGradiantColor : bgColor),
            height: 30,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
            child: TextPOP14W400(items.elementAt(index),
                textAlign: TextAlign.center,
                color: index == 0 ? AppColors.bgColor : color),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBoxW10();
        },
      ),
    );
  }

  Widget verticalScroll() {
    return ListView.separated(
      physics: const AlwaysScrollableScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return Container(
            decoration: AppDecoration.decorationColoredButtonRadius10(
                color: AppColors.bgColor),
            padding: const EdgeInsets.fromLTRB(12, 11, 12, 13),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextPOP16W400(AppStrings.orderId,
                        textAlign: TextAlign.left,
                        color: AppColors.textDarkGrayColor),
                    TextPOP20W500("₹354", color: AppColors.textPrimary3),
                  ],
                ),
                const SizedBox(height: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextPOP14W400("12:05 PM | Jan 5",
                        color: AppColors.textDarkGrayColor.withOpacity(.4)),
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 3, 10, 2),
                      width: 96,
                      decoration:
                          AppDecoration.decorationColoredButtonRadius4(
                              color: AppColors.primaryLoginGradiantColor),
                      child: Row(
                        children: [
                          TextPOP12W400("Processing",
                              color: AppColors.bgColor),
                          const SizedBox(width: 2),
                          Image.asset(
                            Drawables.pencil,
                            height: 11,
                            fit: BoxFit.contain,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    const DecoratedBox(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red),
                      child: SizedBox(width: 6, height: 6),
                    ),
                    const SizedBox(width: 6),
                    TextPOP12W400("Not Paid", color: AppColors.textRedColor),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextPOP12W400(
                        "Cash on delivery",
                        color: AppColors.textDarkGrayColor.withOpacity(.4),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    const SizedBox(width: 8),
                    _viewOrderDetails()
                  ],
                ),
              ],
            ));
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBoxH10();
      },
    );
  }
  Widget _viewOrderDetails(){
    return GestureDetector(
      onTap: (){
        Navigator.push(
          navigatorKey.currentContext!,
          MaterialPageRoute(builder: (context) =>  OrderDetailsScreen()),
        );
      },
      child: Row(
        children: [
          TextPOP12W400("View Details",
              color: AppColors.textPrimary3),
          const SizedBox(width: 2),
          Image.asset(
            Drawables.arrowRight,
            width: 18,
            fit: BoxFit.contain,
          )
        ],
      ),
    );
  }
}
