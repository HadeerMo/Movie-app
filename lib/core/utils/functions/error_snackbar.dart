import 'package:flutter/material.dart';

SnackBar buildErrorSnackBar(String errorMsg) {
  return SnackBar(
    content: Row(
      children: [
        const Icon(Icons.error, color: Colors.white),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            errorMsg,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    ),
    backgroundColor: Colors.red,
    behavior: SnackBarBehavior.floating,
  );
}
