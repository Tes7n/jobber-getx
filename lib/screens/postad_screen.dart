import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobber/controllers/controllers.dart';
import 'package:jobber/utils/utils.dart';
import 'package:get/get.dart';

class PostAdScreen extends StatelessWidget {
  PostAdScreen({Key? key}) : super(key: key);
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  final TextEditingController _nameOYSController = TextEditingController();
  final TextEditingController _serviceAController = TextEditingController();
  final TextEditingController _fieldOWController = TextEditingController();
  final PostAdController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: BrandColors.mwhite,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 25.h,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                      iconSize: 25.h,
                      color: BrandColors.mPink,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'Post An',
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            fontWeight: FontWeight.w900, color: Colors.black),
                      ),
                      Text(
                        'Advertisement.',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Image.asset(
                    "assets/images/postad.png",
                    height: 120.h,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Reach more Customers and Employers!',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        'Start by posting Your Service Ad.',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            fontWeight: FontWeight.w600, color: Colors.black),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.h),
                  child: Form(
                    key: _loginFormKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          autofocus: false,
                          controller: _nameOYSController,
                          style: const TextStyle(
                              fontSize: 20.0, color: Colors.black),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 25.w, vertical: 12.h),
                            hintText: "Name Of Your Service",
                            hintStyle: const TextStyle(
                              fontSize: 16.0,
                              color: Color(0xff9D9C9C),
                            ),
                            isDense: true,
                            filled: true,
                            fillColor: BrandColors.mgrey,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color(0xff9D9C9C),
                                width: 1.0,
                              ),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none),
                          ),
                          cursorColor: const Color(0xff9D9C9C),
                          validator: (value) {
                            return _validateField(value!);
                          },
                          cursorHeight: 25.0,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        TextFormField(
                          autofocus: false,
                          controller: _serviceAController,
                          validator: (value) {
                            return _validateField(value!);
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          style: const TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 25.w, vertical: 12.h),
                            hintText: "Service Area",
                            hintStyle: const TextStyle(
                              fontSize: 16.0,
                              color: Color(0xff9D9C9C),
                            ),
                            isDense: true,
                            filled: true,
                            fillColor: BrandColors.mgrey,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color(0xff9D9C9C),
                                width: 1.0,
                              ),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none),
                          ),
                          cursorColor: const Color(0xff9D9C9C),
                          cursorHeight: 25.0,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        TextFormField(
                          autofocus: false,
                          controller: _fieldOWController,
                          validator: (value) {
                            return _validateField(value!);
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          style: const TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 25.w, vertical: 12.h),
                            hintText: "Field Of Work",
                            hintStyle: const TextStyle(
                              fontSize: 16.0,
                              color: Color(0xff9D9C9C),
                            ),
                            isDense: true,
                            filled: true,
                            fillColor: BrandColors.mgrey,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color(0xff9D9C9C),
                                width: 1.0,
                              ),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none),
                          ),
                          cursorColor: const Color(0xff9D9C9C),
                          cursorHeight: 25.0,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'By Submitting This Advertisement, You Agree To Share Your Contact Details with Customers and Employers on the Hyre Me Platform.',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          _controller.postAdJob(
                              _nameOYSController.text,
                              _serviceAController.text,
                              _fieldOWController.text);
                          Get.snackbar("Success", "Job Ad Posted",
                              snackPosition: SnackPosition.BOTTOM,
                              backgroundColor:
                                  BrandColors.mgrey.withOpacity(.7),
                              colorText: Colors.black);
                          Get.back();

                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: BrandColors.mPink,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 14.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "POST ADVERTISEMENT",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w500,
                                        color: BrandColors.mwhite),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                size: 18.h,
                                color: BrandColors.mwhite,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String? _validateField(String value) {
    if (value.isEmpty) {
      return "Provide the asked field";
    }
    return null;
  }
}

class _CustomSearchBar extends StatelessWidget {
  _CustomSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      style: const TextStyle(
        fontSize: 20.0,
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
