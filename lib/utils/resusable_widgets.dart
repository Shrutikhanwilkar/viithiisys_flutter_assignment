import 'package:flutter/material.dart';

import '../constants/app_color.dart';
import '../constants/image_paths.dart';

Widget logo() {
  return const Row(
    children: [
      Image(
        image: AssetImage(ImagePath.logo),
        height: 25,
      ),
      SizedBox(width: 4),
      Text(
        'Clario',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ],
  );
}

Widget textFormField(
    label, TextEditingController? controller, VoidCallback? onTap) {
  return Column(
    children: [
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          label,
          style: const TextStyle(
              fontSize: 14,
              color: AppColors.secondaryColor,
              fontWeight: FontWeight.w500),
        ),
      ),
      const SizedBox(height: 10),
      TextFormField(
        controller: controller,
        readOnly: onTap != null,
        onTap: onTap,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.0),
            borderSide: const BorderSide(color: AppColors.borderColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.0),
            borderSide: const BorderSide(color: AppColors.borderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.0),
            borderSide: const BorderSide(color: AppColors.borderColor),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.0),
            borderSide: const BorderSide(color: AppColors.borderColor),
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter value';
          }
          return null;
        },
      ),
    ],
  );
}

Widget button(void Function()? onPressed, String msg) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primaryColor,
      minimumSize: const Size(double.infinity, 50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
    ),
    child: Text(
      msg,
      style: const TextStyle(color: AppColors.whiteColor),
    ),
  );
}

Widget numbers(numb, msg) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        '$numb/3',
        style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.secondaryColor),
      ),
      Text(
        '$msg',
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 16),
    ],
  );
}

Widget outLineButton(title) {
  return OutlinedButton(
    onPressed: () {},
    style: OutlinedButton.styleFrom(
      side: const BorderSide(color: AppColors.borderColor),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
    child: Text(
      title,
      style: const TextStyle(color: AppColors.secondaryColor),
    ),
  );
}

Widget addImage() {
  return Row(
    children: [
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: AppColors.borderColor,
          ),
        ),
        child: const CircleAvatar(
          radius: 25,
          backgroundColor: Colors.transparent,
          child: Icon(
            Icons.person_outline_outlined,
            color: AppColors.blackColour,
          ),
        ),
      ),
      const SizedBox(width: 10),
      OutlinedButton(
        onPressed: () {},
        style: ButtonStyle(
          side: MaterialStateProperty.all<BorderSide>(
            const BorderSide(color: AppColors.borderColor),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(10), // Set your desired radius
            ),
          ),
        ),
        child: const Row(
          children: [
            Icon(
              Icons.cloud_upload_outlined,
              color: AppColors.blackColour,
              size: 15,
            ),
            SizedBox(width: 2),
            Text(
              'Add Image',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: AppColors.blackColour),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget aboutApp() {
  return const Column(
    children: [
      SizedBox(height: 15),
      Text(
        '© 2024 Clario',
        style: TextStyle(color: AppColors.secondaryColor),
      ),
      SizedBox(height: 15),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Icon(Icons.lock_open, color: AppColors.secondaryColor, size: 15),
              SizedBox(width: 5),
              Text('Privacy',
                  style: TextStyle(color: AppColors.secondaryColor)),
            ],
          ),
          Row(
            children: [
              Icon(Icons.note_outlined,
                  color: AppColors.secondaryColor, size: 15),
              SizedBox(width: 5),
              Text('Terms', style: TextStyle(color: AppColors.secondaryColor)),
            ],
          ),
          Row(
            children: [
              Icon(Icons.question_mark_outlined,
                  color: AppColors.secondaryColor, size: 15),
              SizedBox(width: 5),
              Text('Get help',
                  style: TextStyle(color: AppColors.secondaryColor)),
            ],
          ),
        ],
      )
    ],
  );
}
