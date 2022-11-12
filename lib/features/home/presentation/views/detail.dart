import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var country = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Country',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: ListView(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: SizedBox(
                height: 200,
                child: Stack(
                  children: [
                    PageView(
                      children: const [
                        Placeholder(),
                        Placeholder(),
                      ],
                    ),
                    Align(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_back_rounded),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward_rounded),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30.h),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Population: ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: '',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Region: ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: '',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Capital: ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: '',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Motto: ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: '',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.h),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Official Language: ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: '',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Ethnic Group: ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: '',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Religion: ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: '',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Government: ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: '',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.h),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Independence: ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: '1',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Area: ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: '',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Currency: ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: '',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'GDP: ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: '',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.h),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Timezone: ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: '',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Date format: ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: '',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Dailing code: ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: '',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Driving Side: ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: '',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
