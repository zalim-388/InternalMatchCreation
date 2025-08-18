import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LiveControl extends StatefulWidget {
  const LiveControl({super.key});

  @override
  State<LiveControl> createState() => _LiveControlState();
}

class _LiveControlState extends State<LiveControl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        elevation: 4,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Live Control",
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: Color(0xFF061D3D),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 16.h),
              Container(
                height: 160.h,
                width: 343.w, // Fixed: changed from .h to .w
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
                        mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly, // Better alignment
                        crossAxisAlignment:
                            CrossAxisAlignment
                                .center, // Added for vertical alignment
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
                              SizedBox(
                                width: 8.w,
                              ), // Fixed: changed from .h to .w
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
                            width: 80.w, // Made responsive
                            height: 24.h, // Made responsive
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.r),
                              color: Colors.white.withOpacity(0.2),
                            ),
                            child: Center(
                              child: Text(
                                '0 - 0',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.sp, // Made responsive
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
                              SizedBox(
                                width: 8.w,
                              ), // Fixed: changed from .h to .w
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
                      Text(
                        textAlign: TextAlign.center,
                        'First Half',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          height: 1.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 3.h),
                      // Timer and Status
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.center, // Better alignment
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Timer section
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: 100.w),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    '43',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'Minutes',
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.6),
                                      fontSize:
                                          10.sp, // Made responsive and smaller
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 8.w),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: 4.w,
                                    height: 4.h,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 2.h),
                                  Container(
                                    width: 4.w,
                                    height: 4.h,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 8.w),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    '14',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'Seconds',
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.6),
                                      fontSize:
                                          10.sp, // Made responsive and smaller
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(width: 32.w), // Consistent spacing
                          // Status section
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Status - ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11.sp, // Made responsive
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Live',
                                style: TextStyle(
                                  color: Color(0xFF10B981),
                                  fontSize: 11.sp, // Made responsive
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
                      width: 140.w,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF67B311),

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Pause / Stop",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 23.w),

                  Expanded(
                    child: SizedBox(
                      height: 34.h,
                      width: 140.w,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFFFAF0),

                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1.w,
                              color: Color(0xFFEE8B00),
                            ),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "End 1St Half",
                          style: TextStyle(
                            color: Color(0xFFEE8B00),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 14.h),

              Container(
                height: 34.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(width: 1.w, color: Color(0xFF292A6A)),
                ),
                alignment: Alignment.center,
                child: Text(
                  "End Match",
                  style: TextStyle(
                    color: Color(0xFF292A6A),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              SizedBox(height: 16.h),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(width: 1.w, color: Color(0xFFEDF1F3)),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // Full Time Score
                      _buildScoreEvent("81'", "1 - 1"),

                      // Red Card
                      _buildTimelineEvent(
                        "68'",
                        "R. Holding",
                        EventType.redCard,
                        isLeft: false,
                      ),

                      // Yellow Card
                      _buildTimelineEvent(
                        "63'",
                        "B. Saka",
                        EventType.yellowCard,
                        isLeft: false,
                      ),

                      // Substitution
                      _buildSubstitutionEvent(
                        "63'",
                        "R. Holding",
                        "M. Ødegaard",
                        isLeft: false,
                      ),

                      // Substitution
                      _buildSubstitutionEvent(
                        "63'",
                        "I. Gundogan",
                        "Gabriel Jesus",
                        isLeft: true,
                      ),

                      // Red Card
                      _buildTimelineEvent(
                        "59'",
                        "Gabriel",
                        EventType.redCard,
                        isLeft: false,
                      ),

                      // Penalty and Yellow Card
                      _buildPenaltyEvent(
                        "57'",
                        "R. Mahrez",
                        "Gabriel",
                        "1 - 1",
                      ),

                      // Yellow Card
                      _buildTimelineEvent(
                        "55'",
                        "G. Xhaka",
                        EventType.yellowCard,
                        isLeft: false,
                      ),

                      // Half Time
                      _buildHalfTimeEvent("0 - 1"),

                      // Penalty
                      _buildPenaltyEvent(
                        "31'",
                        "B. Saka",
                        "K. Tierney",
                        "0 - 1",
                      ),

                      // Kick Off
                      _buildKickOffEvent(),
                    ],
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

Widget _buildScoreEvent(String time, String score) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 8.h),
    child: Column(
      children: [
        SizedBox(height: 8.h),

        Text(
          time,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
            color: Color(0xFF274893),
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          score,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
            color: Color(0xFF64666B),
          ),
        ),
        SizedBox(height: 8.h),
        Divider(thickness: 1, color: Color(0xFFEDF1F3)),
      ],
    ),
  );
}

