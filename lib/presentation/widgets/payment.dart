import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, bottom: 28),
            child: IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_back)),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 23, bottom: 10),
            child: Text(
              'Payment Method',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            width: 330,
            height: 51,
            margin: const EdgeInsets.only(left: 23, right: 14, bottom: 55),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color(0xffF2F2F2),
                borderRadius: BorderRadius.circular(7)),
            child: ListTile(
              leading: const Icon(Icons.payment),
              title: const Text(
                'Credit/Debit Card ',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff3E3E50)),
              ),
              trailing: IconButton(
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  size: 40,
                  color: Color(0xff3E3E50),
                ),
                onPressed: () {},
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 19, right: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Order',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff3E3E50)),
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.edit,
                      color: Color(0xff1648CE),
                    ),
                    Text(
                      'Edit',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff1648CE)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 19, right: 14, top: 9.5, bottom: 9.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Nurse',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff3E3E50)),
                ),
                Text(
                  'Quantity',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff3E3E50)),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: Color(0xffE0E0E0),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 19, right: 14, top: 9.5, bottom: 9.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Seun Olumide\n\$250',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff3E3E50)),
                ),
                Text(
                  '1',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff3E3E50)),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: Color(0xffE0E0E0),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 19, right: 14, top: 9.5, bottom: 27),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Total',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff3E3E50)),
                ),
                Text(
                  '\$250.00',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff3E3E50)),
                ),
              ],
            ),
          ),
          Container(
            width: 330,
            height: 51,
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 19, right: 15, bottom: 140),
            decoration:
                BoxDecoration(border: Border.all(style: BorderStyle.solid)),
            child: const Text(
              'Discount Code',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff3E3E50)),
            ),
          ),
          Container(
            width: 330,
            height: 51,
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 19, right: 15, bottom: 140),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Color(0xff1648CE)),
            child: const Text('PAY',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}
