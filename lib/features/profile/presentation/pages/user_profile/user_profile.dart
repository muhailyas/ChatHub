import 'package:chathub/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text("Profile"),
        ),
        body: Column(
          children: [
            const SizedBox(width: double.infinity),
            Stack(
              children: [
                Container(
                  height: 140.h,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://imgs.search.brave.com/9HZUq2wCtup2lbzmW230Bep7WzPEvBsBXTk9Q2cbYLc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTI4/MTk5ODUxOS9waG90/by9wcm9maWxlLXBv/cnRyYWl0LW9mLXdv/bWFuLmpwZz9zPTYx/Mng2MTImdz0wJms9/MjAmYz1NdF9meTNH/SzFka2hyR3BfUGtu/VmpFR2VNTWpfcVNB/QWJIWWtYLWYtMy1r/PQ"))),
                ),
                Positioned(
                    bottom: 5.sp,
                    right: 110.sp,
                    child: InkWell(
                        onTap: () {},
                        child: Container(
                            height: 30.h,
                            width: 30.h,
                            decoration: const BoxDecoration(
                              color: CustomColor.secondarySaffron,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.photo_camera,
                              color: Colors.black,
                            ))))
              ],
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.account_circle_rounded,
                          color: CustomColor.secondarySaffron),
                      SizedBox(width: 20.w),
                      Text(
                        "Username",
                        style: TextStyle(
                          color: CustomColor.greyColor,
                          fontSize: 15.sp,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 45.w),
                      Text("Mary John",
                          style: TextStyle(
                            fontSize: 17.sp,
                            color: CustomColor.whiteColor,
                            fontWeight: FontWeight.w400,
                          )),
                      const Spacer(),
                      const Icon(Icons.edit,
                          color: CustomColor.secondarySaffron),
                    ],
                  ),
                  SizedBox(height: 5.h),
                  Divider(
                    indent: 45.w,
                    thickness: 1.5,
                    color: CustomColor.secondarySaffron,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            // second
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.info_outline,
                          color: CustomColor.secondarySaffron),
                      SizedBox(width: 20.w),
                      Text(
                        "About",
                        style: TextStyle(
                          color: CustomColor.greyColor,
                          fontSize: 15.sp,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 45.w),
                      SizedBox(
                        width: 250.w,
                        child: Text(
                          "I'm passionate flutter developer",
                          style: TextStyle(
                            fontSize: 17.sp,
                            color: CustomColor.whiteColor,
                            fontWeight: FontWeight.w400,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.edit,
                          color: CustomColor.secondarySaffron),
                    ],
                  ),
                  SizedBox(height: 5.h),
                  Divider(
                    indent: 45.w,
                    thickness: 1.5,
                    color: CustomColor.secondarySaffron,
                  ),
                ],
              ),
            ),
            // 3
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.call,
                          color: CustomColor.secondarySaffron),
                      SizedBox(width: 20.w),
                      Text(
                        "Phone",
                        style: TextStyle(
                          color: CustomColor.greyColor,
                          fontSize: 15.sp,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 45.w),
                      Text("+91 9876543210",
                          style: TextStyle(
                            fontSize: 17.sp,
                            color: CustomColor.whiteColor,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                  SizedBox(height: 5.h),
                  Divider(
                    indent: 45.w,
                    thickness: 1.5,
                    color: CustomColor.secondarySaffron,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
