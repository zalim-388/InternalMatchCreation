import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:internal_match_creation/players_join_list.dart';

class InternalMatchCreation extends StatefulWidget {
  const InternalMatchCreation({super.key});

  @override
  State<InternalMatchCreation> createState() => _InternalMatchCreationState();
}

class _InternalMatchCreationState extends State<InternalMatchCreation> {
  String? _invitationType;
  String? _invitationSendTime;
  String? _sendReminder;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: Container(
          height: 32.h,
          width: 32.w,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFEDF1F3), width: 1),
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Internal Match Creation",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.white,

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 26.h),
              Container(
                height: 1142.h,
                width: 343.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFEDF1F3), width: 1.w),

                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13.w),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 24.h),

                        _buildTextfield(
                          label: "Match name",
                          hintText: "Enter Match Name",
                        ),
                        SizedBox(height: 14.h),
                        _buildTextfield(
                          label: "Ground",
                          hintText: "Enter Ground Name",
                        ),

                        SizedBox(height: 14.h),
                        _buildTextfield(
                          label: "Location",
                          hintText: "Enter Location",
                        ),

                        SizedBox(height: 14.h),
                        _buildTextfield(
                          label: "Maximum Player",
                          hintText: "Enter Maximum Player",
                        ),
                        SizedBox(height: 14.h),
                        Row(
                          children: [
                            Expanded(
                              child: _buildDateField(context, "From Date", ""),
                            ),
                            SizedBox(width: 27.w),

                            Expanded(
                              child: _buildDateField(context, "To Date", ""),
                            ),
                          ],
                        ),
                        SizedBox(height: 14.h),

                        _buildDaySchedule('Monday'),

                        _buildDaySchedule('Tuesday'),

                        _buildDaySchedule('Wednesday'),

                        _buildDaySchedule('Thursday'),

                        _buildDaySchedule('Friday'),
                        _buildDaySchedule('Saturday'),

                        _buildDaySchedule('Sunday'),
                        SizedBox(height: 15.h),
                        _buildDropdownField(
                          "Invitation type",
                          "Select Invitation Type",
                          _invitationType,
                          ['Open', 'Invite-Only'],
                          (value) => setState(() => _invitationType = value),
                        ),
                        SizedBox(height: 14.h),
                        _buildDropdownField(
                          "Invitation Send Time",
                          "Select Send Time",
                          _invitationSendTime,
                          ['Open', 'Invite-Only'],
                          (value) =>
                              setState(() => _invitationSendTime = value),
                        ),
                        SizedBox(height: 14.h),
                        _buildDropdownField(
                          "Send Reminder",
                          " select Send Reminder",
                          _sendReminder,
                          ['Open', 'Invite-Only'],
                          (value) => setState(() => _sendReminder = value),
                        ),

                        SizedBox(height: 24.h),

                        SizedBox(
                          height: 34.h,
                          width: 316.w,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF67B311),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PlayersJoinList(),
                                ),
                              );
                            },
                            child: Text(
                              "Create Match",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 29.h),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildTextfield({
  required String label,
  required String hintText,

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
          color: Color(0xFF1A1C1E),
          height: 1.6.h,
          letterSpacing: -0.02 * 16,
        ),
      ),
      SizedBox(height: 4.h),

      SizedBox(
        height: 34.h,
        child: TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey.shade400,
              fontWeight: FontWeight.w400,
              fontSize: 8.sp,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFEDF1F3), width: 1.w),
              borderRadius: BorderRadius.circular(6.r),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFEDF1F3), width: 1.w),
              borderRadius: BorderRadius.circular(6.r),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFEDF1F3), width: 1.w),
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

Widget _buildDateField(
  BuildContext context,
  String label,
  String hint,
  // TextEditingController controller,
) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(
          fontSize: 8.sp,
          fontWeight: FontWeight.w500,
          color: Color(0xFF1A1C1E),
        ),
      ),
      SizedBox(height: 4.h),

      SizedBox(
        height: 34.h,

        child: TextFormField(
          // controller: controller,
          readOnly: true,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 11.sp),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: BorderSide(color: Colors.green),
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 12.w,
              vertical: 12.h,
            ),
            suffix: SvgPicture.asset(
              "assets/Component 1.svg",

              height: 16.h,
              width: 16.w,
            ),
          ),
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime(2030),
            );
            // if (pickedDate != null) {
            //   controller.text =
            //       "${pickedDate.day.toString().padLeft(2, '0')} - ${pickedDate.month.toString().padLeft(2, '0')} - ${pickedDate.year}";
            // }
          },
        ),
      ),
    ],
  );
}

Widget _buildDaySchedule(String day) {
  bool _isChecked = false;
  return StatefulBuilder(
    builder: (context, setState) {
      return Column(
        children: [
          Row(
            children: [
              Checkbox(
                side: BorderSide(width: 1.25.w, color: Color(0xFF67B311)),
                value: _isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    _isChecked = value ?? false;
                  });
                },
                activeColor: const Color(0xFF6ABF4B),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.r),
                ),
              ),
              SizedBox(width: 6.w),
              Text(
                day,
                style: TextStyle(
                  color: Colors.black,

                  fontWeight: FontWeight.w100,
                  fontSize: 10.sp,
                ),
              ),
            ],
          ),
          SizedBox(height: 6.h),

          Row(
            children: [
              Expanded(child: _buildTimeField("  'From Time'")),
              SizedBox(width: 26.h),
              Expanded(child: _buildTimeField('To Time')),
            ],
          ),
        ],
      );
    },
  );
}

Widget _buildTimeField(String label) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 8.sp,
              color: Color(0xFF1A1C1E),
              height: 1.6.h,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 26.h,
        width: 145.w,
        child: TextFormField(
          readOnly: true,
          decoration: InputDecoration(
            hintText: '02-05-2025',
            hintStyle: TextStyle(
              fontWeight: FontWeight.w400,
              color: Color(0xFF8C8C8C),
              fontSize: 8.sp,
            ),

            suffix: SvgPicture.asset(
              "assets/Component 1.svg",

              height: 16.h,
              width: 16.w,
            ),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: BorderSide(color: Colors.green),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
          ),
          onTap: () async {
            // // TODO: Implement time picker logic
            // TimeOfDay? selectedTime = await showTimePicker(
            //   context: context,
            //   initialTime: TimeOfDay.now(),
            // );
            // if (selectedTime != null) {
            //   // Handle selected time
            //   print('Selected time: ${selectedTime.format(context)}');
            // }
          },
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
          color: Color(0xFF1A1C1E),
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
          dropdownColor: Color.fromARGB(255, 242, 253, 242),
          icon: Icon(Icons.arrow_drop_down),
          value: value,
          onChanged: onChanged,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: BorderSide(color: const Color(0xFFEFEFEF)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
              borderSide: BorderSide(color: Colors.green),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
          ),
          items:
              items.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  //== hint ? null : item,
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
