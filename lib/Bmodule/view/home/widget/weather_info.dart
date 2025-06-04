import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
const String sunny = ''' <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="#5f6368"><path d="M437-738.54v-173.69h86v173.69h-86Zm255.92 105.77-59.15-59.15 121.15-124.54 60.54 61.15-122.54 122.54ZM738.54-437v-86h173.69v86H738.54ZM437-47.77v-173.31h86v173.31h-86ZM267.85-634.38 142.54-754.92l63.54-59.16 121.54 121.16-59.77 58.54Zm487.46 489.84L633.77-268.08l58.54-58.15 122.77 120.92-59.77 60.77ZM47.77-437v-86h173.69v86H47.77Zm156.92 293.46-58.77-62.54 120.16-120.15 30.69 29.46 31.08 31.08-123.16 122.15ZM480.09-260q-91.63 0-155.86-64.14Q260-388.28 260-479.91q0-91.63 64.14-155.86Q388.28-700 479.91-700q91.63 0 155.86 64.14Q700-571.72 700-480.09q0 91.63-64.14 155.86Q571.72-260 480.09-260Zm-.09-86q56 0 95-39t39-95q0-56-39-95t-95-39q-56 0-95 39t-39 95q0 56 39 95t95 39Zm0-134Z"/></svg> ''';
const String local_gas_station = ''' <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="#5f6368"><path d="M146-108v-645.69q0-41.03 28.64-69.67T244.31-852h221.38q41.03 0 69.67 28.64T564-753.69v276h26.46q39.73 0 68.02 28.29t28.29 68.01v169.54q0 16.76 11.7 28.46 11.69 11.7 28.45 11.7 16.76 0 28.46-11.7t11.7-28.46v-296.3q-9.62 5.38-20.31 7.46-10.69 2.07-21.69 2.07-42.83 0-73.27-30.93-30.43-30.93-30.43-74.76 0-32.69 17.43-59.88 17.42-27.19 48.27-38.12l-84.16-84.15L646.46-832l152.61 148.16q15.47 15.64 23.58 36.28 8.12 20.64 8.12 43.25v392.68q0 43.2-30.06 73.41Q770.66-108 727.14-108q-43.53 0-73.8-30.12-30.26-30.11-30.26-73.73v-189.84q0-5.39-3.47-8.85-3.46-3.46-8.84-3.46H564v306H146Zm86-456h246v-189.69q0-4.62-3.85-8.46-3.84-3.85-8.46-3.85H244.31q-4.62 0-8.46 3.85-3.85 3.84-3.85 8.46V-564Zm494.08 1.69q17.42 0 29.21-11.78 11.79-11.79 11.79-29.22 0-17.42-11.79-29.21t-29.21-11.79q-17.43 0-29.22 11.79-11.78 11.79-11.78 29.21 0 17.43 11.78 29.22 11.79 11.78 29.22 11.78ZM232-194h246v-284H232v284Zm246 0H232h246Z"/></svg> ''';

class WeatherInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              spacing: 10,
              children: [
                SvgPicture.string(sunny, height: 30, colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),)
                ,Text('28.1℃', style: TextStyle(fontSize: 20),)
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              spacing: 10,
              children: [
                SvgPicture.string(local_gas_station, height: 30, colorFilter: ColorFilter.mode(Colors.black,BlendMode.srcIn),),
                Text('424km', style: TextStyle(fontSize: 20),)
              ],
            ),
          )
        ],
      ),
    );
  }
}