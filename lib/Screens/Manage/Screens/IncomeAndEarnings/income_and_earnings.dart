import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_service_provider_app/Screens/Manage/Screens/IncomeAndEarnings/passive_income.dart';
import 'package:flutter_service_provider_app/Utils/images_constants.dart';

import '../../../../Utils/color_constants.dart';
import 'EarningComponets/earning_history_tile.dart';
import 'EarningComponets/total_service_tile.dart';

class IncomeAndEarnings extends StatefulWidget {
  const IncomeAndEarnings({Key? key})
      : super(key: key);

  @override
  State<IncomeAndEarnings> createState() =>
      _IncomeAndEarningsState();
}

class _IncomeAndEarningsState
    extends State<IncomeAndEarnings> {
  List<String> yearsList = [
    '1998',
    '1999',
    '2020',
    '2021',
    '2022',
  ];
  String? yearsValue;
  List<String> monthsList = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];
  String? monthsValue;
  @override
  Widget build(BuildContext context) {
    double height =
        MediaQuery.of(context).size.height;
    double width =
        MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text("Income & Earnings"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 10),
              SizedBox(
                height: 60,
                child: Row(
                  children: [
                    Image.asset(
                        ImagesView.moneybagImg),
                    const SizedBox(width: 10),
                    Column(
                      children: const [
                        Text(
                          "₹1,12,456.00",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight:
                                  FontWeight
                                      .bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Total lifetime Earning",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight:
                                  FontWeight
                                      .bold),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: greyColor)),
                padding: const EdgeInsets.only(
                    left: 10, right: 10),
                child: DropdownButton<String>(
                  value: yearsValue,
                  iconSize: 28,
                  itemHeight: 50,
                  isExpanded: true,
                  focusColor: lightblue,
                  underline: const SizedBox(),
                  style: const TextStyle(
                      color: blackColor),
                  items: yearsList.map<
                          DropdownMenuItem<
                              String>>(
                      (String value) {
                    return DropdownMenuItem<
                        String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  hint: Text(
                    yearsList.last,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: blackColor,
                        fontSize: 16,
                        fontWeight:
                            FontWeight.w400),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      yearsValue = value!;
                    });
                  },
                ),
              ),
              const SizedBox(height: 10),
              Card(
                margin: const EdgeInsets.all(0),
                child: Container(
                  height: height / 3.5,
                  padding:
                      const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: greyColor)),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment:
                            CrossAxisAlignment
                                .start,
                        mainAxisAlignment:
                            MainAxisAlignment
                                .spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment:
                                CrossAxisAlignment
                                    .start,
                            children: const [
                              Text(
                                "₹1,12,456.00",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight:
                                        FontWeight
                                            .bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Total lifetime Earning",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight:
                                        FontWeight
                                            .bold),
                              )
                            ],
                          ),
                          Container(
                            height: 30,
                            width: width / 3,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color:
                                        greyColor)),
                            padding:
                                const EdgeInsets
                                        .only(
                                    left: 10,
                                    right: 10),
                            child: DropdownButton<
                                String>(
                              value: monthsValue,
                              iconSize: 28,
                              itemHeight: 50,
                              isExpanded: true,
                              focusColor:
                                  lightblue,
                              underline:
                                  const SizedBox(),
                              style: const TextStyle(
                                  color:
                                      blackColor),
                              items: monthsList.map<
                                  DropdownMenuItem<
                                      String>>((String
                                  value) {
                                return DropdownMenuItem<
                                    String>(
                                  value: value,
                                  child:
                                      Text(value),
                                );
                              }).toList(),
                              hint: Text(
                                monthsList.last,
                                textAlign:
                                    TextAlign
                                        .center,
                                style: const TextStyle(
                                    color:
                                        blackColor,
                                    fontSize: 16,
                                    fontWeight:
                                        FontWeight
                                            .w400),
                              ),
                              onChanged: (String?
                                  value) {
                                setState(() {
                                  monthsValue =
                                      value!;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      const Expanded(
                        child: BarChartview(),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  TotalServiesTile(
                      amountView: "26",
                      title: "Total Services",
                      width: width,
                      imageview: ImagesView
                          .serviceIconImg),
                  const Spacer(),
                  TotalServiesTile(
                      amountView: "₹38,456",
                      title: "Total Earning",
                      width: width,
                      imageview: ImagesView
                          .rupeeIconImg),
                  const Spacer(),
                  TotalServiesTile(
                    amountView: "₹1109",
                    title: "Passive Income",
                    width: width,
                    imageview:
                        ImagesView.crownImg,
                  ),
                ],
              ),
              Card(
                child: ListTile(
                  title: const Text(
                    "Passive Income",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight:
                            FontWeight.bold),
                  ),
                  subtitle: const Text(
                    "₹504",
                    style: TextStyle(
                        fontSize: 20,
                        color: greenColor,
                        fontWeight:
                            FontWeight.bold),
                  ),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons
                          .arrow_forward_ios)),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,
                  children: [
                    const Text(
                      "Earning History",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight:
                              FontWeight.bold),
                    ),
                    Container(
                      height: 30,
                      width: width / 3,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: greyColor)),
                      padding:
                          const EdgeInsets.only(
                              left: 10,
                              right: 10),
                      child:
                          DropdownButton<String>(
                        value: monthsValue,
                        iconSize: 28,
                        itemHeight: 50,
                        isExpanded: true,
                        focusColor: lightblue,
                        underline:
                            const SizedBox(),
                        style: const TextStyle(
                            color: blackColor),
                        items: monthsList.map<
                                DropdownMenuItem<
                                    String>>(
                            (String value) {
                          return DropdownMenuItem<
                              String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        hint: Text(
                          monthsList.last,
                          textAlign:
                              TextAlign.center,
                          style: const TextStyle(
                              color: blackColor,
                              fontSize: 16,
                              fontWeight:
                                  FontWeight
                                      .w400),
                        ),
                        onChanged:
                            (String? value) {
                          setState(() {
                            monthsValue = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                  height: monthsList.length *
                      height /
                      6,
                  child: ListView.builder(
                    physics:
                        const NeverScrollableScrollPhysics(),
                    itemCount: monthsList.length,
                    shrinkWrap: true,
                    itemBuilder:
                        (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder:
                                      (context) =>
                                          const PassiveIncome()));
                        },
                        child: EarningHistoryTile(
                            isShowTotalEarnings:
                                false,
                            height: height),
                      );
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class BarChartview extends StatelessWidget {
  const BarChartview({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barTouchData: barTouchData,
        titlesData: titlesData,
        borderData: borderData,
        barGroups: barGroups,
        gridData: FlGridData(show: false),
        alignment: BarChartAlignment.spaceAround,
        maxY: 20,
      ),
    );
  }

  BarTouchData get barTouchData => BarTouchData(
        enabled: false,
        touchTooltipData: BarTouchTooltipData(
          tooltipBgColor: Colors.transparent,
          tooltipPadding: EdgeInsets.zero,
          tooltipMargin: 8,
          getTooltipItem: (
            BarChartGroupData group,
            int groupIndex,
            BarChartRodData rod,
            int rodIndex,
          ) {
            return BarTooltipItem(
              "",
              // rod.toY.round().toString(),
              const TextStyle(
                color: blackColor,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
      );

  Widget getTitles(double value, TitleMeta meta) {
    TextStyle style = const TextStyle(
      color: blueColor,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'Jan';
        break;
      case 1:
        text = 'Feb';
        break;
      case 2:
        text = 'Mar';
        break;
      case 3:
        text = 'Apr';
        break;
      case 4:
        text = 'May';
        break;
      case 5:
        text = 'Jun';
        break;
      case 6:
        text = 'Jul';
        break;
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4,
      child: Text(text, style: style),
    );
  }

  FlTitlesData get titlesData => FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: getTitles,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles:
              SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles:
              SideTitles(showTitles: false),
        ),
        rightTitles: AxisTitles(
          sideTitles:
              SideTitles(showTitles: false),
        ),
      );

  FlBorderData get borderData => FlBorderData(
        show: false,
      );

  LinearGradient get barsGradient =>
      const LinearGradient(
        colors: [
          blueColor,
          greyColor
          // AppColors.contentColorBlue.darken(20),
          // AppColors.contentColorCyan,
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      );

  List<BarChartGroupData> get barGroups => [
        BarChartGroupData(
          x: 0,
          barRods: [
            BarChartRodData(
              width: 20,
              borderRadius:
                  BorderRadius.circular(0),
              color: blueColor,
              toY: 10,
              // gradient: _barsGradient,
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 1,
          barRods: [
            BarChartRodData(
              toY: 10,
              width: 20,
              borderRadius:
                  BorderRadius.circular(0),
              color: lightblueColor,
              // gradient: _barsGradient,
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 2,
          barRods: [
            BarChartRodData(
              toY: 14,
              width: 20,
              borderRadius:
                  BorderRadius.circular(0),
              color: lightblueColor,
              // gradient: _barsGradient,
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 3,
          barRods: [
            BarChartRodData(
              toY: 15,
              width: 20,
              borderRadius:
                  BorderRadius.circular(0),
              color: lightblueColor,
              // gradient: _barsGradient,
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 4,
          barRods: [
            BarChartRodData(
              toY: 13,
              width: 20,
              borderRadius:
                  BorderRadius.circular(0),
              color: lightblueColor,
              // gradient: _barsGradient,
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 5,
          barRods: [
            BarChartRodData(
              toY: 10,
              width: 20,
              borderRadius:
                  BorderRadius.circular(0),
              color: lightblueColor,
              // gradient: _barsGradient,
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 6,
          barRods: [
            BarChartRodData(
              toY: 16,
              width: 20,
              borderRadius:
                  BorderRadius.circular(0),
              color: lightblueColor,
              // gradient: _barsGradient,
            )
          ],
          showingTooltipIndicators: [0],
        ),
      ];
}
