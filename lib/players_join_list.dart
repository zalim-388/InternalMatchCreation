import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PlayersJoinList extends StatefulWidget {
  const PlayersJoinList({super.key});

  @override
  State<PlayersJoinList> createState() => _PlayersJoinListState();
}

class _PlayersJoinListState extends State<PlayersJoinList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 4,
        backgroundColor: Colors.white,

        // centerTitle: true,
        title: Text(
          "Internal Match Players",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            SizedBox(height: 17.h),

            Container(
              height: 153.h,
              width: 343.w,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1.w, color: Color(0xFFEDF1F3)),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 12.h),

                      Row(
                        children: [
                          SvgPicture.asset(""),
                          Text(
                            'Game Announcement',
                            style: TextStyle(
                              height: 1.6.h,
                              fontSize: 12.h,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF061D3D),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        'Practice Match',
                        style: TextStyle(
                          height: 1.6.h,
                          fontSize: 12.h,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF061D3D),
                        ),
                      ),
                      SizedBox(height: 12.h),

                      Text(
                        'Date - 22-06-2025',
                        style: TextStyle(
                          height: 1.6.h,
                          fontSize: 12.h,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF061D3D),
                        ),
                      ),
                      SizedBox(height: 12.h),

                      Text(
                        'Time - 7:00 PM',
                        style: TextStyle(
                          height: 1.6.h,
                          fontSize: 12.h,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF061D3D),
                        ),
                      ),
                      SizedBox(height: 12.h),

                      Text(
                        'Location - Malapuram, kerala',
                        style: TextStyle(
                          height: 1.6.h,
                          fontSize: 12.h,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF061D3D),
                        ),
                      ),
                      SizedBox(height: 13.h),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 14.h),
            Text(
              "Confirmed Players ( 10 )",
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
            ),

            SizedBox(height: 14.h),
            SizedBox(height: 16.h),
            SizedBox(height: 17.h),
          ],
        ),
      ),
    );
  }
}
