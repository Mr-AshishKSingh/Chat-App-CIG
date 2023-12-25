import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MessageTile extends StatefulWidget {
  final String message;
  final String sender;
  final bool sentByMe;

  const MessageTile({
    Key? key,
    required this.message,
    required this.sender,
    required this.sentByMe,
  }) : super(key: key);

  @override
  State<MessageTile> createState() => _MessageTileState();
}

class _MessageTileState extends State<MessageTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 4,
        bottom: 4,
        left: widget.sentByMe ? 0 : 24,
        right: widget.sentByMe ? 24 : 0,
      ),
      alignment: widget.sentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: widget.sentByMe
            ? const EdgeInsets.only(left: 30)
            : const EdgeInsets.only(right: 30),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 15,
        ),
        decoration: BoxDecoration(
          //shadow
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 103, 100, 100).withOpacity(0.5),
              spreadRadius: 0.2,
              blurRadius: 0,
              offset: const Offset(0, 0), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(20),
          color: widget.sentByMe
              ? Color.fromARGB(97, 242, 1, 250)
              : Color.fromARGB(168, 237, 235, 235),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/userpfp.png',
              height: 20,
              width: 20,
            ),
            const SizedBox(width: 8),
            Text(
              widget.sender.toUpperCase(),
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 3, 2, 4),
              ),
            ),
            const SizedBox(height: 4),

            const SizedBox(height: 4),

            // start of the message
            //from risght to left

            Text(
              widget.message,
              style: TextStyle(
                fontSize: 16,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
