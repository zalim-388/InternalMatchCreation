import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:internal_match_creation/team_generate.dart';

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
         automaticallyImplyLeading: false, 
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
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Confirmed Players ( 10 )",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF061D3D),
                  ),
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
                    SizedBox(height: 24.h),
                    _buildConfirmedPlayers(
                      playername: "Gavi",
                      countryname: "Spain",
                      svgpicture: "assets/image.svg",
                    ),
                    _buildConfirmedPlayers(
                      playername: "Pedri",
                      countryname: "Spain",
                      svgpicture: "assets/image (1).svg",
                    ),
                    _buildConfirmedPlayers(
                      playername: "Torre",
                      countryname: "Spain",
                      svgpicture: "",
                    ),
                    _buildConfirmedPlayers(
                      playername: "Lopez",
                      countryname: "Spain",
                      svgpicture: "",
                    ),
                    _buildConfirmedPlayers(
                      playername: "Casado",
                      countryname: "Denmark",
                      svgpicture: "",
                    ),
                    _buildConfirmedPlayers(
                      playername: "Olmo",
                      countryname: "Spain",
                      svgpicture: "",
                    ),
                    _buildConfirmedPlayers(
                      playername: "Dejong",
                      countryname: "Netherlands",
                      svgpicture: "",
                    ),
                    _buildConfirmedPlayers(
                      playername: "Garcia",
                      countryname: "Spain",
                      svgpicture: "",
                      showDivider: false,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
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
                            color: Color(0xFFEDF1F3),
                          ),
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "No Of Team",
                        style: TextStyle(
                          fontSize: 9.sp,
                          height: 1.4.h,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF1A1C1E),
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TeamGenerate(),
                          ),
                        );
                      },
                      child: Text(
                        "Generate",
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

              SizedBox(height: 17.h),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildConfirmedPlayers({
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



class summary extends StatelessWidget {
  summary({super.key});

  Widget _buildTextfield({
    required String label,
    required String hintText,
    required TextEditingController controller,
    TextInputType? keyboardType,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 10.sp,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF1A1C1E),
            height: 1.6,
            letterSpacing: -0.02 * 16,
          ),
        ),
        SizedBox(height: 4.h),
        SizedBox(
          height: 34.h,
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                color: Colors.grey.shade400,
                fontWeight: FontWeight.w400,
                fontSize: 8.sp,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: const Color(0xFFEDF1F3),
                  width: 1.w,
                ),
                borderRadius: BorderRadius.circular(6.r),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: const Color(0xFFEDF1F3),
                  width: 1.w,
                ),
                borderRadius: BorderRadius.circular(6.r),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: const Color(0xFFEDF1F3),
                  width: 1.w,
                ),
                borderRadius: BorderRadius.circular(6.r),
              ),
              fillColor: Colors.white,
              filled: true,
            ),
            keyboardType: keyboardType,
          ),
        ),
      ],
    );
  }

  Widget _buildDropdownField(
    String label,
    String hint,
    String? value,
    List<String> items,
    Function(String?) onChanged,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 8.sp,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF1A1C1E),
          ),
        ),
        SizedBox(height: 4.h),
        SizedBox(
          height: 34.h,
          child: DropdownButtonFormField<String>(
            hint: Text(
              hint,
              style: TextStyle(
                color: const Color(0xFFC6C6C6),
                fontSize: 8.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            isExpanded: true,
            dropdownColor: const Color.fromARGB(255, 242, 253, 242),
            icon: const Icon(Icons.arrow_drop_down),
            value: value,
            onChanged: onChanged,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.r),
                borderSide: const BorderSide(color: Color(0xFFEFEFEF)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.r),
                borderSide: BorderSide(color: Colors.grey.shade300),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.r),
                borderSide: const BorderSide(color: Colors.green),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
            ),
            items:
                items.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_box_outlined,
                          size: 16.sp,
                          color: Colors.green.shade600,
                        ),
                        SizedBox(width: 4.w),
                        Flexible(
                          child: Text(item, style: TextStyle(fontSize: 14.sp)),
                        ),
                      ],
                    ),
                  );
                }).toList(),
          ),
        ),
      ],
    );
  }

  final TextEditingController _NameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16.h),

        Container(
          height: 316.h,
          width: 343.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(width: 1, color: Color(0x061D3D1A)),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                SizedBox(height: 19.h),
                Row(
                  children: [
                    Text(
                      "Assign Admin or referee",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF1B4F44),
                        fontSize: 14.sp,
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 20.h,
                      width: 320.w,
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
                SizedBox(height: 14.h),
                Row(
                  children: [
                    CircleAvatar(radius: 17.r, child: Icon(Icons.person)),
                    SizedBox(width: 8.w),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Jiyas Craz",

                              style: TextStyle(
                                color: Color(0xFF061F35),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 6.w),

                            SvgPicture.asset(
                              "assets/Layer 2.svg",
                              height: 10.h,
                              width: 10.w,
                            ),
                          ],
                        ),

                        Text(
                          "Team Manager",

                          style: TextStyle(
                            color: Color(0x061D3D1A),
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),

                    Spacer(),
                    SvgPicture.asset(
                      "assets/Frame.svg",
                      height: 20.h,
                      width: 20.w,
                    ),
                    SizedBox(width: 14.w),
                    SvgPicture.asset(
                      "assets/Frame (1).svg",
                      height: 20.h,
                      width: 20.w,
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                _buildTextfield(
                  label: "Name",
                  hintText: 'Enter or Search',
                  controller: _NameController,
                ),
                SizedBox(height: 16.h),

                _buildTextfield(
                  label: "Phone number",
                  hintText: 'Enter or Search',
                  controller: _phoneController,
                ),
                SizedBox(height: 16.h),

                _buildTextfield(
                  label: "E-Mail",
                  hintText: 'Enter E-Mail Address',
                  controller: _emailcontroller,
                ),
                SizedBox(height: 16.h),
              ],
            ),
          ),
        ),
        SizedBox(height: 24.h),

        Container(
          height: 404.h,
          width: 343.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(width: 1, color: Color(0x061D3D1A)),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                SizedBox(height: 16.h),
                Text(
                  "Match Setup",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    height: 1.0,
                    color: Color(0xFF1B4F44),
                  ),
                ),

                SizedBox(height: 14.h),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
