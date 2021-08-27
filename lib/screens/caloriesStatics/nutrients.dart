import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/cards/dayCard.dart';

class NutrientsView extends StatefulWidget {
  @override
  _NutrientsViewState createState() => _NutrientsViewState();
}

class _NutrientsViewState extends State<NutrientsView> {
  TextStyle styleheading = TextStyle(
      fontFamily: 'helvetica',
      fontSize: ScreenUtil().setSp(12.0),
      fontWeight: FontWeight.bold);
  TextStyle style1 = TextStyle(
      fontFamily: 'helvetica',
      color: Color(0xFF242424),
      fontSize: ScreenUtil().setSp(14.0),
      fontWeight: FontWeight.normal);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: ScreenUtil().setHeight(23.5),
          ),
          DayCard(),
          SizedBox(
            height: ScreenUtil().setHeight(26.3),
          ),
          Container(
            width: double.infinity,
            margin:
                EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(12.0)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: DataTable(
                columnSpacing: ScreenUtil().setWidth(30.0),
                dataRowHeight: ScreenUtil().setHeight(31.5),
                dividerThickness: 0,
                showBottomBorder: false,
                columns: [
                  DataColumn(label: Text('', style: styleheading)),
                  DataColumn(
                      label: Center(child: Text('Total', style: styleheading)),columnColor: Color(0xFF17987D).withOpacity(0.1)),
                  DataColumn(
                      label: Center(child: Text('Goal', style: styleheading)),columnColor: Color(0xFF19688D).withOpacity(0.1)),
                  DataColumn(
                      label: Center(child: Text('Left', style: styleheading)),columnColor: Color(0xFF6CBD45).withOpacity(0.1)),
                ],
                rows: List.generate(
                    nutrients.length,
                    (i) => DataRow(
                            color: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              if (states.contains(MaterialState.selected))
                                return Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withOpacity(0.08);
                              return null;
                            }),
                            cells: [
                              DataCell(Text(nutrients[i].name, style: style1)),
                              DataCell(Center(
                                child: Text(nutrients[i].total.toString(),
                                    style: style1.copyWith(
                                        color: Color(0xFF17987D))),
                              ),cellColor: Color(0xFF17987D).withOpacity(0.1)),
                              DataCell(Center(
                                child: Text(nutrients[i].goal.toString(),
                                    style: style1.copyWith(
                                        color: Color(0xFF19688D))),
                              ),cellColor: Color(0xFF19688D).withOpacity(0.1)),
                              DataCell(Center(
                                child: Text(nutrients[i].left.toString(),
                                    style: style1.copyWith(
                                        color: Color(0xFF6CBD45))),
                              ),cellColor: Color(0xFF6CBD45).withOpacity(0.1)),
                            ])),
              ),
            ),
          )
        ],
      ),
    );
  }
}

List<Nutrients> nutrients = [
  Nutrients(name: 'Protein', total: 0, goal: 79, left: '196g'),
  Nutrients(name: 'Carbohydrates', total: 0, goal: 79, left: '196g'),
  Nutrients(name: 'Fiber', total: 0, goal: 79, left: '196g'),
  Nutrients(name: 'Sugars', total: 0, goal: 79, left: '196g'),
  Nutrients(name: 'Fat', total: 0, goal: 79, left: '196g'),
  Nutrients(name: 'Saturated', total: 0, goal: 79, left: '196g'),
  Nutrients(name: 'Polyunsaturated', total: 0, goal: 79, left: '196g'),
  Nutrients(name: 'Monounsaturated', total: 0, goal: 79, left: '196g'),
  Nutrients(name: 'Trans', total: 0, goal: 79, left: '196g'),
  Nutrients(name: 'Cholesterol', total: 0, goal: 79, left: '196g'),
  Nutrients(name: 'Sodium', total: 0, goal: 79, left: '196g'),
  Nutrients(name: 'Potassium', total: 0, goal: 79, left: '196g'),
  Nutrients(name: 'Vitamin A', total: 0, goal: 79, left: '196g'),
  Nutrients(name: 'Vitamin C', total: 0, goal: 79, left: '196g')
];

class Nutrients {
  final String name;
  final int total;
  final int goal;
  final String left;

  Nutrients({this.name, this.total, this.goal, this.left});
}
