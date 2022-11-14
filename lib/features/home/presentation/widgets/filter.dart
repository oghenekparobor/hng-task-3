import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hng_task_3/features/home/presentation/notifier/home_service.dart';
import 'package:hng_task_3/main.dart';
import 'package:provider/provider.dart';

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
          GestureDetector(
            onTap: () => _filterDialog(),
            child: Container(
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
                  const Icon(Icons.filter_list),
                  SizedBox(width: 8.w),
                  Text(
                    'Filter',
                    style: Theme.of(context).textTheme.bodyText1,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _filterDialog() {
    showModalBottomSheet(
      context: navKey.currentContext!,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.r),
          topRight: Radius.circular(30.r),
        ),
      ),
      backgroundColor: Theme.of(navKey.currentContext!).backgroundColor,
      isScrollControlled: true,
      builder: (co) => Consumer<HomeService>(
        builder: (context, value, child) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(width: 10),
                    Text(
                      'Filter',
                      style: Theme.of(co).textTheme.bodyText1!.copyWith(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () => Navigator.of(co).pop(),
                      icon: const Icon(Icons.close),
                    ),
                  ],
                ),
                ExpansionTile(
                  tilePadding: EdgeInsets.zero,
                  title: Text(
                    'Continents',
                    style: Theme.of(co)
                        .textTheme
                        .bodyText2!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  children: [
                    for (var c in value.continents)
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                          vertical: 0,
                        ),
                        title: Text(
                          c,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        trailing: Checkbox(
                          value: value.checkC(c),
                          onChanged: (_) => value.arC(c),
                        ),
                      )
                  ],
                ),
                const SizedBox(height: 10),
                ExpansionTile(
                  tilePadding: EdgeInsets.zero,
                  title: Text(
                    'Timezones',
                    style: Theme.of(co)
                        .textTheme
                        .bodyText2!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  children: [
                    for (var t in value.timezones)
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                          vertical: 0,
                        ),
                        title: Text(
                          t,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        trailing: Checkbox(
                          value: value.checkT(t),
                          onChanged: (_) => value.arT(t),
                        ),
                      )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: GestureDetector(
                        onTap: (() => value.reset()),
                        child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'Reset',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      flex: 3,
                      child: MaterialButton(
                        onPressed: () => value.showResult(),
                        elevation: 0,
                        color: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Text(
                          'Show results',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
