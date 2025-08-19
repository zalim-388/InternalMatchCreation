import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dotted_border/dotted_border.dart';

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
                // height: 160.h,
                width: double.infinity,
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
                              IconButton(
                                onPressed: () {
                                  PenaltyDialog(context);
                                },
                                icon: Icon(
                                  Icons.sports_soccer,
                                  size: 30.w,
                                  color: Colors.white,
                                ),
                              ),
                              //   SvgPicture.asset("")
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
                                '0- 0',
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
                              IconButton(
                                onPressed: () {
                                  LivecontrolTeam(context);
                                },
                                icon: Icon(
                                  Icons.sports_soccer,
                                  size: 30.w,
                                  color: Colors.white,
                                ),
                              ),
                              //   SvgPicture.asset("")
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
                        mainAxisAlignment: MainAxisAlignment.center,
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
                                      fontSize: 10.sp,
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
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(width: 32.w),
                          // Status section
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Status - ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Live',
                                style: TextStyle(
                                  color: Color(0xFF10B981),
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 24.h),

              // Control Buttons
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
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFFFAF0),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1.w,
                              color: Color(0xFFEE8B00),
                            ),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                        onPressed: () {
                          // Navigator.pop(context);
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
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(8.r),
                    onTap: () {},
                    child: Center(
                      child: Text(
                        "End Match",
                        style: TextStyle(
                          color: Color(0xFF292A6A),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 16.h),

              // Match Timeline
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(width: 1.w, color: Color(0xFFEDF1F3)),
                ),
                child: Column(
                  children: [
                    // Full Time Score
                    _buildScoreEvent("81'", "1 - 1"),

                    _buildTimelineEvent(
                      "68'",
                      "R. Holding",
                      EventType.redCard,
                      isLeft: false,
                    ),

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
                      "Penalty",
                      "1 - 1",
                      EventType.goal,
                    ),

                    _buildTimelineEvent(
                      "55'",
                      "G. Xhaka",
                      EventType.yellowCard,
                      isLeft: false,
                    ),

                    // Half Time
                    _buildHalfTimeEvent("0 - 1"),

                    _buildPenaltyEvent(
                      "31'",
                      "B. Saka",
                      "K. Tierney",
                      "",
                      "0 - 1",
                      EventType.redCard,
                    ),

                    _buildKickOffEvent(),
                  ],
                ),
              ),
              SizedBox(height: 70.h),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildScoreEvent(String time, String score) {
  return Container(
    width: double.infinity,
    child: Column(
      children: [
        SizedBox(height: 8.h),
        Text(
          time,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
            color: Color(0xFF274893),
          ),
        ),
        SizedBox(height: 10.h),
        Text(
          score,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
            color: Color(0xFF64666B),
          ),
        ),
        SizedBox(height: 9.h),
        Divider(thickness: 1, color: Color(0xFFEDF1F3), height: 1),
      ],
    ),
  );
}

Widget _buildTimelineEvent(
  String? time,
  String playerName,
  EventType eventType, {
  required bool isLeft,
}) {
  return Container(
    width: double.infinity,
    child: Column(
      children: [
        SizedBox(height: 8.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Left
            Expanded(
              flex: 4,
              child:
                  isLeft
                      ? _buildPlayerInfo(
                        playerName,
                        eventType,
                        null,
                        isLeft: false,
                      )
                      : Container(),
            ),

            Expanded(
              flex: 2,
              child: Center(
                child: Text(
                  time ?? "",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF23262D),
                  ),
                ),
              ),
            ),

            // Right
            Expanded(
              flex: 4,
              child:
                  !isLeft
                      ? _buildPlayerInfo(
                        playerName,
                        eventType,
                        null,
                        isLeft: true,
                      )
                      : Container(),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Divider(thickness: 1, color: Color(0xFFEDF1F3), height: 1),
      ],
    ),
  );
}

