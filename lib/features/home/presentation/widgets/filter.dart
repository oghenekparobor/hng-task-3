import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Filters extends StatelessWidget {
  const Filters({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 5.w,
              vertical: 5.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                width: 1,
                color: Colors.grey,
              ),
            ),
            child: Row(
              children: [
                const Icon(Icons.language),
                SizedBox(width: 8.w),
                Text(
                  'EN',
                  style: Theme.of(context).textTheme.bodyText1,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 5.w,
              vertical: 5.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                width: 1,
                color: Colors.grey,
              ),
            ),
            child: Row(
              children: [
                const Icon(Icons.filter),
                SizedBox(width: 8.w),
                Text(
                  'Filter',
                  style: Theme.of(context).textTheme.bodyText1,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
