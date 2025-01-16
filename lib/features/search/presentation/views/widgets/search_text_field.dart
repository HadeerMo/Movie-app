import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key, this.onChanged,
  });
final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        hintText: 'Search',
        suffixIcon: IconButton(
          onPressed: (){},
          icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: Colors.white,
            size: 18,
          ),
        ),
      ),
    );
  }
}
