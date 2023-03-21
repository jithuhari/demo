import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:orgayur_vendor_app/util/app_decorations.dart';
import 'package:orgayur_vendor_app/util/custom_sized_boxes.dart';
import 'package:orgayur_vendor_app/util/widgets/custom_button.dart';

import '../../resources/app_colors.dart';
import '../../util/app_appbar.dart';
import '../../util/widget_utils.dart';

class SettlementScreen extends StatelessWidget {
  const SettlementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.bgGrayColor,
      appBar:const CustomAppBar(autoLeading: true), 
      body: SafeArea(child: Container(
        padding: const EdgeInsets.fromLTRB(20, 0, 20,0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              
              children: [

              Column(children:const  [
                SizedBoxH10(),
                Text("Settled Amount",style: TextStyle(color: Colors.green,),),
                SizedBoxH5(),
                CustomButton(
                  hight: 40,
                 width: 100, 
                color: Colors.white,
                 text: "25000"
                 ),
              ],),
             

       
         Container(
      height: 30.0,
      width: 1.5,
      color: Colors.green,
      margin: const EdgeInsets.only(left: 10.0, right: 10.0,top: 22),
    ),
              Column(children:  [
               const   SizedBoxH10(),
               const  Text("pending Amount",style: TextStyle(color: Colors.green),),
               const   SizedBoxH5(),
                  WidgetUtils.linearGradiantButtonH40(text: "₹3500",
                 textColor: Colors.white,
                 gradient:AppColors.loginCardGradient ),



              ],)

            ],),


              const SizedBoxH10(),
               Padding(
                 padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
                 child: Row(children:const  [Text("Settlement History",
                 style: TextStyle(color: Colors.green,fontSize: 16,
               ),)],),),


               Expanded(
                child: ListView.separated(
                physics: const AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                
                itemBuilder: (BuildContext context, int index){
                  return Container(
                    decoration: AppDecoration.decorationColoredButtonRadius10(

                      color: AppColors.bgColor
                    ),
                    padding: const EdgeInsets.fromLTRB(12, 11, 12, 13),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:const  [
                           Text("Settled Amount"),
                           Text("12:05 PM | Jan 5, 2023")


                          
                        ]),
                      const   SizedBoxH10(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          
                          children: const [
                           Text("₹2560",style: TextStyle(
                            color: Colors.green,fontSize: 16,fontWeight: FontWeight.w400)),
                           Text("12:00 AM | Jan 3, 2023",)


                          
                        ]),
                      ],
                    ),
                  ) ;},
               separatorBuilder:(BuildContext context, int index) {
        return const SizedBoxH10(); },
               itemCount: 6))
          ],
        ),
      )),
    );
  }
}