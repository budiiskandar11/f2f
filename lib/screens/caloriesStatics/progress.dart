import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ProgressView extends StatefulWidget {
  @override
  _ProgressViewState createState() => _ProgressViewState();
}

class _ProgressViewState extends State<ProgressView> {

  TextStyle styleheading = TextStyle(
      fontFamily: 'helvetica',
      fontSize: ScreenUtil().setSp(12.0),
      fontWeight: FontWeight.w400,color: Colors.black.withOpacity(0.47));
  TextStyle style1 = TextStyle(
      fontFamily: 'helvetica',
      color: Color(0xFF242424),
      fontSize: ScreenUtil().setSp(12.0),
      fontWeight: FontWeight.w600);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: double.infinity,
          width:MediaQuery.of(context).size.width*0.6,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 3.0,
                offset: Offset(2,0)
              )
            ]
          ),
          padding: EdgeInsets.only(
            right: ScreenUtil().setWidth(6.3),
            left: ScreenUtil().setWidth(8.3)
          ),
          child: DataTable(
            columnSpacing: ScreenUtil().setWidth(8.0),
            dataRowHeight: ScreenUtil().setHeight(33.8),
            headingRowHeight: ScreenUtil().setHeight(60.5),
            dividerThickness: 0,horizontalMargin: 0,
            showBottomBorder: false,
            columns: [
              DataColumn(label: Text('', style: styleheading)),
              DataColumn(label: Padding(
                padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(6.3)),
                child: Align(alignment: Alignment.bottomCenter,child: Text('', style: styleheading)),
              )),
              DataColumn(label: Padding(
                padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(6.3)),
                child: Align(alignment: Alignment.bottomCenter,child: Text('Goal', style: styleheading)),
              )),
              DataColumn(label: Padding(
                padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(6.3)),
                child: Align(alignment: Alignment.bottomCenter,child: Text('Initial', style: styleheading)),
              )),
            ],
            rows: List.generate(
              progress.length,(i)=>DataRow(cells: [
                DataCell(Text(progress[i].name, style: style1)),
                DataCell(Center(
                  child: Text(progress[i].total,
                      style: style1.copyWith(color:progress[i].total.contains('-')?Color(0XFFA9305F) 
                      :Color(0xFF17987D),fontWeight: FontWeight.normal)),
                )),
                DataCell(Center(
                  child: Text(progress[i].goal.toString(),
                      style: style1.copyWith(color: Color(0xFF17987D),fontWeight: FontWeight.normal)),
                )),
                DataCell(Center(
                  child: Text(progress[i].initial.toString(),
                      style: style1.copyWith(color: Color(0xFF19688D),fontWeight: FontWeight.normal)),
                )),
              ])
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width*0.4,
                    child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,physics: ClampingScrollPhysics(),
            child: Container(
              height: double.infinity,
              width: ScreenUtil().setWidth(447.0),
              color: Color(0xFFEBF6E6),
              child: DataTable(
                columnSpacing: ScreenUtil().setWidth(8.0),
                dataRowHeight: ScreenUtil().setHeight(33.8),
                headingRowHeight: ScreenUtil().setHeight(60.5),
                dividerThickness: 0,
                horizontalMargin: 11,
                showBottomBorder: false,
                columns: [
                  DataColumn(label: Padding(
                    padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(6.3)),
                    child: Align(alignment: Alignment.bottomCenter,child: Text('Week1', style: styleheading)),
                  )),
                  DataColumn(label: Padding(
                    padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(6.3)),
                    child: Align(alignment: Alignment.bottomCenter,child: Text('Week2', style: styleheading)),
                  )),
                  DataColumn(label: Padding(
                    padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(6.3)),
                    child: Align(alignment: Alignment.bottomCenter,child: Text('Week3', style: styleheading)),
                  )),
                  DataColumn(label: Padding(
                    padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(6.3)),
                    child: Align(alignment: Alignment.bottomCenter,child: Text('Week4', style: styleheading)),
                  )),
                  DataColumn(label: Padding(
                    padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(6.3)),
                    child: Align(alignment: Alignment.bottomCenter,child: Text('Week5', style: styleheading)),
                  )),
                  DataColumn(label: Padding(
                    padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(6.3)),
                    child: Align(alignment: Alignment.bottomCenter,child: Text('Week6', style: styleheading)),
                  )),
                  DataColumn(label: Padding(
                    padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(6.3)),
                    child: Align(alignment: Alignment.bottomCenter,child: Text('Week7', style: styleheading)),
                  )),
                  DataColumn(label: Padding(
                    padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(6.3)),
                    child: Align(alignment: Alignment.bottomCenter,child: Text('Week8', style: styleheading)),
                  ))
                ],
                rows: List.generate(
                  week.length , (i) => DataRow(cells: [
                    DataCell(Center(
                      child: Text(week[i].value,
                          style: style1.copyWith(color: Color(0xFF6CBD45),fontWeight: FontWeight.w400)),
                    ),cellColor: Color(0xFFEBF6E6)),
                    DataCell(Center(
                      child: Text(week[i].value,
                          style: style1.copyWith(color: Color(0xFF6CBD45),fontWeight: FontWeight.w400)),
                    ),cellColor: Color(0xFFEBF6E6)),
                    DataCell(Center(
                      child: Text(week[i].value,
                          style: style1.copyWith(color: Color(0xFF6CBD45),fontWeight: FontWeight.w400)),
                    ),cellColor: Color(0xFFEBF6E6)),
                    DataCell(Center(
                      child: Text(week[i].value,
                          style: style1.copyWith(color: Color(0xFF6CBD45),fontWeight: FontWeight.w400)),
                    ),cellColor: Color(0xFFEBF6E6)),
                    DataCell(Center(
                      child: Text(week[i].value,
                          style: style1.copyWith(color: Color(0xFF6CBD45),fontWeight: FontWeight.w400)),
                    ),cellColor: Color(0xFFEBF6E6)),
                    DataCell(Center(
                      child: Text(week[i].value,
                          style: style1.copyWith(color: Color(0xFF6CBD45),fontWeight: FontWeight.w400)),
                    ),cellColor: Color(0xFFEBF6E6)),
                    DataCell(Center(
                      child: Text(week[i].value,
                          style: style1.copyWith(color: Color(0xFF6CBD45),fontWeight: FontWeight.w400)),
                    ),cellColor: Color(0xFFEBF6E6)),
                    DataCell(Center(
                      child: Text(week[i].value,
                          style: style1.copyWith(color: Color(0xFF6CBD45),fontWeight: FontWeight.w400)),
                    ),cellColor: Color(0xFFEBF6E6))
                  ])
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}


