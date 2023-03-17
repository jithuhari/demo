import 'package:flutter/material.dart';

import '../resources/app_colors.dart';

class CustomAppBar extends StatefulWidget with PreferredSizeWidget {
  final String? title;
  final bool? autoLeading;
  final Widget? leadingWidget;
  final Widget? actionWidget;
  final double? kToolbarHeightOptional;

  const CustomAppBar({
    Key? key,
    this.title, this.autoLeading, this.leadingWidget, this.actionWidget, this.kToolbarHeightOptional,
  }) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize =>  Size.fromHeight(kToolbarHeightOptional ?? kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: widget.autoLeading != false ? true : false,
      leading: widget.leadingWidget ,
       actions: [
        if(widget.actionWidget != null)  widget.actionWidget!
      ],
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: AppColors.loginCardGradient,
        ),
      ),
    );
  }
}