Widget _buildSubstitutionEvent(
  String? time,
  String playerOut,
  String playerIn, {
  required bool isLeft,
}) {
  return Container(
    width: double.infinity,
    child: Column(
      children: [
        SizedBox(height: 15.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Left side content
            Expanded(
              flex: 4,
              child:
                  isLeft
                      ? _buildSubstitutionInfo(
                        playerOut,
                        playerIn,
                        isLeft: false,
                      )
                      : Container(),
            ),

            // Center time
            Expanded(
              flex: 2,
              child: Center(
                child: Text(
                  time ?? "",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF23262D),
                  ),
                ),
              ),
            ),

            // Right side content
            Expanded(
              flex: 4,
              child:
                  !isLeft
                      ? _buildSubstitutionInfo(
                        playerOut,
                        playerIn,
                        isLeft: true,
                      )
                      : Container(),
            ),
          ],
        ),
        SizedBox(height: 15.h),
        Divider(thickness: 1, color: Color(0xFFEDF1F3), height: 1),
      ],
    ),
  );
}

Widget _buildPenaltyEvent(
  String? time,
  String? playerName,
  String? otherPlayer,
  String? eventDescription,
  String score,
  EventType? eventType,
) {
  return Container(
    width: double.infinity,
    child: Column(
      children: [
        SizedBox(height: 8.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Left side - Goal scorer
            Expanded(
              flex: 4,
              child: _buildPlayerInfo(
                playerName,
                eventType ?? EventType.goal,
                eventDescription,
                isLeft: false,
              ),
            ),

            // Center - Time and Score
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    time ?? "",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0xFF23262D),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    score,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF939598),
                    ),
                  ),
                ],
              ),
            ),

            // Right side - Other player (if any)
            Expanded(
              flex: 4,
              child:
                  otherPlayer != null
                      ? _buildPlayerInfo(
                        otherPlayer,
                        EventType.yellowCard,
                        null,
                        isLeft: true,
                      )
                      : Container(),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Divider(thickness: 1, color: Color(0xFFEDF1F3), height: 1),
      ],
    ),
  );
}

Widget _buildHalfTimeEvent(String score) {
  return Container(
    width: double.infinity,
    child: Column(
      children: [
        SizedBox(height: 8.h),
        Text(
          "Half Time",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
            color: Color(0xFF23262D),
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          score,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
            color: Color(0xFF939598),
          ),
        ),
        SizedBox(height: 8.h),
        Divider(thickness: 1, color: Color(0xFFEDF1F3), height: 1),
      ],
    ),
  );
}

Widget _buildKickOffEvent() {
  return Container(
    width: double.infinity,

    child: Column(
      children: [
        SizedBox(height: 8.h),

        Center(
          child: Text(
            "Kick Off",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
              color: Color(0xFF23262D),
            ),
          ),
        ),
        SizedBox(height: 8.h),
        Divider(thickness: 1, color: Color(0xFFEDF1F3), height: 1),
      ],
    ),
  );
}

Widget _buildPlayerInfo(
  String? playerName,
  EventType eventType,
  String? eventDescription, {
  required bool isLeft,
}) {
  return Container(
    child: Row(
      mainAxisAlignment:
          isLeft ? MainAxisAlignment.start : MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (isLeft) ...[_buildEventIcon(eventType), SizedBox(width: 8.w)],

        Flexible(
          child: Column(
            crossAxisAlignment:
                isLeft ? CrossAxisAlignment.start : CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                playerName ?? "",
                textAlign: isLeft ? TextAlign.start : TextAlign.end,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF23262D),
                ),
              ),
              if (eventDescription != null && eventDescription.isNotEmpty)
                Text(
                  eventDescription,
                  textAlign: isLeft ? TextAlign.start : TextAlign.end,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Color(0xFF939598),
                    fontWeight: FontWeight.w400,
                  ),
                ),
            ],
          ),
        ),

        if (!isLeft) ...[SizedBox(width: 8.w), _buildEventIcon(eventType)],
      ],
    ),
  );
}

