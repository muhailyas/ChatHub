import 'package:chathub/config/routes/routes.dart';
import 'package:chathub/core/colors/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 20.sp),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "ChatHub",
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whiteColor,
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.search,
                      color: CustomColor.secondarySaffron,
                      size: 30.sp,
                    ),
                    SizedBox(width: 10.sp),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.profile);
                      },
                      onDoubleTap: () {
                        FirebaseAuth.instance.signOut();
                        Navigator.pushNamedAndRemoveUntil(
                            context, Routes.onboard, (route) => false);
                      },
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://imgs.search.brave.com/9HZUq2wCtup2lbzmW230Bep7WzPEvBsBXTk9Q2cbYLc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTI4/MTk5ODUxOS9waG90/by9wcm9maWxlLXBv/cnRyYWl0LW9mLXdv/bWFuLmpwZz9zPTYx/Mng2MTImdz0wJms9/MjAmYz1NdF9meTNH/SzFka2hyR3BfUGtu/VmpFR2VNTWpfcVNB/QWJIWWtYLWYtMy1r/PQ'),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20.sp),
                TabBar(
                  indicatorWeight: 5.sp,
                  indicatorColor: CustomColor.secondarySaffron,
                  tabs: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.sp),
                      child: Text(
                        "Chats",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.sp),
                      child: Text(
                        "Calls",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    physics: const BouncingScrollPhysics(),
                    children: List.generate(
                      2,
                      (index) {
                        return index % 2 == 0
                            ? ListView.separated(
                                physics: const BouncingScrollPhysics(),
                                separatorBuilder: (context, index) =>
                                    const SizedBox(height: 5),
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () => Navigator.pushNamed(
                                        context, Routes.chatPage),
                                    child: SizedBox(
                                      height: 85.h,
                                      width: double.infinity,
                                      child: Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 30.sp,
                                            backgroundImage: const NetworkImage(
                                                'https://imgs.search.brave.com/9HZUq2wCtup2lbzmW230Bep7WzPEvBsBXTk9Q2cbYLc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTI4/MTk5ODUxOS9waG90/by9wcm9maWxlLXBv/cnRyYWl0LW9mLXdv/bWFuLmpwZz9zPTYx/Mng2MTImdz0wJms9/MjAmYz1NdF9meTNH/SzFka2hyR3BfUGtu/VmpFR2VNTWpfcVNB/QWJIWWtYLWYtMy1r/PQ'),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 15.h,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text("Marry john",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 18.sp,
                                                        color: CustomColor
                                                            .whiteColor)),
                                                SizedBox(height: 10.h),
                                                const Text(
                                                  "I'm at the office right now",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color: CustomColor
                                                          .whiteColor),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Spacer(),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CircleAvatar(
                                                backgroundColor: CustomColor
                                                    .secondarySaffron,
                                                radius: 11.h,
                                                child: const Text(
                                                  "2",
                                                  style: TextStyle(
                                                    color:
                                                        CustomColor.whiteColor,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              )
                            : ListView.separated(
                                physics: const BouncingScrollPhysics(),
                                separatorBuilder: (context, index) =>
                                    const SizedBox(height: 5),
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return SizedBox(
                                    height: 85.h,
                                    width: double.infinity,
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 30.sp,
                                          backgroundImage: const NetworkImage(
                                              'https://imgs.search.brave.com/9HZUq2wCtup2lbzmW230Bep7WzPEvBsBXTk9Q2cbYLc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTI4/MTk5ODUxOS9waG90/by9wcm9maWxlLXBv/cnRyYWl0LW9mLXdv/bWFuLmpwZz9zPTYx/Mng2MTImdz0wJms9/MjAmYz1NdF9meTNH/SzFka2hyR3BfUGtu/VmpFR2VNTWpfcVNB/QWJIWWtYLWYtMy1r/PQ'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 15.h,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("Mary john",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 18.sp,
                                                      color: CustomColor
                                                          .whiteColor)),
                                              SizedBox(height: 10.h),
                                              Row(
                                                children: [
                                                  Icon(
                                                      index % 2 == 0
                                                          ? Icons
                                                              .call_made_rounded
                                                          : Icons
                                                              .call_received_rounded,
                                                      color: CustomColor
                                                          .secondarySaffron),
                                                  SizedBox(width: 5.sp),
                                                  Text(
                                                    index % 2 == 0
                                                        ? "Yesterday, 7:42 pm"
                                                        : "Yesterday, 7:57 pm",
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: CustomColor
                                                            .whiteColor),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              index % 2 == 0
                                                  ? Icons.videocam
                                                  : Icons.call,
                                              color:
                                                  CustomColor.secondarySaffron,
                                              size: 30,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: CustomColor.secondaryColor,
        child: const Icon(
          Icons.message,
          color: CustomColor.secondarySaffron,
        ),
      ),
    );
  }
}
