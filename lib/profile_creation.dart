import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ProfileCreation extends StatefulWidget {
  const ProfileCreation({super.key});

  @override
  State<ProfileCreation> createState() => _ProfileCreationState();
}

class _ProfileCreationState extends State<ProfileCreation> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _experienceController = TextEditingController();
  final TextEditingController _languageController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _GroundController = TextEditingController();
  final TextEditingController _TrophyController = TextEditingController();

  String? _managerRole;
  String? _nationality;

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
          "Profile Creation",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24.h),

              Text(
                "Manager Role",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1B4F44),
                  fontSize: 14.sp,
                ),
              ),

              SizedBox(height: 16.h),

              _buildDropdownField(
                "Manager Role",
                "Select Role",
                _managerRole,
                ["Ground Manager", "Team Manager", "Tournament Manager"],
                (Value) => setState(() => _managerRole = Value),
              ),
              SizedBox(height: 16.h),
              _buildTextfield(
                label: "Full Name",
                hintText: "Enter Full Name",
                controller: _nameController,
              ),
              SizedBox(height: 16.h),
              _buildDateField(
                context,
                "Date Of Birth",
                "DD - Mm - YYYY",
                controller: _dateController,
              ),
              SizedBox(height: 16.h),
              _buildDropdownField(
                "Nationality",
                "Select Nationality",
                _nationality,
                ["Indian", "American", "British", "Canadian", "Australian"],
                (Value) => setState(() => _nationality = Value),
              ),
              SizedBox(height: 16.h),
              _buildTextfield(
                label: "E-Mail",
                hintText: "Enter E-Mail",
                controller: _emailController,
              ),
              SizedBox(height: 16.h),
              _buildTextfield(
                label: "Mobile Number",
                hintText: "Enter Mobile Number",
                controller: _phoneController,
                keyboardType: TextInputType.number

              ),
              SizedBox(height: 16.h),
              _buildTextfield(
                label: "Years of experience",
                hintText: "Enter experience",
                controller: _experienceController,
              ),
              SizedBox(height: 16.h),
              _buildTextfield(
                label: "Language",
                hintText: "Enter language you speak",
                controller: _languageController,
              ),
              SizedBox(height: 16.h),
              _buildTextfield(
                label: "Short Bio (optional)",
                hintText: "Enter language you speak",
                controller: _bioController,
                height: 118.h,
                maxLines: 5
              ),
              SizedBox(height: 24.h),
              Row(
                children: [
                  Text(
                    "Previous  Experience",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1B4F44),
                      fontSize: 14.sp,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 16.h,
                    width: 16.w,
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
                label: "Ground Name",
                hintText: "Enter Ground Name",
                controller: _experienceController,
              ),
              SizedBox(height: 16.h),
              _buildTextfield(
                label: "Years of experience",
                hintText: "Enter experience",
                keyboardType: TextInputType.number,
                controller: _experienceController,
              ),
              SizedBox(height: 25.h),
              Row(
                children: [
                  Text(
                    "Previous  Experience",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1B4F44),
                      fontSize: 14.sp,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 16.h,
                    width: 16.w,
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
                label: "Ground Name",
                hintText: "Enter Ground Name",
                controller: _GroundController,
              ),
              SizedBox(height: 16.h),

              _buildTextfield(
                label: "Trophy",
                hintText: "Enter Trophy",
                controller: _TrophyController,
              ),
              SizedBox(height: 16.h),
              _buildTextfield(
                label: "Years of experience",
                hintText: "Enter experience",
                controller: _experienceController,
                keyboardType: TextInputType.number
              ),
              SizedBox(height: 24.h),

              SizedBox(
                height: 40.h,
                width: 343.w,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF67B311),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                  ),

                  child: Text(
                    "Next",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 44.h),
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
  required TextEditingController controller,
  TextInputType? keyboardType,
  double? height,
  int? maxLines,
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
      SizedBox(height: 4.h),
      SizedBox(
        height: height ?? 40.h,
        child: TextFormField(
          maxLines: maxLines ?? (height != null && height > 50 ? null : 1),
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey.shade400,
              fontWeight: FontWeight.w400,
              fontSize: 11.sp,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: const Color(0xFFEDF1F3),
                width: 1.w,
              ),
              borderRadius: BorderRadius.circular(8.r),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: const Color(0xFFEDF1F3),
                width: 1.w,
              ),
              borderRadius: BorderRadius.circular(8.r),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green, width: 1.w),
              borderRadius: BorderRadius.circular(8.r),
            ),
            fillColor: const Color(0xFFFAFAFA),
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
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          color: Color(0xFF1C1C1C),
        ),
      ),
      SizedBox(height: 4.h),
      SizedBox(
        height: 40.h,
        child: DropdownButtonFormField<String>(
          hint: Text(
            hint,
            style: TextStyle(
              color: const Color(0xFFC6C6C6),
              fontSize: 11.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          isExpanded: true,
          dropdownColor: const Color.fromARGB(255, 242, 253, 242),
          icon: const Icon(Icons.keyboard_arrow_down, color: Color(0xFF1C1C1C)),
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
            fillColor: const Color(0xFFFAFAFA),
            filled: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 12.w),
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

Widget _buildDateField(
  BuildContext context,
  String label,
  String hint, {
  required TextEditingController controller,
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
      SizedBox(height: 4.h),
      SizedBox(
        height: 40.h,
        child: TextFormField(
          controller: controller,
          readOnly: true,

          decoration: InputDecoration(
            suffixIcon: Padding(
              padding: EdgeInsets.all(10.w),
              child: SvgPicture.asset(
                color: Colors.black,
                "assets/Component 1.svg",
                height: 16.h,
                width: 16.w,
              ),
            ),
            hintText: hint,
            hintStyle: TextStyle(
              fontWeight: FontWeight.w400,

              fontSize: 11.sp,
              height: 1.0.h,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: const BorderSide(color: Colors.green),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 12.w),
          ),
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime(2030),
            );
            if (pickedDate != null) {
              controller.text =
                  "${pickedDate.day.toString().padLeft(2, '0')} - ${pickedDate.month.toString().padLeft(2, '0')} - ${pickedDate.year}";
            }
          },
        ),
      ),
    ],
  );
}
