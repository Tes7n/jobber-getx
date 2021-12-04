import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/instance_manager.dart';
import 'package:jobber/controllers/controllers.dart';
import 'package:jobber/models/job_model.dart';
import 'package:jobber/utils/utils.dart';
import 'package:jobber/utils/widgets/job_card.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final PostAdController _controller = Get.put(PostAdController());
  final HistoryController _historycontroller = Get.put(HistoryController());

//Todo: Image, UserName, JobcardScreen, Search, filter, chip
//Todo: bottom navigation controller
//Todo: extracting widgets to classes

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Positioned(
            child: Container(
              color: BrandColors.mwhite,
            ),
          ),
          Scaffold(
            backgroundColor: Colors.white10,
            body: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.w,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Good Morning Pankaj,',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                              Text(
                                'Find Your',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black),
                              ),
                              Text(
                                'Dream Job.',
                                style: Theme.of(context).textTheme.headline4,
                              ),
                            ],
                          ),
                          CircleAvatar(
                            radius: 30.r,
                            backgroundColor: BrandColors.mgrey,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Expanded(
                            child: _CustomSearchBar(),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.tune_outlined,
                              size: 30,
                              color: BrandColors.mblack,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.w,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Popular',
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w800,
                                    ),
                          ),
                          Text(
                            'Jobs',
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 10.w,
                      ),
                      height: 170.h,
                      width: MediaQuery.of(context).size.width - 15.w,
                      decoration: BoxDecoration(
                        color: BrandColors.mgrey,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15.r),
                          topLeft: Radius.circular(15.r),
                        ),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: 8.h),
                      child: Obx(
                        () => ListView.builder(
                          itemCount: _controller.jobs.length,
                          shrinkWrap: true,
                          reverse: false,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return JobCard(job: _controller.jobs[index]);
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.w,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Jobs',
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                          ),
                          Text(
                            'Near You.',
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w800,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 10.w,
                      ),
                      height: 360.h,
                      width: MediaQuery.of(context).size.width - 15.w * 2,
                      decoration: BoxDecoration(
                        color: BrandColors.mgrey,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.r),
                          topLeft: Radius.circular(15.r),
                        ),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: 8.h),
                      child: ListView.builder(
                        itemCount: Job.jobs.length,
                        reverse: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return JobCard(job: Job.jobs[index]);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 70.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 15.h),
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: _CustomNavBar(),
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomNavBar extends StatelessWidget {
  const _CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(30.r),
        ),
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey[400],
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: BrandColors.mPink.withOpacity(0.9),
            iconSize: 25.0,
            onTap: (int index) {
              Get.toNamed("/${index}");
            },
            items: items),
      ),
    );
  }
}

class _CustomSearchBar extends StatelessWidget {
  const _CustomSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      style: const TextStyle(
        fontSize: 18.0,
        color: Color(0xff9D9C9C),
      ),
      decoration: InputDecoration(
        hintText: "Search for a Job",
        hintStyle: const TextStyle(
          fontSize: 16.0,
          color: Color(0xff9D9C9C),
        ),
        prefixIcon: const Icon(
          Icons.search_outlined,
          color: Color(0xff9D9C9C),
          size: 25.0,
        ),
        isDense: true,
        filled: true,
        fillColor: BrandColors.mgrey,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Color(0xff9D9C9C),
            width: 1.0,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      cursorColor: const Color(0xff9D9C9C),
      cursorHeight: 25.0,
    );
  }
}

List<BottomNavigationBarItem> items = [
  const BottomNavigationBarItem(
    icon: Icon(
      Icons.home_outlined,
    ),
    activeIcon: Icon(
      Icons.home_rounded,
    ),
    label: "/home",
  ),
  const BottomNavigationBarItem(
      icon: Icon(
        Icons.explore_outlined,
      ),
      label: "/postad"),
  const BottomNavigationBarItem(
      icon: Icon(
        Icons.history_outlined,
      ),
      label: "/history"),
  const BottomNavigationBarItem(
      icon: Icon(
        Icons.notifications_outlined,
      ),
      label: "/notification"),
];
