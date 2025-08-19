import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internal_match_creation/live_control.dart';
import 'package:internal_match_creation/update_Score.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(useMaterial3: true, fontFamily: "Montserrat"),
          // home: PlayersJoinList(),
          //  home: InternalMatchCreation(),
          // home: AdminScoreUpdateScreen(),
          // home: PlayersJoinList(),
         home: LiveControl(),
    //  home: UpdateScore(),
        );
      },
    );
  }
}



// class InternalMatchCreation extends StatefulWidget {
//   const InternalMatchCreation({Key? key}) : super(key: key);

//   @override
//   State<InternalMatchCreation> createState() => _InternalMatchCreationState();
// }

// class _InternalMatchCreationState extends State<InternalMatchCreation> {
//   final TextEditingController _matchNameController = TextEditingController();
//   final TextEditingController _groundController = TextEditingController();
//   final TextEditingController _locationController = TextEditingController();
//   final TextEditingController _maxPlayersController = TextEditingController();
//   final TextEditingController _fromDateController = TextEditingController();
//   final TextEditingController _toDateController = TextEditingController();
//   String? _invitationType;
//   String? _invitationSendTime;
//   String? _sendReminder;
//   Map<String, bool> _daySchedules = {
//     'Monday': false,
//     'Tuesday': false,
//     'Wednesday': false,
//     'Thursday': false,
//     'Friday': false,
//     'Saturday': false,
//     'Sunday': false,
//   };
//   Map<String, TextEditingController> _fromTimeControllers = {
//     'Monday': TextEditingController(),
//     'Tuesday': TextEditingController(),
//     'Wednesday': TextEditingController(),
//     'Thursday': TextEditingController(),
//     'Friday': TextEditingController(),
//     'Saturday': TextEditingController(),
//     'Sunday': TextEditingController(),
//   };
//   Map<String, TextEditingController> _toTimeControllers = {
//     'Monday': TextEditingController(),
//     'Tuesday': TextEditingController(),
//     'Wednesday': TextEditingController(),
//     'Thursday': TextEditingController(),
//     'Friday': TextEditingController(),
//     'Saturday': TextEditingController(),
//     'Sunday': TextEditingController(),
//   };