Widget _buildTimelineEvent(
  String time,
  String playerName,
  EventType eventType, {
  required bool isLeft,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(height: 8.h),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (isLeft)
            Expanded(child: _buildPlayerInfo(playerName, eventType))
          else
            Spacer(),
          SizedBox(width: 21.w),

          Text(
            time,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: const Color(0xFF23262D),
            ),
          ),

          SizedBox(width: 21.w),

          if (!isLeft)
            Expanded(child: _buildPlayerInfo(playerName, eventType))
          else
            Spacer(),
        ],
      ),
      SizedBox(height: 8.h),
      Divider(thickness: 1, color: Color(0xFFEDF1F3)),
    ],
  );
}

Widget _buildSubstitutionEvent(
  String time,
  String playerOut,
  String playerIn, {
  required bool isLeft,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(height: 15.h),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 30.w),

          if (isLeft)
            Expanded(child: _buildSubstitutionInfo(playerOut, playerIn, isLeft))
          else
            Spacer(),
          SizedBox(width: 21.w),

          Text(
            time,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: const Color(0xFF23262D),
            ),
          ),

          SizedBox(width: 21.w),

          if (!isLeft)
            Expanded(child: _buildSubstitutionInfo(playerOut, playerIn, isLeft))
          else
            Spacer(),
        ],
      ),
      SizedBox(height: 15.h),
      Divider(thickness: 1, color: Color(0xFFEDF1F3)),
    ],
  );
}

Widget _buildPenaltyEvent(
  String time,
  String playerName,
  String otherPlayer,
  String score,
) {
  return Column(
    children: [
      SizedBox(height: 8.h),
      Row(
        children: [
          // Left side
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  playerName,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  "Penalty",
                  style: TextStyle(fontSize: 10.sp, color: Colors.black54),
                ),
              ],
            ),
          ),

          // Center
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 4.h),
                Container(
                  width: 20.w,
                  height: 20.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black87, width: 1),
                  ),
                  child: Icon(
                    Icons.sports_soccer,
                    size: 12.w,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  score,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),

          // Right side
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  otherPlayer,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 12.w,
                      height: 12.h,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(2.r),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ],
  );
}

Widget _buildHalfTimeEvent(String score) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 16.h),
    padding: EdgeInsets.symmetric(vertical: 12.h),
    decoration: BoxDecoration(
      color: Colors.grey[50],
      borderRadius: BorderRadius.circular(8.r),
    ),
    child: Column(
      children: [
        Text(
          "Half Time",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          score,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black54,
          ),
        ),
      ],
    ),
  );
}

Widget _buildKickOffEvent() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 16.h),
    padding: EdgeInsets.symmetric(vertical: 12.h),
    decoration: BoxDecoration(
      color: Colors.grey[50],
      borderRadius: BorderRadius.circular(8.r),
    ),
    child: Text(
      "Kick Off",
      style: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      ),
    ),
  );
}

Widget _buildPlayerInfo(String playerName, EventType eventType) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      _buildEventIcon(eventType),

      SizedBox(width: 8.w),

      Text(
        playerName,
        style: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: Color(0xFF23262D),
        ),
      ),
    ],
  );
}

Widget _buildSubstitutionInfo(String playerOut, String playerIn, bool? isLeft) {
  return Row(
    children: [
      if (isLeft != null && !isLeft) ...[
        _buildEventIcon(EventType.substitution),
        SizedBox(width: 8.w),
      ],

      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            playerOut,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xFF23262D),
            ),
          ),
          Text(
            playerIn,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xFF939598),
            ),
          ),
        ],
      ),

      SizedBox(width: 8.w),
      if (isLeft != null && isLeft) ...[
        _buildEventIcon(EventType.substitution),
      ],
    ],
  );
}

enum EventType { redCard, yellowCard, substitution, goal }

Widget _buildEventIcon(EventType eventType) {
  switch (eventType) {
    case EventType.redCard:
      return SvgPicture.asset(
        'assets/Component 1 (1).svg',
        width: 20.w,
        height: 20.h,
      );
    case EventType.yellowCard:
      return SvgPicture.asset(
        'assets/Component 1 (2).svg',
        width: 20.w,
        height: 20.h,
      );
    case EventType.substitution:
      return SvgPicture.asset(
        "assets/Substitue 2.svg",
        height: 24.w,
        width: 24.h,
      );
    case EventType.goal:
      return SvgPicture.asset(
        'assets/bx_football.svg',
        width: 20.w,
        height: 20.h,
      );
  }
}
