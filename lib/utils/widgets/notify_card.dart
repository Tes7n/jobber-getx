import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobber/models/models.dart';

import '../utils.dart';

class NotifyCard extends StatelessWidget {
  final Notify notify;
  const NotifyCard({
    Key? key,
    required this.notify,
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
              children: [
                SizedBox(
                  width: 60.w,
                  child: Text(
                    notify.isFrequent ? "Today" : "Older",
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                  ),
                ),
                SizedBox(
                  width: 250.w,
                  child: const Divider(
                    thickness: 2.0,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 220.w,
                  child: Text(
                    "Your request for Manager at ${notify.job.serviceName} has been shortlisted. Please contact 9074770963 for further information. ",
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 12.sp),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 60.w,
                      height: 25.h,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: BrandColors.mPink,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          "View",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(
                                  color: BrandColors.mwhite, fontSize: 8.sp),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      width: 60.w,
                      child: Center(
                        child: Text(
                          notify.isFrequent ? "1 min ago" : "Yesterday",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(
                                  color: BrandColors.grey, fontSize: 12.sp),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
