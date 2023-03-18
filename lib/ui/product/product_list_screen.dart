
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orgayur_vendor_app/ui/product/products_edit_screen.dart';


import '../../resources/app_colors.dart';
import '../../resources/app_strings.dart';
import '../../resources/drawables.dart';
import '../../util/app_appbar.dart';
import '../../util/app_decorations.dart';
import '../../util/app_dropdown_textform_field_underline.dart';
import '../../util/custom_sized_boxes.dart';
import '../../util/custom_text_widget.dart';
import '../../util/widget_utils.dart';

class ProductListScreen extends StatelessWidget {
  ProductListScreen({Key? key}) : super(key: key);

  List<String> items = [
    "All",
    "Pending",
    "Processing",
    "Delivered",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap:(){

               Get.to( ProductEditScreen() );
            } ,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: AppColors.primaryColor,
              child: const Icon(Icons.add,color: Colors.white,size: 40,)),
          ),
        ],
      ),
        backgroundColor: AppColors.bgGreenColor,
        
        body: ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.all(20),
          children: [
            Row(
              children:  [
                const Text('Category'),
                const Spacer(),
                SizedBox(
                  width: 110,
                  height: 40,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    
                    child: const DropdownField(
                        hintText: AppStrings.shopType,
                        value: "Packed Food",
                        options: [
                          "Packed Food",
                          "SuperMarket",
                        ],
                      ),
                  ),
                ),
                const Spacer(),
                 const Text('Sort by '),
                 const Spacer(),
                 SizedBox(
                  width: 100,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: const DropdownField(
                        hintText: AppStrings.shopType,
                        value: "Availability",
                        options: [
                          "Availability",
                          "SuperMarket",
                        ],
                      ),
                  ),
                )
              ],
            ),

            verticalScroll()],
        ));
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
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 9),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    Drawables.productcactusplant,
                    width: 88,
                    height: 75,
                  ),
                  const SizedBoxH10(),
                  Container(
                    padding: const EdgeInsets.fromLTRB(12, 4, 11, 6),
                    decoration: AppDecoration.decorationColoredButtonRadius4(
                        color: AppColors.primaryLoginGradiantColor),
                    child: TextPOP12W400(AppStrings.removeItem,
                        color: AppColors.bgColor),
                  ),
                ],
              ),
              const SizedBoxW15(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextPOP17W500("Cactus Plant with Ceramic Pot Green Color",
                        textAlign: TextAlign.left,
                        color: AppColors.textDarkGrayColor),
                    const SizedBox(height: 8),
                    TextPOP14W400("Product Id: 615645645641",
                        textAlign: TextAlign.left,
                        color: AppColors.textDarkGrayColor.withOpacity(.3)),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextPOP12W400("Selling Price",
                                  textAlign: TextAlign.left,
                                  color: AppColors.textDarkGrayColor
                                      .withOpacity(.7)),
                              const SizedBox(height: 2),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextPOP18W500("₹354",
                                      color: AppColors.textPrimary3),
                                  const SizedBox(width: 5),
                                  Image.asset(Drawables.pencil,
                                      height: 10,
                                      fit: BoxFit.contain,
                                      color: AppColors.textPrimary3)
                                ],
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextPOP12W400("Quantity",
                                  textAlign: TextAlign.left,
                                  color: AppColors.textDarkGrayColor
                                      .withOpacity(.7)),
                              const SizedBox(height: 2),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextPOP18W500("254",
                                      color: AppColors.textPrimary3),
                                  const SizedBox(width: 5),
                                  Image.asset(Drawables.pencil,
                                      height: 10,
                                      fit: BoxFit.contain,
                                      color: AppColors.textPrimary3)
                                ],
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextPOP12W400("Status",
                                  textAlign: TextAlign.left,
                                  color: AppColors.textDarkGrayColor),
                              SizedBox(
                                height: 24,
                                width: 36,
                                child: Switch(
                                  activeColor: Colors.green,
                                  inactiveThumbColor: Colors.greenAccent,
                                  value: true,
                                  onChanged: (bool value) {},
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ]));
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBoxH10();
      },
    );
  }
}
