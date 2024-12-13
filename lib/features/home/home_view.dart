import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:ui_test/features/notification/notification_view.dart';
import 'package:ui_test/features/searchBar/search_view.dart';
import 'package:ui_test/constants/image_paths.dart';
import 'package:ui_test/utils/resusable_widgets.dart';
import '../../constants/app_color.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              appbar(),
              const SizedBox(height: 15),
              const Divider(),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 50,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.0),
                  border: Border.all(color: AppColors.borderColor),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.calendar_today_outlined,
                        size: 20, color: AppColors.secondaryColor),
                    SizedBox(width: 4),
                    Text('Last updated: Feb 28, 2024',
                        style: TextStyle(color: AppColors.secondaryColor)),
                    SizedBox(width: 4),
                    Icon(Icons.refresh,
                        size: 20, color: AppColors.secondaryColor)
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                      flex: 4,
                      child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 50),
                            side:
                                const BorderSide(color: AppColors.borderColor),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.filter_alt_outlined,
                                color: AppColors.secondaryColor,
                              ),
                              Text(
                                'Filter',
                                style:
                                    TextStyle(color: AppColors.secondaryColor),
                              ),
                            ],
                          ))),
                  const SizedBox(width: 10),
                  Expanded(flex: 7, child: button(() {}, 'Import/Export'))
                ],
              ),
              const SizedBox(height: 20),
              Skeletonizer(
                enabled: isLoading, // Toggle this to simulate loading

                child: const Column(
                  children: [
                    StatCard(
                      icon: Icons.receipt_long,
                      title: "Total Sales",
                      value: "\$23,569.00",
                      percentageChange: "10,5%",
                      isPositive: true,
                    ),
                    StatCard(
                      icon: Icons.bar_chart,
                      title: "Avg. Sale Value",
                      value: "\$12,680.00",
                      percentageChange: "3,4%",
                      isPositive: true,
                    ),
                    StatCard(
                      icon: Icons.person,
                      title: "Total Deals",
                      value: "1,204",
                      percentageChange: "0,5%",
                      isPositive: false,
                    ),
                  ],
                ),
              ),
              Skeletonizer(
                enabled: isLoading,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.borderColor),
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                Image(
                                    image: AssetImage(ImagePath.piggy),
                                    height: 20,
                                    width: 20),
                                SizedBox(width: 4),
                                Text('Revenue',
                                    style: TextStyle(
                                        color: AppColors.secondaryColor)),
                              ],
                            ),
                            OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  minimumSize: const Size(140, 45),
                                  side: const BorderSide(
                                      color: AppColors
                                          .borderColor), // Border color
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        12), // Rounded corners
                                  ),
                                ),
                                child: const Row(
                                  children: [
                                    Text(
                                      'All products',
                                      style: TextStyle(
                                          color: AppColors.secondaryColor),
                                    ),
                                    SizedBox(width: 4),
                                    Icon(Icons.keyboard_arrow_down_rounded,
                                        color: AppColors.secondaryColor)
                                  ],
                                ))
                          ],
                        ),
                      ),
                      const Divider(),
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('\$23,569.00',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Row(
                                  children: [
                                    Icon(Icons.arrow_upward,
                                        color: Colors.green),
                                    Text(
                                      '10,5%',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(width: 5),
                                    Text("from last period",
                                        style: TextStyle(
                                            color: AppColors.secondaryColor)),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                PeriodRow(
                                  text: "This period",
                                  color: AppColors.blackColour,
                                ),
                                SizedBox(width: 20),
                                PeriodRow(
                                  text: "Last period",
                                  color: Colors.blue,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      chart()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AxisTitles leftTitles() {
    return AxisTitles(
      sideTitles: SideTitles(
        getTitlesWidget: leftTitleWidgets,
        interval: 1,
        reservedSize: 40,
        showTitles: true,
      ),
    );
  }

  Text leftTitleWidgets(double value, TitleMeta meta) {
    String text = switch (value.toInt()) {
      1 => '5',
      2 => '10',
      3 => '15',
      4 => '20',
      5 => '25',
      6 => '30',
      7 => '35',
      _ => '',
    };

    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 14,
        color: Colors.white,
      ),
    );
  }

  Widget chart() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: 220,
        child: LineChart(
          LineChartData(
            borderData: FlBorderData(show: false),
            titlesData: FlTitlesData(
              leftTitles: leftTitles(), // Use the custom left titles
            ),
            lineBarsData: [
              LineChartBarData(
                spots: [
                  const FlSpot(0, 1),
                  const FlSpot(1, 2),
                  const FlSpot(2, 1.5),
                  const FlSpot(3, 3),
                  const FlSpot(4, 2),
                ],
                color: Colors.blue,
                belowBarData: BarAreaData(
                    show: true, color: Colors.blue.withOpacity(0.3)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  appbar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Get.to(const NotificationPage());
          },
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.borderColor)),
            child: const Icon(Icons.menu,
                color: AppColors.secondaryColor, size: 18),
          ),
        ),
        Row(
          children: [
            userProfile(),
            const SizedBox(width: 10),
            const SizedBox(height: 35, child: VerticalDivider()),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Get.to(const SearchView());
              },
              child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.borderColor)),
                child: const Icon(Icons.more_vert,
                    color: AppColors.secondaryColor, size: 18),
              ),
            ),
          ],
        ),
      ],
    );
  }

  userProfile() {
    return Row(
      children: [
        const CircleAvatar(
          radius: 18,
          backgroundImage: NetworkImage(
              'https://img.freepik.com/free-photo/happy-man_1368-3673.jpg?t=st=1734077776~exp=1734081376~hmac=d2098123cb9e5fcb302622b48d01564527606f14edd87acadaf450ab2e7c260f&w=740'),
        ),
        const CircleAvatar(
          radius: 18,
          backgroundImage: NetworkImage(
              'https://img.freepik.com/free-photo/happy-man_1368-3673.jpg?t=st=1734077776~exp=1734081376~hmac=d2098123cb9e5fcb302622b48d01564527606f14edd87acadaf450ab2e7c260f&w=740'),
        ),
        CircleAvatar(
          radius: 18,
          backgroundColor: Colors.grey[200],
          child: const Icon(
            Icons.add,
            color: AppColors.secondaryColor,
            size: 20,
          ),
        ),
      ],
    );
  }
}

class StatCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final String percentageChange;
  final bool isPositive;

  const StatCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    required this.percentageChange,
    required this.isPositive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.borderColor),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 45,
                  width: 45,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: AppColors.bgColor,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColors.borderColor)),
                  child: const Image(image: AssetImage(ImagePath.coins)),
                ),
                const SizedBox(height: 5),
                Text(title,
                    style: const TextStyle(color: AppColors.secondaryColor)),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(value,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    const Image(
                        image: AssetImage(ImagePath.arrowright),
                        height: 20,
                        width: 20)
                  ],
                ),
                const SizedBox(height: 5),
              ],
            ),
          ),
          Container(
            height: 30,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
                color: AppColors.borderColor,
                border: Border.all(color: AppColors.borderColor)),
            child: Row(
              children: [
                Icon(
                  isPositive ? Icons.arrow_upward : Icons.arrow_downward,
                  color: isPositive ? Colors.green : Colors.red,
                ),
                Text(
                  percentageChange,
                  style: TextStyle(
                    color: isPositive ? Colors.green : Colors.red,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                const Text(
                  "from last period",
                  style: TextStyle(color: AppColors.secondaryColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PeriodRow extends StatelessWidget {
  final String text;
  final Color color;

  const PeriodRow({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(2)),
        ),
        const SizedBox(width: 5),
        Text(text, style: const TextStyle(color: AppColors.blackColour)),
      ],
    );
  }
}