Widget _buildSubstitutionInfo(
  String playerOut,
  String playerIn, {
  required bool isLeft,
}) {
  return Container(
    child: Row(
      mainAxisAlignment:
          isLeft ? MainAxisAlignment.start : MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (isLeft) ...[
          _buildEventIcon(EventType.substitution),
          SizedBox(width: 8.w),
        ],

        Flexible(
          child: Column(
            crossAxisAlignment:
                isLeft ? CrossAxisAlignment.start : CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                playerOut,
                textAlign: isLeft ? TextAlign.start : TextAlign.end,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF23262D),
                ),
              ),
              Text(
                playerIn,
                textAlign: isLeft ? TextAlign.start : TextAlign.end,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF939598),
                ),
              ),
            ],
          ),
        ),

        if (!isLeft) ...[
          SizedBox(width: 8.w),
          _buildEventIcon(EventType.substitution),
        ],
      ],
    ),
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
        height: 20.h,
        width: 20.w,
      );
    case EventType.goal:
      return SvgPicture.asset(
        'assets/bx_football.svg',
        width: 20.w,
        height: 20.h,
      );
  }
}

Future<void> PenaltyDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        backgroundColor: Colors.white,
        child: Container(
          height: 470.h,
          width: 343.w,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.h),
                Row(
                  children: [
                    Text(
                      "Penalties",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF061D3D),
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: Container(
                        height: 20.h,
                        width: 20.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color(0xFF292A6A),
                            width: 1.25.w,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.close,
                          color: Color(0xFF292A6A),
                          size: 15.sp,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 6.h),

                Row(
                  children: [
                    Text(
                      "First Kicker",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF061D3D),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Next: Team 1 • Kick 4 of 5",
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF061D3D),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 14.h),

                /// ---------- Teams & Score ----------
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.sports_soccer,
                          size: 30.w,
                          color: Colors.black,
                        ),
                        SizedBox(width: 6.w),
                        Text(
                          "Team 1",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF061D3D),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      height: 26.h,
                      decoration: BoxDecoration(
                        color: Color(0xFF061D3D),
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: Center(
                        child: Text(
                          "3 - 2",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Team 2",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF061D3D),
                          ),
                        ),
                        SizedBox(width: 6.w),
                        Icon(
                          Icons.sports_soccer,
                          size: 30.w,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 8.h),

                /// ---------- Penalty Circle Indicators ----------
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Team 1 circles
                    Row(
                      children: [
                        _buildPenaltyCircle(isGoal: true), // Green - Goal
                        SizedBox(width: 4.w),
                        _buildPenaltyCircle(isGoal: true), // Green - Goal
                        SizedBox(width: 4.w),
                        _buildPenaltyCircle(isGoal: true), // Green - Goal
                        SizedBox(width: 4.w),
                        _buildPenaltyCircle(isEmpty: true), // Empty - Not taken
                        SizedBox(width: 4.w),
                        _buildPenaltyCircle(isEmpty: true), // Empty - Not taken
                      ],
                    ),
                    // Team 2 circles
                    Row(
                      children: [
                        _buildPenaltyCircle(isGoal: true), // Green - Goal
                        SizedBox(width: 4.w),
                        _buildPenaltyCircle(isGoal: true), // Green - Goal
                        SizedBox(width: 4.w),
                        _buildPenaltyCircle(isMiss: true), // Red - Miss
                        SizedBox(width: 4.w),
                        _buildPenaltyCircle(isEmpty: true), // Empty - Not taken
                        SizedBox(width: 4.w),
                        _buildPenaltyCircle(isEmpty: true), // Empty - Not taken
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 20.h),

                Text(
                  "Suggestion Player",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF061D3D),
                  ),
                ),

                SizedBox(height: 12.h),

                Wrap(
                  spacing: 20.w,
                  runSpacing: 14.h,
                  children: [
                    _buildPlayerButton("Gavi", "Spain", "assets/gavi.png"),
                    _buildPlayerButton("Pedri", "Spain", "assets/pedri.png"),
                    _buildPlayerButton("Torre", "Spain", "assets/torre.png"),
                    _buildPlayerButton("Torre", "Spain", "assets/torre.png"),
                    _buildPlayerButton("Torre", "Spain", "assets/torre.png"),
                  ],
                ),

                SizedBox(height: 14.h),

                /// ---------- TextField ----------
                _buildTextfield(
                  label: "Player Name",
                  hintText: "Enter Player Name",
                ),

                SizedBox(height: 14.h),

                /// ---------- Action Buttons ----------
                Row(
                  children: [
                    _buildButton("⚽ Goal", Colors.green, null, () {}),
                    SizedBox(width: 10.w),
                    _buildButton("😔 Miss", Colors.red, null, () {}),
                    SizedBox(width: 10.w),
                    _buildButton(
                      "Undo",
                      Color(0xFFFFFAF0),
                      Color(0xFFEE8B00),
                      () {},
                      textColor: Color(0xFFEE8B00),
                    ),
                  ],
                ),

                SizedBox(height: 16.h),
                SizedBox(
                  height: 34.h,
                  width: 311.w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.w, color: Colors.green),
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "End Match",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
              ],
            ),
          ),
        ),
      );
    },
  );
}

