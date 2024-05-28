import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_switch.dart';

class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget({Key? key})
      : super(
        key: key,
      );
  
  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.h,
      child: Padding(
        padding: EdgeInsets.only(top: 7.v),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 8.h,
                vertical: 7.h,
              ),
              decoration: AppDecoration.fillGreen.copyWith(
                borderRadius: BorderRadiusStyle.roundBorder12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgClose,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                  ),
                  CustomSwitch(
                    margin: EdgeInsets.only(
                      left: 8.h,
                      right: 1.h,
                    ),
                    value: isSelectedSwitch,
                    onChange: (value){
                      isSelectedSwitch = value ?? false;
                    }
                  )
                ],
              ),
            ),
            SizedBox(height: 4.v),
            Padding(
              padding: EdgeInstes.only(left: 8.h),
              child: Text(
                "Kipas Angin",
                style: theme.textTheme.bodySmall,
              ),
            )
          ],
        ),
      ),
    );
  }
}