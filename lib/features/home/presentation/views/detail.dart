import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var numb = NumberFormat();

    var country =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          country['name']['common'],
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
                      children: [
                        FancyShimmerImage(
                          imageUrl: country['flags']['png'],
                          boxFit: BoxFit.cover,
                          shimmerBackColor: Colors.grey.shade600,
                          shimmerBaseColor: Colors.grey.shade100,
                          errorWidget: Image.network(
                            'https://aeroclub-issoire.fr/wp-content/uploads/2020/05/image-not-found-300x225.jpg',
                            fit: BoxFit.cover,
                          ),
                          height: 40.h,
                          width: 40.w,
                        ),
                        if (country['coatOfArms'] != null)
                          if (country['coatOfArms']['png'] != null)
                            FancyShimmerImage(
                              imageUrl: country['coatOfArms']['png'],
                              boxFit: BoxFit.cover,
                              shimmerBackColor: Colors.grey.shade600,
                              shimmerBaseColor: Colors.grey.shade100,
                              errorWidget: Image.network(
                                'https://aeroclub-issoire.fr/wp-content/uploads/2020/05/image-not-found-300x225.jpg',
                                fit: BoxFit.cover,
                              ),
                              height: 40.h,
                              width: 40.w,
                            ),
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
                    text: numb.format(country['population']),
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
                    text: country['region'],
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
                    text: (country['capital'] as List).first,
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
                  for (var l in (country['languages'] as Map).entries)
                    TextSpan(
                      text: '${l.value}, ',
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
                  for (var i in (country['demonyms'] as Map).entries)
                    TextSpan(
                      text: '${(i.value as Map).entries.first.value}, ',
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
                    text: (country['independent'] as bool)
                        ? 'Independent'
                        : 'Under colonization',
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
                    text: numb.format(country['area']),
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
                  for (var c in (country['currencies'] as Map).entries)
                    TextSpan(
                      text: c.key,
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
                  for (var t in (country['timezones'] as List))
                    TextSpan(
                      text: '$t, ',
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
                    text: country['idd']['root'],
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
                    text: country['car']['side'],
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
