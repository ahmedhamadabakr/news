import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset(
              "assets/entertaiment.avif",
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            "this image to test web site for development this app",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),  
          ),

          Text(
            "this the second text where addedsdfsfwefwefwefwefewfwefwefwefwefwfwef",
            style: TextStyle(
              color: Colors.grey,
              overflow: TextOverflow.ellipsis,

              fontSize: 13,
              fontWeight: FontWeight.w500,
              backgroundColor: const Color.fromARGB(27, 72, 71, 71),
            ),
          ),
        ],
      ),
    );
  }
}
