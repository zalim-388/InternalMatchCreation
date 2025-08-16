import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:internal_match_creation/live_control.dart';

class AdminScoreUpdateScreen extends StatefulWidget {
  const AdminScoreUpdateScreen({super.key});

  @override
  State<AdminScoreUpdateScreen> createState() => _AdminScoreUpdateScreenState();
}

class _AdminScoreUpdateScreenState extends State<AdminScoreUpdateScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          elevation: 4,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,

          centerTitle: true,
          title: Text(
            "Score Update",
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
              SizedBox(height: 24.h),

              Container(
                height: 160.h,
                width: 343.h,
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
                      SizedBox(height: 14.h),
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
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // Team 1
                          Icon(
                            Icons.sports_soccer,
                            size: 30.w,

                            color: Colors.white,
                          ),
                          //   SvgPicture.asset("", fit: BoxFit.cover, height: 32.h),
                          SizedBox(width: 8.h),
                          Text(
                            'Team 1',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              height: 1.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 27.h),
                          // Kick-off
                          Container(
                            height: 24.h,
                            width: 80.w,

                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(16.w),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'Kick-off',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                height: 1.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(width: 27.h),

                          // Team 2
                          Text(
                            'Team 2',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              height: 1.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 8.h),
                          Icon(
                            Icons.sports_soccer,
                            size: 30.w,
                            color: Colors.white,
                          ),
                          // SvgPicture.asset("", fit: BoxFit.cover, height: 32.h),
                        ],
                      ),
                      SizedBox(height: 18.h),
                      Text(
                        textAlign: TextAlign.center,
                        '18 Aug 2025',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          height: 1.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 4.h),

                      Text(
                        '7:00 PM',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          height: 1.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 14.h),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 17.h),

              TabBar(
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 2.w, color: Color(0xFF442E8F)),
                ),
                // indicatorColor: Color(0xFF442E8F),
                dividerColor: Colors.transparent,

                unselectedLabelColor: Color(0xFF6C7278),

                unselectedLabelStyle: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
                labelColor: Color(0xFF442E8F),
                labelStyle: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                ),

                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  SizedBox(width: 60.w, child: Tab(text: "Summary")),
                  SizedBox(width: 60.w, child: Tab(text: "Line Up")),
                  SizedBox(width: 60.w, child: Tab(text: "Standings")),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Summary(),
                    Center(child: Text('Line Up')),
                    Center(child: Text('Standings')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Summary extends StatefulWidget {
  const Summary({super.key});

  @override
  State<Summary> createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  String? halfTime = 'Yes';
  String? firstHalf = '30 Min';
  String? secondHalf = '30 Min';
  String? extraTime = 'Yes';
  String? et1st = '5 Min';
  String? et2nd = '5 Min';
  String? penaltyShootout = 'Yes';
  String? noOfShootout = '5';

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
            fontSize: 12.sp,
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
            fontSize: 12.sp,
            height: 1.0.h,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF1A1C1E),
          ),
        ),
        SizedBox(height: 4.h),
        SizedBox(
          height: 34.h,
          child: DropdownButtonFormField<String>(
            focusColor: Color(0xFFFAFAFA),
            hint: Text(
              hint,
              style: TextStyle(
                color: Color(0xFF1C1C1C),

                fontSize: 11.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            isExpanded: true,
            dropdownColor: const Color(0xFFFAFAFA),

            icon: Icon(
              Icons.keyboard_arrow_down,
              size: 18.sp,
              color: Color(0xFF1C1C1C),
            ),
            value: value,
            onChanged: onChanged,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: const BorderSide(color: Color(0xFFEFEFEF)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(color: Color(0xFFEFEFEF)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: const BorderSide(color: Colors.green),
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 12.w,
                vertical: 7.h,
              ),
            ),
            items:
                items.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: TextStyle(fontSize: 10.sp, color: Colors.black87),
                    ),
                  );
                }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _TimeStepper({
    required String label,
    required List<String> items,
    String? selectedValue,
    required ValueChanged<String> onChanged,
    double? width,
    double? height = 34,
  }) {
    int currentIndex = selectedValue != null ? items.indexOf(selectedValue) : 0;
    if (currentIndex == -1) currentIndex = 0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xFF1C1C1C),
          ),
        ),
        SizedBox(height: 4.w),
        Container(
          width: width ?? double.infinity,
          height: height,
          padding: EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: const Color(0xFFFAFAFA),
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: Colors.grey.shade300, width: 1.w),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  items[currentIndex],
                  style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF1C1C1C),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      final nextIndex = (currentIndex + 1) % items.length;
                      onChanged(items[nextIndex]);
                    },
                    child: Icon(
                      Icons.keyboard_arrow_up,
                      size: 14.sp,
                      color: Color(0xFF1C1C1C),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      final prevIndex =
                          (currentIndex - 1 + items.length) % items.length;
                      onChanged(items[prevIndex]);
                    },
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      size: 14.sp,
                      color: Color(0xFF1C1C1C),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 16.h),
          // Admin/Referee Section
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(width: 1, color: Color(0x1A061D3D)),
            ),
            child: Padding(
              padding: EdgeInsets.all(16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  SizedBox(height: 14.h),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 17.r,
                        backgroundColor: Colors.grey[300],
                        child: Icon(Icons.person, size: 20.sp),
                      ),
                      SizedBox(width: 8.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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

                                // Icon(
                                //   Icons.verified,
                                //   color: Colors.blue,
                                //   size: 12.sp,
                                // ),
                                SvgPicture.asset(
                                  "assets/Layer 2.svg",
                                  height: 10.h,
                                  width: 10.w,
                                ),
                              ],
                            ),
                            SizedBox(height: 2.h),
                            Text(
                              "Team Manager",
                              style: TextStyle(
                                color: Color(0x80061D3D),
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
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
                      // Icon(
                      //   Icons.message_outlined,
                      //   size: 20.sp,
                      //   color: Colors.grey,
                      // ),
                      // SizedBox(width: 14.w),
                      // Icon(
                      //   Icons.phone_outlined,
                      //   size: 20.sp,
                      //   color: Colors.grey,
                      // ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  _buildTextfield(
                    label: "Name",
                    hintText: 'Enter or Search',
                    controller: _nameController,
                  ),
                  SizedBox(height: 16.h),
                  _buildTextfield(
                    label: "Phone Number",
                    hintText: 'Enter or Search',
                    controller: _phoneController,
                  ),
                  SizedBox(height: 16.h),
                  _buildTextfield(
                    label: "E-Mail",
                    hintText: 'Enter E-Mail Address',
                    controller: _emailController,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 24.h),
          // Match Setup
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(width: 1, color: Color(0x1A061D3D)),
            ),
            child: Padding(
              padding: EdgeInsets.all(16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Match Setup",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      height: 1.0,
                      color: Color(0xFF1B4F44),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  _buildDropdownField(
                    'Half Time',
                    'Select option',
                    halfTime,
                    ['Yes', 'No'],
                    (value) => setState(() => halfTime = value),
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    children: [
                      Expanded(
                        child: _TimeStepper(
                          label: '1st Half',
                          items: ['30 Min', '40 Min', '50 Min'],
                          selectedValue: firstHalf,
                          onChanged:
                              (value) => setState(() => firstHalf = value),
                        ),
                      ),
                      SizedBox(width: 11.w),
                      Expanded(
                        child: _TimeStepper(
                          label: '2nd Half',
                          selectedValue: secondHalf,
                          items: ['30 Min', '45 Min', '60 Min'],
                          onChanged:
                              (value) => setState(() => secondHalf = value),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  _buildDropdownField(
                    'Extra Time',
                    'Select option',
                    extraTime,
                    ['Yes', 'No'],
                    (value) => setState(() => extraTime = value),
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    children: [
                      Expanded(
                        child: _TimeStepper(
                          label: 'ET 1St',

                          selectedValue: et1st,
                          items: ['5 Min', '10 Min', '15 Min'],
                          onChanged: (value) => setState(() => et1st = value),
                        ),
                      ),
                      SizedBox(width: 11.w),
                      Expanded(
                        child: _TimeStepper(
                          label: 'ET 2nd',

                          selectedValue: et2nd,
                          items: ['5 Min', '10 Min', '15 Min'],
                          onChanged: (value) => setState(() => et2nd = value),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    children: [
                      Expanded(
                        child: _buildDropdownField(
                          'Penalty Shootout',
                          'Select option',
                          penaltyShootout,
                          ['Yes', 'No'],
                          (value) => setState(() => penaltyShootout = value),
                        ),
                      ),
                      SizedBox(width: 11.w),
                      Expanded(
                        child: _buildDropdownField(
                          'No of Shootout',
                          'Select number',
                          noOfShootout,
                          ['3', '5', '7', '10'],
                          (value) => setState(() => noOfShootout = value),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 24.h),

          SizedBox(
            width: double.infinity,
            height: 40.h,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LiveControl()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF67B311),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              child: Text(
                'Save',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 33.h),
        ],
      ),
    );
  }
}