Widget _buildPenaltyCircle({
  bool isGoal = false,
  bool isMiss = false,
  bool isEmpty = false,
}) {
  if (isEmpty) {
    return SizedBox(
      height: 12.h,
      width: 12.w,
      child: DottedBorder(
        options: CircularDottedBorderOptions(
          dashPattern: [3, 2],
          color: Colors.grey.shade400,
          strokeWidth: 1.5,
          padding: EdgeInsets.all(2),
        ),

        child: SizedBox(),
      ),
    );
  }

  Color circleColor;
  if (isGoal) {
    circleColor = Colors.green;
  } else if (isMiss) {
    circleColor = Colors.red;
  } else {
    circleColor = Colors.transparent;
  }

  return Container(
    height: 12.h,
    width: 12.w,
    decoration: BoxDecoration(shape: BoxShape.circle, color: circleColor),
  );
}

/// Player Button
Widget _buildPlayerButton(String name, String country, String image) {
  return Container(
    padding: EdgeInsets.all(6.w),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r)),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(radius: 15.r, backgroundImage: AssetImage(image)),
        SizedBox(width: 6.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xFF061D3D),
              ),
            ),
            Text(
              country,
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xFF64666B),
              ),
            ),
          ],
        ),
      ],
    ),
  );
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
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          color: Color(0xFF061D3D),
        ),
      ),
      SizedBox(height: 8.h),
      SizedBox(
        height: 30.h,
        child: TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: 8.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xFF061D3D),
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
            contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
          ),
          keyboardType: keyboardType,
        ),
      ),
    ],
  );
}

/// Action Buttons
Widget _buildButton(
  String text,
  Color bgColor,
  Color? borderColor,
  VoidCallback onPressed, {
  Color textColor = Colors.white,
}) {
  return Expanded(
    child: SizedBox(
      height: 30.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: borderColor ?? Colors.transparent),
            borderRadius: BorderRadius.circular(6.r),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
  );
}