List<Progress> progress=[
  Progress(
    name: 'Weight',
    total: '+3',
    goal: 0,
    initial: 79
  ),
  Progress(
    name: 'BMI',
    total: '+3',
    goal: 0,
    initial: 79
  ),
  Progress(
    name: 'Body fat',
    total: '+3',
    goal: 0,
    initial: 79
  ),
  Progress(
    name: 'Cholesterol',
    total: '-3',
    goal: 0,
    initial: 79
  ),
  Progress(
    name: 'Skeletal muscle',
    total: '-3',
    goal: 0,
    initial: 79
  ),
  Progress(
    name: 'Metabolic age',
    total: '-3',
    goal: 0,
    initial: 79
  ),
  Progress(
    name: 'Visceral fat',
    total: '-3',
    goal: 0,
    initial: 79
  ),
  Progress(
    name: 'Visceral fat',
    total: '-3',
    goal: 0,
    initial: 79
  ),
  Progress(
    name: 'Visceral fat',
    total: '-3',
    goal: 0,
    initial: 79
  ),
  Progress(
    name: 'Visceral fat',
    total: '+3',
    goal: 0,
    initial: 79
  ),
  Progress(
    name: 'Visceral fat',
    total: '+3',
    goal: 0,
    initial: 79
  ),
  Progress(
    name: 'Visceral fat',
    total: '+3',
    goal: 0,
    initial: 79
  ),
  Progress(
    name: 'Visceral fat',
    total: '-3',
    goal: 0,
    initial: 79
  ),
  Progress(
    name: 'Visceral fat',
    total: '-3',
    goal: 0,
    initial: 79
  ),
  Progress(
    name: 'Visceral fat',
    total: '+3',
    goal: 0,
    initial: 79
  ),
  Progress(
    name: 'Visceral fat',
    total: '-3',
    goal: 0,
    initial: 79
  ),
  Progress(
    name: 'Visceral fat',
    total: '+3',
    goal: 0,
    initial: 79
  ),
];

class Progress{
  final String name;
  final String total;
  final int goal;
  final int initial;

  Progress({
    this.name,this.total,this.goal,this.initial
  });
}

List<Week> week = [
  Week(value: '196g'),
  Week(value: '196g'),
  Week(value: '196g'),
  Week(value: '196g'),
  Week(value: '196g'),
  Week(value: '196g'),
  Week(value: '196g'),
  Week(value: '196g'),
  Week(value: '196g'),
  Week(value: '196g'),
  Week(value: '196g'),
  Week(value: '196g'),
  Week(value: '196g'),
  Week(value: '196g'),
  Week(value: '196g'),
  Week(value: '196g'),
  Week(value: '196g')
];

class Week{
  final String value;

  Week({
    this.value
  });
}