//import 'package:app/pages/chat_page.dart';
import 'package:app/pages/ChatGroups/chat_page.dart';
import 'package:app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class GroupTile extends StatefulWidget {
  final String userName;
  final String groupId;
  final String groupName;
  const GroupTile(
      {Key? key,
      required this.groupId,
      required this.groupName,
      required this.userName})
      : super(key: key);

  @override
  State<GroupTile> createState() => _GroupTileState();
}

class _GroupTileState extends State<GroupTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        nextScreen(
           context,
            ChatPage(
              groupId: widget.groupId,
              groupName: widget.groupName,
              userName: widget.userName,
            ));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
        
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(166, 223, 211, 211),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: Color.fromARGB(173, 248, 248, 248),
            child: Lottie.asset(
              "assets/images/chatgroup_grouptile.json",
              height: 200,
              width: 200,
            ),
          ),

          title: Text(
            "Group Name -  ${widget.groupName} " ,
            style: GoogleFonts.roboto(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255),
            )
          ),
          subtitle: Center(
            child: Text(
              "Join the conversation as ${widget.userName}",
              style: GoogleFonts.roboto(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
        ),
      ),
    );
  }
}