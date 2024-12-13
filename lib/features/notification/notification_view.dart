import 'package:flutter/material.dart';
import 'package:ui_test/constants/app_color.dart';

import '../../constants/image_paths.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        actions: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: AppColors.bgColor,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.borderColor)),
            child: const Icon(Icons.horizontal_rule,
                color: AppColors.secondaryColor, size: 18),
          ),
          const SizedBox(width: 10),
          Container(
            height: 30,
            width: 30,
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
                color: AppColors.bgColor,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.borderColor)),
            child: const Image(image: AssetImage(ImagePath.arrowsDiagonal)),
          ),
          const SizedBox(width: 10),
          Container(
            height: 30,
            width: 30,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: AppColors.bgColor,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.borderColor)),
            child: const Image(image: AssetImage(ImagePath.cancel)),
          ),
          const SizedBox(width: 20),
        ],
        title: const Text(
          'Notifications',
          style: TextStyle(
              fontSize: 20,
              color: AppColors.secondaryColor,
              fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_outlined,
              color: AppColors.secondaryColor,
            )),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: index == 0
                              ? AppColors.bgColor
                              : AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://media.istockphoto.com/id/674176984/photo/portrait-of-a-girl.jpg?s=2048x2048&w=is&k=20&c=FjiRm7RUYnTZ37xleILbCXLZnOi_ctGIlgJc2Y3hrnA='),
                                radius: 24,
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: RichText(
                                  text: const TextSpan(
                                    text: 'Eleanor Pena ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: AppColors.blackColour),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'added you to a task',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: AppColors.secondaryColor,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: const Icon(Icons.horizontal_rule),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.72,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextFormField(
                                    readOnly: true,
                                    decoration: InputDecoration(
                                      prefixIcon: Container(
                                        margin: const EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                            color: AppColors.lightPurpleColor,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: const Icon(
                                            Icons.check_box_outlined,
                                            color: AppColors.purpleColor,
                                            size: 15),
                                      ),
                                      hintText: 'Sustainability Awareness',
                                      hintStyle: const TextStyle(
                                          color: AppColors.blackColour,
                                          fontSize: 15),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                        borderSide: const BorderSide(
                                            color: AppColors.borderColor),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                        borderSide: const BorderSide(
                                            color: AppColors.borderColor),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                        borderSide: const BorderSide(
                                            color: AppColors.borderColor),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                        borderSide: const BorderSide(
                                            color: AppColors.borderColor),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  const Text(
                                    '3 hours ago',
                                    style: TextStyle(color: AppColors.textGrey),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 15);
                  },
                  itemCount: 2),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: index == 1
                              ? AppColors.bgColor
                              : AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://media.istockphoto.com/id/674176984/photo/portrait-of-a-girl.jpg?s=2048x2048&w=is&k=20&c=FjiRm7RUYnTZ37xleILbCXLZnOi_ctGIlgJc2Y3hrnA='),
                                radius: 24,
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: RichText(
                                  text: const TextSpan(
                                    text: 'Kristin Watson ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: AppColors.blackColour),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'commented on a task',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: AppColors.secondaryColor,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: const Icon(Icons.horizontal_rule),
                                onPressed: () {
                                  // Handle more options (e.g., mark as read, delete)
                                },
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.70,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    children: [
                                      SizedBox(
                                          height: 40,
                                          child: VerticalDivider(
                                            color: AppColors.purpleColor,
                                          )),
                                      SizedBox(width: 10),
                                      Text(
                                        'Competitive Targeting',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),

                                  // TextFormField(
                                  //   readOnly: true,
                                  //   decoration: InputDecoration(
                                  //     prefixIcon: Container(
                                  //       margin: const EdgeInsets.all(8),
                                  //       decoration: BoxDecoration(
                                  //           color: AppColors.lightPurpleColor,
                                  //           borderRadius:
                                  //           BorderRadius.circular(5)),
                                  //       child: const Icon(
                                  //           Icons.check_box_outlined,
                                  //           color: AppColors.purpleColor,
                                  //           size: 15),
                                  //     ),
                                  //     hintText: 'Sustainability Awareness',
                                  //     hintStyle: const TextStyle(
                                  //         color: AppColors.blackColour),
                                  //     border: OutlineInputBorder(
                                  //       borderRadius:
                                  //       BorderRadius.circular(14.0),
                                  //       borderSide: const BorderSide(
                                  //           color: AppColors.borderColor),
                                  //     ),
                                  //   ),
                                  // ),
                                  // const SizedBox(height: 6),
                                  const Wrap(
                                    children: [
                                      Text(
                                        '“Ipsum rhoncus nibh malesuada magnis posuere aliquam nunc orci egestas. Ut nunc at aliquet mi auctor elementum. Ultrices dui et pellentesque amet enim”',
                                        style: TextStyle(
                                            color: AppColors.secondaryColor,
                                            fontSize: 15),
                                      ),
                                      Text(
                                        '@Alexandra',
                                        style: TextStyle(
                                            color: AppColors.blackColour,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5),

                                  OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                      side: const BorderSide(
                                          color: AppColors.borderColor),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: const Text(
                                      'Reply',
                                      style: TextStyle(
                                          color: AppColors.blackColour),
                                    ),
                                  ),
                                  const SizedBox(height: 5),

                                  const Text(
                                    'Friday, Mar 01',
                                    style: TextStyle(
                                        color: AppColors.textGrey,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 15);
                  },
                  itemCount: 2),
            ),
          ],
        ),
      ),
    );
  }
}
