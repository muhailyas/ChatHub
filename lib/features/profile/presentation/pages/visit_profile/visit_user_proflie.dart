import 'package:chathub/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenVisitProfile extends StatelessWidget {
  const ScreenVisitProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            leading:
                Icon(Icons.arrow_back, color: CustomColor.secondarySaffron),
            actions: [
              Icon(Icons.more_vert_rounded, color: CustomColor.secondarySaffron)
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: 130.h,
                  decoration: const BoxDecoration(
                      color: CustomColor.whiteColor,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://imgs.search.brave.com/9HZUq2wCtup2lbzmW230Bep7WzPEvBsBXTk9Q2cbYLc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTI4/MTk5ODUxOS9waG90/by9wcm9maWxlLXBv/cnRyYWl0LW9mLXdv/bWFuLmpwZz9zPTYx/Mng2MTImdz0wJms9/MjAmYz1NdF9meTNH/SzFka2hyR3BfUGtu/VmpFR2VNTWpfcVNB/QWJIWWtYLWYtMy1r/PQ"))),
                ),
                SizedBox(height: 10.h),
                const Text(
                  "Mary john",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: CustomColor.whiteColor),
                ),
                SizedBox(height: 5.h),
                const Text(
                  "+91 9876543210",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                      color: CustomColor.whiteColor),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 60.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: CustomColor.secondarySaffron),
                        borderRadius: BorderRadius.circular(20.sp),
                      ),
                      child: const Icon(
                        Icons.call,
                        color: CustomColor.secondarySaffron,
                        size: 35,
                      ),
                    ),
                    Container(
                      height: 60.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: CustomColor.secondarySaffron),
                        borderRadius: BorderRadius.circular(20.sp),
                      ),
                      child: const Icon(
                        Icons.videocam_outlined,
                        color: CustomColor.secondarySaffron,
                        size: 35,
                      ),
                    ),
                    Container(
                      height: 60.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: CustomColor.secondarySaffron),
                        borderRadius: BorderRadius.circular(20.sp),
                      ),
                      child: const Icon(
                        Icons.search,
                        color: CustomColor.secondarySaffron,
                        size: 35,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.h),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Photos and videos",
                      style:
                          TextStyle(fontSize: 18, color: CustomColor.greyColor),
                    ))
              ],
            ),
          ),
          SliverFillRemaining(
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              padding: const EdgeInsets.symmetric(vertical: 10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 2.sp,
                mainAxisSpacing: 2.sp,
              ),
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                    color: CustomColor.secondarySaffron,
                    borderRadius: BorderRadius.circular(5.sp)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
