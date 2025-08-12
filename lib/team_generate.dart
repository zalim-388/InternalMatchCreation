import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TeamGenerate extends StatefulWidget {
  const TeamGenerate({super.key});

  @override
  State<TeamGenerate> createState() => _TeamGenerateState();
}

class _TeamGenerateState extends State<TeamGenerate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
         automaticallyImplyLeading: false, 
        elevation: 4,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        centerTitle: true,
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 13.h),
              Text(
                "Players List",
                style: TextStyle(
                  fontSize: 16.sp,
                  height: 1.0.h,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF061D3D),
                ),
              ),
              SizedBox(height: 14.h),

              Container(
                // height: 448.h,
                // width: 343.w,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1.w, color: Color(0xFFEDF1F3)),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 16.h),
                    _buildTeams(
                      Teamname: "Team A ( 5 )",
                      playername: "Gavi",
                      countryname: "Spain",
                      svgpicture: "assets/image.svg",
                    ),

                    _buildTeams(
                      playername: "Pedri",
                      countryname: "Spain",
                      svgpicture: "assets/image (1).svg",
                    ),
                    _buildTeams(
                      playername: "Torre",
                      countryname: "Spain",
                      svgpicture: "",
                    ),
                    _buildTeams(
                      playername: "Lopez",
                      countryname: "Spain",
                      showDivider: false,
                      svgpicture: "",
                    ),
                    SizedBox(height: 26.h),
                    _buildTeams(
                      Teamname: "Team b ( 5 )",

                      playername: "Casado",
                      countryname: "Denmark",
                      svgpicture: "",
                    ),
                    _buildTeams(
                      playername: "Olmo",
                      countryname: "Spain",
                      svgpicture: "",
                    ),
                    _buildTeams(
                      playername: "Dejong",
                      countryname: "Netherlands",
                      svgpicture: "",
                    ),
                    _buildTeams(
                      playername: "Garcia",
                      countryname: "Spain",
                      svgpicture: "",
                      showDivider: false,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 81.h),
              Row(
                children: [
                  SizedBox(
                    height: 34.h,
                    width: 164.w,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1.w,
                            color: Color(0xFF67B311),
                          ),
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Re-Generate",
                        style: TextStyle(
                          fontSize: 9.sp,
                          height: 1.4.h,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF67B311),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 15.w),
                  SizedBox(
                    height: 34.h,
                    width: 164.w,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF67B311),

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Confirom",
                        style: TextStyle(
                          fontSize: 12.sp,
                          height: 1.4.h,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildTeams({
  String? Teamname,
  required String playername,
  required String countryname,
  required String svgpicture,
  bool? showDivider,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        Teamname ?? "",
        style: TextStyle(
          fontSize: 14.sp,
          height: 1.0.h,
          fontWeight: FontWeight.w500,
          color: Color(0xFF061D3D),
        ),
      ),
      SizedBox(height: 13.h),
      _buildPlayersList(
        playername: playername,
        countryname: countryname,
        svgpicture: svgpicture,
        showDivider: showDivider ?? false,
      ),
    ],
  );
}

Widget _buildPlayersList({
  required String playername,
  required String countryname,
  required String svgpicture,
  bool showDivider = true,
}) {
  return Column(
    children: [
      Row(
        children: [
          CircleAvatar(radius: 17.w, child: SvgPicture.asset(svgpicture)),
          SizedBox(width: 4.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                playername,
                style: TextStyle(
                  fontSize: 12.sp,
                  height: 1.0.h,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF061D3D),
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                countryname,
                style: TextStyle(
                  height: 1.0.h,
                  fontSize: 10.sp,
                  color: Color(0x80061D3D),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
      if (showDivider) ...[
        SizedBox(height: 14.h),
        Divider(color: Color(0xFFF5F5F5), thickness: 1),
      ],
      SizedBox(height: 12.h),
    ],
  );
}
