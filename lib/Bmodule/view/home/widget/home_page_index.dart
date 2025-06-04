import 'package:dirve_mate/Amodule/view/login/login.dart';
import 'package:dirve_mate/Bmodule/view/home/widget/control_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
const String power_setting =
''' <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="#5f6368"><path d="M480.07-68q-85.48 0-160.69-32.45-75.21-32.44-130.84-88.06-55.63-55.62-88.09-130.81Q68-394.51 68-480q0-85.99 31.77-160.53 31.77-74.55 88.46-131.24l61.15 61.15q-44.94 44.55-70.16 103.16Q154-548.86 154-480.33 154-343 248.74-248.5 343.49-154 480-154t231.26-94.74Q806-343.49 806-480q0-69-25.22-127.53-25.22-58.54-70.16-103.09l61.15-61.15q56.69 56.69 88.46 131.24Q892-565.99 892-479.83q0 85.12-31.92 160.23-31.92 75.11-87.7 130.84-55.78 55.73-131.18 88.25Q565.8-68 480.07-68ZM437-427v-465h86v465h-86Z"/></svg> ''';
const String car_door = ''' <?xml version="1.0" encoding="iso-8859-1"?>
<!-- Uploaded to: SVG Repo, www.svgrepo.com, Generator: SVG Repo Mixer Tools -->
<svg fill="#000000" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" 
	 viewBox="0 0 512 512" xml:space="preserve">
<g>
	<g>
		<path d="M506.583,9.847C501.727,3.635,494.286,0,486.402,0h-256c-6.793,0-13.303,2.697-18.099,7.501l-204.8,204.8
			c-4.804,4.796-7.501,11.307-7.501,18.099v256c0,14.14,11.46,25.6,25.6,25.6h409.6c14.14,0,25.6-11.46,25.6-25.6V233.549
			l50.432-201.745C513.145,24.158,511.43,16.06,506.583,9.847z M435.202,486.4h-409.6V256h409.6V486.4z M435.202,230.4h-409.6
			l204.8-204.8h256L435.202,230.4z"/>
	</g>
</g>
<g>
	<g>
		<rect x="332.802" y="281.6" width="76.8" height="25.6"/>
	</g>
</g>
</svg> ''';
const String car = ''' <?xml version="1.0" encoding="iso-8859-1"?>
<!-- Generator: Adobe Illustrator 19.0.0, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	 viewBox="0 0 408.42 408.42" style="enable-background:new 0 0 408.42 408.42;" xml:space="preserve">
<g>
	<g>
		<g>
			<path d="M384.786,168.062l-16.923-11.712l-17.059-74.37c-5.062-22.068-24.41-37.48-47.051-37.48H104.667
				c-22.641,0-41.989,15.412-47.051,37.48l-17.059,74.37l-16.923,11.712C8.835,178.304,0,195.164,0,213.161v76.76
				c0,12.468,9.725,22.701,21.987,23.529v33.276c0,9.481,7.713,17.194,17.194,17.194h37.147c9.481,0,17.194-7.713,17.194-17.194
				V313.51h53.772c1.304,14.904,13.845,26.637,29.082,26.637h70.59c15.237,0,27.779-11.732,29.083-26.637h38.849v33.216
				c0,9.481,7.713,17.194,17.194,17.194h37.147c9.481,0,17.194-7.713,17.194-17.194v-33.276
				c12.262-0.827,21.987-11.061,21.987-23.529v-76.76C408.421,195.164,399.586,178.304,384.786,168.062z M15,213.161
				c0-13.076,6.419-25.325,17.171-32.766l19.314-13.367c1.539-1.065,2.624-2.667,3.042-4.49l17.709-77.205
				C75.726,70.123,89.062,59.5,104.667,59.5h199.086c15.605,0,28.941,10.623,32.431,25.834l17.709,77.205
				c0.418,1.824,1.503,3.426,3.042,4.49l19.314,13.367c10.752,7.441,17.171,19.69,17.171,32.766v51.989H15V213.161z M78.523,346.727
				L78.523,346.727c-0.001,1.21-0.985,2.194-2.195,2.194H39.181c-1.21,0-2.194-0.984-2.194-2.194V313.51h41.536V346.727z
				 M246.967,325.148h-70.59c-6.954,0-12.745-5.028-13.957-11.637h98.506C259.713,320.12,253.921,325.148,246.967,325.148z
				 M371.435,346.727c0,1.209-0.985,2.194-2.195,2.194h-37.147c-1.21,0-2.194-0.984-2.194-2.194v-33.216h41.536V346.727z
				 M393.421,289.922c0,4.736-3.853,8.589-8.589,8.589H23.589c-4.736,0-8.589-3.853-8.589-8.589v-9.771h378.421V289.922z"/>
			<path d="M69.79,168.357h268.84c2.284,0,4.443-1.041,5.866-2.827c1.423-1.786,1.955-4.124,1.444-6.35L329.359,86.9
				c-2.758-12.012-13.289-20.402-25.61-20.402h-199.08c-12.321,0-22.852,8.39-25.61,20.403l-16.58,72.28
				c-0.511,2.226,0.021,4.563,1.444,6.35C65.346,167.318,67.506,168.357,69.79,168.357z M93.68,90.256
				c1.184-5.156,5.703-8.758,10.99-8.758h199.08c5.287,0,9.806,3.602,10.99,8.757l14.475,63.103H79.205L93.68,90.256z"/>
			<path d="M100.527,211.253H38.899c-4.142,0-7.5,3.358-7.5,7.5c0,21.126,17.188,38.314,38.314,38.314
				c21.126,0,38.314-17.188,38.314-38.314C108.027,214.612,104.669,211.253,100.527,211.253z M69.713,242.068
				c-10.233,0-18.947-6.626-22.077-15.814H91.79C88.661,235.442,79.946,242.068,69.713,242.068z"/>
			<path d="M369.522,211.253h-61.628c-4.142,0-7.5,3.357-7.5,7.5c0,21.126,17.188,38.314,38.314,38.314
				c21.126,0,38.314-17.188,38.314-38.314C377.022,214.612,373.664,211.253,369.522,211.253z M338.708,242.068
				c-10.233,0-18.947-6.626-22.077-15.814h44.154C357.656,235.442,348.941,242.068,338.708,242.068z"/>
			<path d="M281.024,239.419C281.434,239.69,280.624,239.149,281.024,239.419L281.024,239.419z"/>
			<path d="M281.024,239.419c-5.648-3.809-13.189,1.705-11.386,8.225c0.817,2.955,3.398,5.141,6.448,5.462
				c3.319,0.35,6.548-1.625,7.76-4.728C285.108,245.148,283.927,241.333,281.024,239.419z"/>
			<path d="M256.95,238.151H131.559c-4.142,0-7.5,3.358-7.5,7.5c0,4.142,3.358,7.5,7.5,7.5H256.95c4.142,0,7.5-3.358,7.5-7.5
				C264.45,241.51,261.092,238.151,256.95,238.151z"/>
			<path d="M136.864,224.06c4.131-4.253,1.9-11.628-3.993-12.687c-5.686-1.023-10.502,4.881-8.237,10.247
				C126.657,226.518,133.107,227.708,136.864,224.06z"/>
			<path d="M124.634,221.62C124.444,221.169,124.824,222.078,124.634,221.62L124.634,221.62z"/>
			<path d="M276.863,211.253H151.472c-4.142,0-7.5,3.358-7.5,7.5c0,4.142,3.358,7.5,7.5,7.5h125.391c4.142,0,7.5-3.358,7.5-7.5
				C284.363,214.612,281.005,211.253,276.863,211.253z"/>
		</g>
	</g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
<g>
</g>
</svg>
 ''';
