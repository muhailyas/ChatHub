import 'package:chathub/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenChat extends StatelessWidget {
  const ScreenChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: SafeArea(
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: CustomColor.secondarySaffron,
                  ),
                ),
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://imgs.search.brave.com/9HZUq2wCtup2lbzmW230Bep7WzPEvBsBXTk9Q2cbYLc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTI4/MTk5ODUxOS9waG90/by9wcm9maWxlLXBv/cnRyYWl0LW9mLXdv/bWFuLmpwZz9zPTYx/Mng2MTImdz0wJms9/MjAmYz1NdF9meTNH/SzFka2hyR3BfUGtu/VmpFR2VNTWpfcVNB/QWJIWWtYLWYtMy1r/PQ"),
                ),
                SizedBox(width: 10.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mary john",
                      style: TextStyle(
                        color: CustomColor.whiteColor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Online",
                      style: TextStyle(
                        color: CustomColor.whiteColor,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.phone,
                  color: CustomColor.secondarySaffron,
                ),
                SizedBox(width: 13.w),
                const Icon(
                  Icons.videocam,
                  color: CustomColor.secondarySaffron,
                ),
                SizedBox(width: 13.w),
                const Icon(
                  Icons.more_vert_rounded,
                  color: CustomColor.secondarySaffron,
                ),
                SizedBox(width: 13.w),
              ],
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: index == 0 || index == 9 ? 10 : 0),
                    child: Row(
                      mainAxisAlignment: index % 2 == 0
                          ? MainAxisAlignment.start
                          : MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 60,
                          width: 200,
                          decoration: BoxDecoration(
                            color: index % 2 == 0
                                ? CustomColor.secondaryColor
                                : CustomColor.secondarySaffron,
                            borderRadius: index % 2 == 0
                                ? const BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  )
                                : const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              width: 335.w,
              constraints: BoxConstraints(maxHeight: 100.h, minHeight: 45.h),
              decoration: BoxDecoration(
                color: CustomColor.secondaryColor,
                borderRadius: BorderRadius.circular(20.sp),
              ),
              child: Row(
                children: [
                  SizedBox(width: 10.w),
                  const Icon(Icons.add_circle_outline_rounded,
                      color: CustomColor.secondarySaffron),
                  SizedBox(width: 10.w),
                  SizedBox(
                    width: 200.w,
                    child: TextField(
                      maxLines: null,
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Type your message...",
                        hintStyle: TextStyle(
                          fontSize: 15.sp,
                          color: CustomColor.greyColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  const Icon(Icons.mic, color: CustomColor.secondarySaffron),
                  SizedBox(width: 10.w),
                  const Icon(Icons.send, color: CustomColor.secondarySaffron),
                  SizedBox(width: 10.w),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            )
          ],
        ));
  }
}
