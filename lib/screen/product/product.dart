import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: const Text('Dresses'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Flexible(
                  child: Text(
                    'Found 152 Results',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Flexible(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(10),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    label: const Text(
                      'Filter',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                    iconAlignment: IconAlignment.end,
                  ),
                ),
              ],
            ),
            const Gap(20),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                mainAxisExtent: MediaQuery.of(context).size.height * .3,
              ),
              itemCount: 10,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * .2,
                      width: MediaQuery.of(context).size.width * 1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/get_started.jpeg'),
                        ),
                      ),
                    ),
                    const Gap(10),
                    const Text(
                      'Linen Dress',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.attach_money_sharp,
                          size: 24,
                        ),
                        Text(
                          '52.00',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Gap(10),
                        Icon(
                          Icons.attach_money_sharp,
                          size: 16,
                          color: Colors.grey,
                        ),
                        Text(
                          '90.00',
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 1,
                          child: ListView.builder(
                            itemCount: 5,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => const Icon(
                              Icons.star,
                              color: Colors.green,
                              size: 16,
                            ),
                          ),
                        ),
                        const Text(
                          '(53)',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    )
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