Future<void> LivecontrolTeam(BuildContext context) {
  String selectedTeam = 'Team 1';
  final List<String> teams = ['Team 1', 'Team 2'];
  int minute = 42;
  return showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        child: StatefulBuilder(
          builder: (context, setState) {
            return Container(
              height: 600.h,
              width: 343.w,
              decoration: BoxDecoration(),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16.h),
                    Row(
                      children: [
                        Text(
                          "Live Control",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF061D3D),
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () => Navigator.of(context).pop(),
                          child: Container(
                            height: 20.h,
                            width: 20.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color(0xFF292A6A),
                                width: 1.25.w,
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.close,
                              color: Color(0xFF292A6A),
                              size: 15.sp,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 6.h),

                    Row(
                      children: [
                        Text(
                          "Team",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        Spacer(),
                        // Team logo
                        Icon(
                          Icons.sports_soccer,
                          size: 30.w,
                          color: Colors.black,
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                color: Color(0xFF1C1C1C),
                              ),
                              value: selectedTeam,
                              items:
                                  teams.map((team) {
                                    return DropdownMenuItem(
                                      value: team,
                                      child: Text(team),
                                    );
                                  }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  selectedTeam = value!;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 14.h),
                    Text(
                      "Action",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF061D3D),
                      ),
                    ),
                    SizedBox(height: 7.h),
                    Row(
                      children: [
                        _buildContainer("⚽ Goal"),
                        Spacer(),
                        _buildContainer("🟨 Yellow Card"),
                      ],
                    ),
                    SizedBox(height: 11.h),
                    Row(
                      children: [
                        _buildContainer("🟥 Red Card"),
                        Spacer(),
                        _buildContainer("🔄 Substitute"),
                      ],
                    ),
                    SizedBox(height: 11.h),
                    Row(
                      children: [
                        _buildContainer("🚩 Penalty"),
                        Spacer(),
                        _buildContainer("🤕 Injury"),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      "Minute",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF061D3D),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Container(
                      height: 30.h,
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFEDF1F3),
                          width: 1.w,
                        ),
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "$minute Min",
                            style: TextStyle(
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w400,

                              color: Colors.grey.shade600,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "$minute Min",
                                  style: TextStyle(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment
                                          .center, // ✅ Center icons
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          minute++;
                                        });
                                      },
                                      child: Icon(
                                        Icons.keyboard_arrow_up,
                                        size: 14.sp, // ✅ smaller so it fits
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (minute > 0) minute--;
                                        });
                                      },
                                      child: Icon(
                                        Icons.keyboard_arrow_down,
                                        size: 14.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 16.h),

                          Text(
                            "Suggestion Player",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF061D3D),
                            ),
                          ),

                          SizedBox(height: 8.h),

                          Wrap(
                            spacing: 20.w,
                            runSpacing: 14.h,
                            children: [
                              _buildPlayerButton(
                                "Gavi",
                                "Spain",
                                "assets/gavi.png",
                              ),
                              _buildPlayerButton(
                                "Pedri",
                                "Spain",
                                "assets/pedri.png",
                              ),
                              _buildPlayerButton(
                                "Torre",
                                "Spain",
                                "assets/torre.png",
                              ),
                            ],
                          ),

                          SizedBox(height: 16.h),
                          _buildTextfield(
                            label: "Player Name",
                            hintText: "Enter Player Name",
                          ),
                          SizedBox(height: 12.h),

                          _buildTextfield(
                            label: "Assist ( Optional )",
                            hintText: "Enter Assist",
                          ),

                          SizedBox(height: 14.h),

                          Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 34.h,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFFFFFAF0),

                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: Color(0xFFEE8B00),
                                          width: 1.w,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          6.r,
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "Undo",
                                      style: TextStyle(
                                        color: Color(0xFFEE8B00),
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 13.w),
                              Expanded(
                                child: SizedBox(
                                  height: 34.h,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFF67B311),

                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                          8.r,
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "Add",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16.h),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );
    },
  );
}

Widget _buildContainer(String text) {
  return Container(
    height: 28.h,
    width: 117.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6.r),
      border: Border.all(width: 1.w, color: Color(0x442E8F40)),
    ),
    alignment: Alignment.center,
    child: Text(
      text,
      style: TextStyle(
        color: Colors.black,
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
