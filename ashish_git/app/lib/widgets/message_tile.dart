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
          vertical: 12,
          horizontal: 16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: widget.sentByMe
              ? Color.fromARGB(255, 83, 73, 228)
              : Color.fromARGB(255, 147, 140, 236),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            

           Image.asset(
              'assets/images/userpfp.png',
              height: 20,
              width: 20,
           ),

            const SizedBox(height: 4),
            
            Text(
              widget.sender.toUpperCase(),
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              widget.message,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
