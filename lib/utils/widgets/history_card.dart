import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobber/models/models.dart';

import '../utils.dart';

class HistoryCard extends StatelessWidget {
  final History history;
  const HistoryCard({
    Key? key,
    required this.history,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: BrandColors.mwhite,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 110.w,
                      child: Text(
                        history.job.jobtitle,
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              fontWeight: FontWeight.w900,
                              color: history.isCompleted
                                  ? Colors.black
                                  : BrandColors.mPink,
                            ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      width: 110.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            history.job.serviceName,
                            style:
                                Theme.of(context).textTheme.headline6!.copyWith(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w800,
                                      color: history.isCompleted
                                          ? Colors.black
                                          : BrandColors.mPink,
                                    ),
                          ),
                          Text(
                            history.job.fieldOfWork,
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 10.sp,
                                      color: history.isCompleted
                                          ? Colors.black
                                          : BrandColors.mPink,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      " \$10-100 / month ",
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: history.isCompleted
                                ? Colors.black
                                : BrandColors.mPink,
                          ),
                    ),
                    Chip(
                      label: Text(
                        "Full Time",
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            fontSize: 10.sp, color: BrandColors.mwhite),
                      ),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            color: BrandColors.mwhite, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: history.isCompleted
                          ? Colors.black
                          : BrandColors.mPink,
                    ),
                  ],
                ),
                SizedBox(
                  width: 60.w,
                  child: Text(
                    history.isCompleted ? "Completed" : "Ongoing",
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: history.isCompleted
                            ? Colors.black
                            : BrandColors.mPink,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 2.0,
            ),
          ],
        ),
      ),
    );
  }
}