const String warining = ''' <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="#5f6368"><path d="M22.62-98 480-886 937.38-98H22.62ZM172-184h616L480-714 172-184Zm309-36.69q18.73 0 32.02-13.29 13.29-13.29 13.29-32.02 0-18.73-13.29-32.02-13.29-13.29-32.02-13.29-18.73 0-32.02 13.29-13.29 13.29-13.29 32.02 0 18.73 13.29 32.02 13.29 13.29 32.02 13.29Zm-43-127.62h86v-204h-86v204ZM480-449Z"/></svg> ''';

class HomePageIndex extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _IndexState();
}
class _IndexState extends State<HomePageIndex> {
  late bool _isSelected;
  @override
  void initState() {
    super.initState();
    _isSelected = false;
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        // margin: EdgeInsets.only(top: 20),
        // boxShadow: [
        //   BoxShadow(
        //     offset: Offset(0, -20),
        //     blurRadius:70,
        //     spreadRadius: 20,
        //     color: Colors.grey,
        //
        //   )
        // ]
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  spacing: 5,
                  children: [
                    SizedBox(
                      width: 90,
                      height: 90,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: _isSelected ? Colors.white : Colors.black,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color:  Colors.grey, width: 2),
                        ),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              _isSelected = !_isSelected;
                            });
                          },
                          icon: SvgPicture.string(
                            power_setting,
                            height: 60,
                            colorFilter: ColorFilter.mode(
                              _isSelected ? Colors.black : Colors.green.shade500,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '시동',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  spacing: 5,
                  children: [
                    SizedBox(
                      width: 90,
                      height: 90,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey, width: 2),
                        ),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              _isSelected = !_isSelected;
                            });
                          },
                          icon: SvgPicture.string(
                            lockIcon,
                            height: 60,
                            colorFilter: ColorFilter.mode(
                              Colors.black,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '도어',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  spacing: 5,
                  children: [
                    SizedBox(
                      width: 90,
                      height: 90,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey, width: 2),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.string(
                            car_door,
                            height: 60,
                            colorFilter: ColorFilter.mode(
                              Colors.black,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '창문 ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  spacing: 5,
                  children: [
                    SizedBox(
                      width: 90,
                      height: 90,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey, width: 2),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.string(
                            warining,
                            height: 60,
                            colorFilter: ColorFilter.mode(
                              Colors.black,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '비상등',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text('홍길동님 안녕하세요.', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            Center(
              child: SizedBox(
                  width: 400,
                  height: 300,
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ControlWidget(icon: car, text: 'Vehicle control'),
                          ControlWidget(icon: car, text: 'Vehicle control'),
                          ControlWidget(icon: car, text: 'Vehicle control'),
                          ControlWidget(icon: car, text: 'Vehicle control'),
                        ],
                      )
                  )
              ),
            )

          ],
        ),
      ),
    );
  }
}