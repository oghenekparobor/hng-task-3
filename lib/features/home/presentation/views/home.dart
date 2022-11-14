import 'dart:async';

import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hng_task_3/core/constants-n-assets/assets.dart';
import 'package:hng_task_3/features/home/presentation/notifier/home_service.dart';
import 'package:provider/provider.dart';

import '../../../../config/route/route.dart';
import '../widgets/filter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    Future.delayed(Duration.zero, _init);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(kLogo, scale: 2),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.dark_mode),
          )
        ],
      ),
      body: Consumer<HomeService>(
        builder: (context, value, child) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              TextField(
                autofocus: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  filled: true,
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search Country',
                ),
                onChanged: (v) => value.searchCounrttry(v),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const Filters(),
              Expanded(
                child: value.countries == null
                    ? Center(
                        child: TextButton(
                          onPressed: () => value.getCountries(),
                          child: const Text('Try Again'),
                        ),
                      )
                    : ListView(
                        children: [
                          for (var t in value.countries!)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                SizedBox(height: 16.h),
                                Text(
                                  t.entries.first.key,
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                const SizedBox(height: 8),
                                for (var e in (t.entries.first.value))
                                  ListTile(
                                    onTap: () => Navigator.of(context)
                                        .pushNamed(Routes.more, arguments: e),
                                    contentPadding: EdgeInsets.zero,
                                    leading: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.r),
                                      child: FancyShimmerImage(
                                        imageUrl: e['flags']['png'],
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
                                    ),
                                    title: Text(
                                      e['name']['common'],
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    subtitle: Text(
                                      e['name']['official'],
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                              ],
                            )
                        ],
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  FutureOr _init() {
    Provider.of<HomeService>(context, listen: false).getCountries();
  }
}
