import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdateScore extends StatefulWidget {
  const UpdateScore({super.key});

  @override
  State<UpdateScore> createState() => _UpdateScoreState();
}

class _UpdateScoreState extends State<UpdateScore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        elevation: 4,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,

        centerTitle: true,
        title: Text(
          "Update Score",
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: Color(0xFF061D3D),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Edit",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xFF292A6A),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(height: 16.h),
                Container(
                  height: 160.h,
                  width: 343.w,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF292A6A), Color(0xFF442E8F)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 21.w),
                    child: Column(
                      children: [
                        SizedBox(height: 18.h),
                        Text(
                          'Soccer Fc, Dubai Golden Cup',
                          style: TextStyle(
                            height: 1.0,
                            color: Colors.white,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          'Match 14 - ( Quarter-Final )',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.sp,
                            height: 1.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 14.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Team 1
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.sports_soccer,
                                  size: 30.w,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 8.w),
                                Text(
                                  'Team 1',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    height: 1.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),

                            // Live score
                            Container(
                              width: 80.w,
                              height: 24.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.r),
                                color: Colors.white.withOpacity(0.2),
                              ),
                              child: Center(
                                child: Text(
                                  '0 - 0',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),

                            // Team 2
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Team 2',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    height: 1.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: 8.w),
                                Icon(
                                  Icons.sports_soccer,
                                  size: 30.w,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 18.h),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24.h),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 34.h,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF67B311),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Live Update",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 15.w),

                    Expanded(
                      child: SizedBox(
                        height: 34.h,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF67B311),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Final Result",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 23.h),
                Row(
                  children: [
                    Text(
                      "Awards",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 12.sp,
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 20.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                        border: Border.all(color: Color(0xFF67B311)),
                      ),
                      child: Icon(
                        Icons.add,
                        size: 12.sp,
                        color: Color(0xFF67B311),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                _buildTextfield(
                  label: "Player of the Match",
                  hintText: "Enter or Search",
                ),
                SizedBox(height: 14.h),

                _buildTextfield(
                  label: "Award Tittle",
                  hintText: "Enter or Search",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildTextfield({
  required String label,
  required String hintText,
  // required TextEditingController controller,
  TextInputType? keyboardType,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          color: const Color(0xFF1A1C1E),
        ),
      ),
      SizedBox(height: 8.h),
      SizedBox(
        height: 35.h,
        child: TextFormField(
          //  controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: Color(0xFF1C1C1C),

              fontWeight: FontWeight.w400,
              fontSize: 11.sp,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFEFEFEF), width: 1.w),
              borderRadius: BorderRadius.circular(8.r),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFEFEFEF), width: 1.w),
              borderRadius: BorderRadius.circular(8.r),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFEFEFEF), width: 1.w),
              borderRadius: BorderRadius.circular(8.r),
            ),
            fillColor: Color(0xFFFAFAFA),
            filled: true,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 12.w,
              vertical: 7.5.h,
            ),
          ),
          keyboardType: keyboardType,
        ),
      ),
    ],
  );
}
