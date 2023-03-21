
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orgayur_vendor_app/ui/earnings/settlement_screen.dart';
import 'package:orgayur_vendor_app/ui/login/settings_screen.dart';
import 'package:orgayur_vendor_app/util/custom_sized_boxes.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_strings.dart';
import '../../resources/drawables.dart';
import '../../util/app_appbar.dart';
import '../../util/app_decorations.dart';
import '../../util/custom_text_widget.dart';
import '../../util/widget_utils.dart';
import '../../util/widgets/custom_button.dart';





class EarningList extends StatelessWidget {
  const EarningList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.bgGrayColor,
     
      
      body: SafeArea(child: Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20,0),
        child: Column(
       
         
          children: [
            const SizedBoxH10(),
            const Center(child: Text("My Total Earnings")),
             const SizedBoxH10(),
             WidgetUtils.linearGradiantButtonH40(text: "₹3500",
             textColor: Colors.white,
             gradient:AppColors.loginCardGradient ),
           const SizedBoxH5(),
               CustomButton(text: "View settlement",
              hight: 30,width: 150,color: Colors.white,
              onTap: (){
            Get.to(const SettlementScreen() );
          } 
              
              ),
               const SizedBoxH5(),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(children:const  [Text("Earnings",
                 style: TextStyle(color: Colors.green,fontSize: 18,
                 fontWeight: FontWeight.bold),)],),
               ),
               Expanded(child: ListView.separated(
                physics: const AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                
                itemBuilder: (BuildContext context, int index){
                  return Container(
                    decoration:AppDecoration.decorationColoredButtonRadius10(
                color: AppColors.bgColor), 
                 padding: const EdgeInsets.fromLTRB(12, 11, 12, 13),
                child:Row(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         TextPOP16W400(AppStrings.orderId,
                         textAlign: TextAlign.left,
                        color: AppColors.textDarkGrayColor),
                      const SizedBoxH10(),
                      
                
                      TextPOP14W300("12:05 PM | Jan 5",
                      color: AppColors.textDarkGrayColor.withOpacity(.4),
                       textAlign:TextAlign.left,

                      ),

                     const    SizedBoxH10(),
                   


                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Column(children: [
                        TextPOP14W300("Your Earnings", 
                      color: AppColors.textGrayColorMedium),
                      const SizedBoxW10(),
                      TextPOP14W300("Order Value", 
                        color: AppColors.textGrayColorMedium),
                           const SizedBoxW10(),
                        TextPOP14W300("Admin Commission", 
                      color: AppColors.textGrayColorMedium),
                     
                      ],),
                       Column(children: [
                        
                       TextPOP20W500("₹340", 
                      color: AppColors.textPrimary3),
                       const SizedBoxW10(),
                      TextPOP14W300("₹300", 
                      color: AppColors.textGrayColorMedium),
                      const SizedBoxW10(),
                      TextPOP14W300("₹30",
                       color: AppColors.textGrayColorMedium),

                      ],),
                    ],)
                  

                ],) ,


                  );
                }
               , 
                separatorBuilder: (BuildContext context, int index) {
        return const SizedBoxH10();
      },
               itemCount: 4))
                          
          ],
        ),
      )),
    );
  }
}

