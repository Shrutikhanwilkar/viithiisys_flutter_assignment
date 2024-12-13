import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_test/constants/app_color.dart';
import 'package:ui_test/constants/image_paths.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Icon(CupertinoIcons.search, size: 30),
                  SizedBox(width: 5),
                  Text(
                    'Tap to start search...',
                    style: TextStyle(color: AppColors.textGrey),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: SizedBox(
                      width: 18, // Set your desired width
                      height: 18, // Set your desired height
                      child: Image(
                        image: AssetImage(ImagePath.cancel),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildTab('All', Icons.grid_view_outlined),
                    _buildTab('Task', Icons.comment_bank_outlined),
                    _buildTab('List', Icons.list_alt_outlined),
                    _buildTab('Users', Icons.person),
                    _buildTab('Filter', Icons.filter),
                  ],
                ),
              ),
            ),
            const Divider(),
            _buildListItem(Icons.add, 'Create Task', 'Partners', 'R'),
            _buildListItem(Icons.sticky_note_2_outlined, 'Note Template',
                'In Commands', '→'),
            _buildListItem(Icons.person, 'Add Person', 'Partners', 'T'),
            _buildListItem(
                Icons.person, 'Manage Attribute', 'In Commands', 'H'),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildBottomWidget(
                  imagePath: ImagePath.sun,
                  title: 'Good Morning',
                  des: '66 F and Sunny',
                ),
                const SizedBox(height: 100, child: VerticalDivider()),
                _buildBottomWidget(
                  imagePath: ImagePath.calender,
                  des: 'Weekly Team Meeting',
                  title: 'Next Agenda ',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(String label, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Row(
        children: [
          Icon(icon, color: AppColors.secondaryColor),
          const SizedBox(width: 4),
          Text(
            label,
            style: const TextStyle(color: AppColors.secondaryColor),
          ),
        ],
      ),
    );
  }

  Widget _buildListItem(
      IconData icon, String title, String subtitle, String shortcut) {
    return ListTile(
        leading: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.borderColor)),
          child: Icon(icon, color: AppColors.secondaryColor, size: 22),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
        subtitle: Text(subtitle,
            style: const TextStyle(color: AppColors.secondaryColor)),
        trailing: Container(
          height: 30,
          width: 30,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: AppColors.greyColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColors.borderColor)),
          child: Text(shortcut,
              style: const TextStyle(color: AppColors.secondaryColor)),
        ));
  }

  Widget _buildBottomWidget({
    required String imagePath,
    required String title,
    required String des,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Image(image: AssetImage(imagePath), height: 24, width: 24),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$title →',
                style: const TextStyle(color: AppColors.secondaryColor),
              ),
              Text(
                des,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