//   @override
//   void dispose() {
//     _matchNameController.dispose();
//     _groundController.dispose();
//     _locationController.dispose();
//     _maxPlayersController.dispose();
//     _fromDateController.dispose();
//     _toDateController.dispose();
//     _fromTimeControllers.forEach((key, controller) => controller.dispose());
//     _toTimeControllers.forEach((key, controller) => controller.dispose());
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         surfaceTintColor: Colors.transparent,
//         elevation: 4,
//         backgroundColor: Colors.white,
//         leading: Container(
//           height: 32.h,
//           width: 32.w,
//           decoration: BoxDecoration(
//             border: Border.all(color: const Color(0xFFEDF1F3), width: 1),
//             borderRadius: BorderRadius.circular(10.r),
//           ),
//         ),
//         centerTitle: true,
//         title: Text(
//           "Internal Match Creation",
//           style: TextStyle(
//             fontSize: 14.sp,
//             fontWeight: FontWeight.w800,
//             color: Colors.black,
//           ),
//         ),
//       ),
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 16.w),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(height: 26.h),
//               Container(
//                 height: 1142.h,
//                 width: 343.w,
//                 decoration: BoxDecoration(
//                   border: Border.all(color: const Color(0xFFEDF1F3), width: 1.w),
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 13.w),
//                   child: SingleChildScrollView(
//                     child: Column(
//                       children: [
//                         SizedBox(height: 24.h),
//                         _buildTextField(
//                           label: "Match name",
//                           hintText: "Enter Match Name",
//                           controller: _matchNameController,
//                         ),
//                         SizedBox(height: 14.h),
//                         _buildTextField(
//                           label: "Ground",
//                           hintText: "Enter Ground Name",
//                           controller: _groundController,
//                         ),
//                         SizedBox(height: 14.h),
//                         _buildTextField(
//                           label: "Location",
//                           hintText: "Enter Location",
//                           controller: _locationController,
//                         ),
//                         SizedBox(height: 14.h),
//                         _buildTextField(
//                           label: "Maximum Player",
//                           hintText: "Enter Maximum Player",
//                           controller: _maxPlayersController,
//                           keyboardType: TextInputType.number,
//                         ),
//                         SizedBox(height: 14.h),
//                         Row(
//                           children: [
//                             Expanded(
//                               child: _buildDateField(
//                                 context,
//                                 "From Date",
//                                 "",
//                                 _fromDateController,
//                               ),
//                             ),
//                             SizedBox(width: 27.w),
//                             Expanded(
//                               child: _buildDateField(
//                                 context,
//                                 "To Date",
//                                 "",
//                                 _toDateController,
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 14.h),
//                         ..._daySchedules.keys.map((day) {
//                           return _buildDaySchedule(
//                             day,
//                             _daySchedules,
//                             (value) {
//                               setState(() {
//                                 _daySchedules[day] = value!;
//                               });
//                             },
//                             _fromTimeControllers[day]!,
//                             _toTimeControllers[day]!,
//                           );
//                         }).toList(),
//                         SizedBox(height: 15.h),
//                         _buildDropdownField(
//                           "Invitation type",
//                           "Select Invitation Type",
//                           _invitationType,
//                           ['Open', 'Invite-Only'],
//                           (value) => setState(() => _invitationType = value),
//                         ),
//                         SizedBox(height: 14.h),
//                         _buildDropdownField(
//                           "Invitation Send Time",
//                           "Select Send Time",
//                           _invitationSendTime,
//                           ['1 Hour Before', '2 Hour Before'],
//                           (value) =>
//                               setState(() => _invitationSendTime = value),
//                         ),
//                         SizedBox(height: 14.h),
//                         _buildDropdownField(
//                           "Send Reminder",
//                           " select Send Reminder",
//                           _sendReminder,
//                           ['5 Minute Before', '10 Minute Before'],
//                           (value) => setState(() => _sendReminder = value),
//                         ),
//                         SizedBox(height: 24.h),
//                         SizedBox(
//                           height: 34.h,
//                           width: 316.w,
//                           child: ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: const Color(0xFF67B311),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(6.r),
//                               ),
//                             ),
//                             onPressed: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => const PlayersJoinList(),
//                                 ),
//                               );
//                             },
//                             child: Text(
//                               "Create Match",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 12.sp,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 29.h),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField({
//     required String label,
//     required String hintText,
//     required TextEditingController controller,
//     TextInputType? keyboardType,
//   }) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           label,
//           style: TextStyle(
//             fontSize: 10.sp,
//             fontWeight: FontWeight.w500,
//             color: const Color(0xFF1A1C1E),
//             height: 1.6.h,
//             letterSpacing: -0.02 * 16,
//           ),
//         ),
//         SizedBox(height: 4.h),
//         SizedBox(
//           height: 34.h,
//           child: TextFormField(
//             controller: controller,
//             decoration: InputDecoration(
//               hintText: hintText,
//               hintStyle: TextStyle(
//                 color: Colors.grey.shade400,
//                 fontWeight: FontWeight.w400,
//                 fontSize: 8.sp,
//               ),
//               border: OutlineInputBorder(
//                 borderSide: BorderSide(color: const Color(0xFFEDF1F3), width: 1.w),
//                 borderRadius: BorderRadius.circular(6.r),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: const Color(0xFFEDF1F3), width: 1.w),
//                 borderRadius: BorderRadius.circular(6.r),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: const Color(0xFFEDF1F3), width: 1.w),
//                 borderRadius: BorderRadius.circular(6.r),
//               ),
//               fillColor: Colors.white,
//               filled: true,
//             ),
//             keyboardType: keyboardType,
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildDateField(
//     BuildContext context,
//     String label,
//     String hint,
//     TextEditingController controller,
//   ) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           label,
//           style: TextStyle(
//             fontSize: 8.sp,
//             fontWeight: FontWeight.w500,
//             color: const Color(0xFF1A1C1E),
//           ),
//         ),
//         SizedBox(height: 4.h),
//         SizedBox(
//           height: 34.h,
//           child: TextFormField(
//             controller: controller,
//             readOnly: true,
//             decoration: InputDecoration(
//               hintText: hint,
//               hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 11.sp),
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(6.r),
//                 borderSide: BorderSide(color: Colors.grey.shade300),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(6.r),
//                 borderSide: BorderSide(color: Colors.grey.shade300),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(6.r),
//                 borderSide: const BorderSide(color: Colors.green),
//               ),
//               contentPadding: EdgeInsets.symmetric(
//                 horizontal: 12.w,
//                 vertical: 12.h,
//               ),
//               suffix: SvgPicture.asset(
//                 "assets/Component 1.svg",
//                 height: 16.h,
//                 width: 16.w,
//               ),
//             ),
//             onTap: () async {
//               DateTime? pickedDate = await showDatePicker(
//                 context: context,
//                 initialDate: DateTime.now(),
//                 firstDate: DateTime.now(),
//                 lastDate: DateTime(2030),
//               );
//               if (pickedDate != null) {
//                 controller.text =
//                     "${pickedDate.day.toString().padLeft(2, '0')} - ${pickedDate.month.toString().padLeft(2, '0')} - ${pickedDate.year}";
//               }
//             },
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildDaySchedule(
//     String day,
//     Map<String, bool> daySchedules,
//     ValueChanged<bool?> onChanged,
//     TextEditingController fromTimeController,
//     TextEditingController toTimeController,
//   ) {
//     return Column(
//       children: [
//         Row(
//           children: [
//             Checkbox(
//               side: BorderSide(width: 1.25.w, color: const Color(0xFF67B311)),
//               value: daySchedules[day],
//               onChanged: onChanged,
//               activeColor: const Color(0xFF6ABF4B),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(2.r),
//               ),
//             ),
//             SizedBox(width: 6.w),
//             Text(
//               day,
//               style: TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.w100,
//                 fontSize: 10.sp,
//               ),
//             ),
//           ],
//         ),
//         SizedBox(height: 6.h),
//         Row(
//           children: [
//             Expanded(child: _buildTimeField('From Time', fromTimeController)),
//             SizedBox(width: 26.h),
//             Expanded(child: _buildTimeField('To Time', toTimeController)),
//           ],
//         ),
//       ],
//     );
//   }

//   Widget _buildTimeField(String label, TextEditingController controller) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           children: [
//             Text(
//               label,
//               style: TextStyle(
//                 fontSize: 8.sp,
//                 color: const Color(0xFF1A1C1E),
//                 height: 1.6.h,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ],
//         ),
//         SizedBox(
//           height: 26.h,
//           width: 145.w,
//           child: TextFormField(
//             controller: controller,
//             readOnly: true,
//             decoration: InputDecoration(
//               hintText: 'Select Time',
//               hintStyle: TextStyle(
//                 fontWeight: FontWeight.w400,
//                 color: const Color(0xFF8C8C8C),
//                 fontSize: 8.sp,
//               ),
//               suffix: SvgPicture.asset(
//                 "assets/Frame (12).svg",
//                 height: 16.h,
//                 width: 16.w,
//               ),
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(6.r),
//                 borderSide: BorderSide(color: Colors.grey.shade300),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(6.r),
//                 borderSide: BorderSide(color: Colors.grey.shade300),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(6.r),
//                 borderSide: const BorderSide(color: Colors.green),
//               ),
//               contentPadding: EdgeInsets.symmetric(horizontal: 10),
//             ),
//             onTap: () async {
//               TimeOfDay? selectedTime = await showTimePicker(
//                 context: context,
//                 initialTime: TimeOfDay.now(),
//               );
//               if (selectedTime != null) {
//                 controller.text = selectedTime.format(context);
//               }
//             },
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildDropdownField(
//     String label,
//     String hint,
//     String? value,
//     List<String> items,
//     Function(String?) onChanged,
//   ) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           label,
//           style: TextStyle(
//             fontSize: 8.sp,
//             fontWeight: FontWeight.w500,
//             color: const Color(0xFF1A1C1E),
//           ),
//         ),
//         SizedBox(height: 4.h),
//         SizedBox(
//           height: 34.h,
//           child: DropdownButtonFormField<String>(
//             hint: Text(
//               hint,
//               style: TextStyle(
//                 color: const Color(0xFFC6C6C6),
//                 fontSize: 8.sp,
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//             isExpanded: true,
//             dropdownColor: const Color.fromARGB(255, 242, 253, 242),
//             icon: const Icon(Icons.arrow_drop_down),
//             value: value,
//             onChanged: onChanged,
//             decoration: InputDecoration(
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(6.r),
//                 borderSide: const BorderSide(color: Color(0xFFEFEFEF)),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(6.r),
//                 borderSide: BorderSide(color: Colors.grey.shade300),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(6.r),
//                 borderSide: const BorderSide(color: Colors.green),
//               ),
//               contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
//             ),
//             items: items.map((String item) {
//               return DropdownMenuItem<String>(
//                 value: item,
//                 child: Row(
//                   children: [
//                     Icon(
//                       Icons.check_box_outlined,
//                       size: 16.sp,
//                       color: Colors.green.shade600,
//                     ),
//                     SizedBox(width: 4.w),
//                     Flexible(
//                       child: Text(item, style: TextStyle(fontSize: 14.sp)),
//                     ),
//                   ],
//                 ),
//               );
//             }).toList(),
//           ),
//         ),
//       ],
//     );
//   }
// }





