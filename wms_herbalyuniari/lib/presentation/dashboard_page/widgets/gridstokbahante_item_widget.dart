import "package:flutter/material.dart";
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';

class GridstokbahanteItemWidget extends StatelessWidget {
  const GridstokbahanteItemWidget({Key? key})
      :super(
        key: key,
      );
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomIconButton(
          height: 60.adaptSize,
          width: 60.adaptSize,
          padding: EdgeInsets.all(15.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgThumbsUp,
          ),
        ),
        SizedBox(height: 9.v),
        Container(
          width: 229.adaptSize,
          margin: EdgeInsets.only(left: 13.h),
          child: Text(
            "Stok\nBahan",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.labelSmall,
          ),
        )
      ],
    );
  }
}