import 'package:chathub/config/routes/routes.dart';
import 'package:chathub/core/colors/colors.dart';
import 'package:chathub/core/constants/constants.dart';
import 'package:chathub/core/constants/dummy_constants.dart';
import 'package:chathub/core/responsive/responsive_width_hieght.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenSelectContactList extends StatelessWidget {
  const ScreenSelectContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select contact",
              style: TextStyle(fontSize: 13.sp),
            ),
            SizedBox(height: Screen.width * 0.01),
            Text(
              "10 contacts",
              style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w300),
            ),
          ],
        ),
        actions: [
          const Icon(Icons.search),
          Constants.width10,
          const Icon(Icons.more_vert),
          Constants.width10,
        ],
      ),
      body: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(overscroll: false),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Screen.width * 0.05, vertical: Screen.width * 0.01),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Constants.height10,
                Text(
                  "Contacts on ChatHub",
                  style:
                      TextStyle(fontSize: 14.sp, color: CustomColor.whiteColor),
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: userList.length,
                  itemBuilder: (context, index) {
                    final data = userList[index];
                    return InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, Routes.chatPage),
                      child: SizedBox(
                        height: 70.h,
                        width: double.infinity,
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 25.sp,
                              backgroundImage: NetworkImage(data.profile),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 15.h,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(data.name,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18.sp,
                                          color: CustomColor.whiteColor)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                Text(
                  "Invite to ChatHub",
                  style:
                      TextStyle(fontSize: 14.sp, color: CustomColor.whiteColor),
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: userList.length,
                  itemBuilder: (context, index) {
                    final data = userList[index];
                    return InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, Routes.chatPage),
                      child: SizedBox(
                        height: 70.h,
                        width: double.infinity,
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 25.sp,
                              backgroundImage: NetworkImage(data.profile),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 15.h,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(data.name,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18.sp,
                                          color: CustomColor.whiteColor)),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Container(
                              height: Screen.height * 0.028,
                              width: Screen.width * 0.18,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.sp),
                                border: Border.all(
                                    color: CustomColor.secondarySaffron),
                              ),
                              child: const Center(
                                child: Text(
                                  "Invite",
                                  style:
                                      TextStyle(color: CustomColor.whiteColor),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
