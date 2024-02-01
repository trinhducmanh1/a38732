import 'package:flutter/material.dart';

import '../../../models/Cart.dart';

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double TongHoaDon_A38732 = TinhTong_A38732(demoCarts_A38732);

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Text.rich(
                    TextSpan(
                      text: "Total:\n",
                      children: [
                        TextSpan(
                          text: "\$${TongHoaDon_A38732.toStringAsFixed(2)}",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your checkout logic here
                    },
                    child: const Text("Thanh toán"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  double TinhTong_A38732(List<Cart> cartList) {
    double totalAmount = 0;
    for (Cart cart in cartList) {
      totalAmount += cart.numOfItem * cart.product.price;
    }
    return totalAmount;
  }
}
