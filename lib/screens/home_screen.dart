import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controllers/resident_tax/resident_tax.dart';
import '../controllers/wareki/wareki.dart';
import '../extensions/extensions.dart';
import '../models/resident_tax_model.dart';
import '../models/wareki_model.dart';
import '../utility/utility.dart';
import 'components/resident_tax_input_alert.dart';
import 'parts/resident_tax_dialog.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  int startYear = 2020;
  int endYear = DateTime.now().year + 5;

  Map<int, String> warekiMap = <int, String>{};

  final Utility utility = Utility();

  Map<int, String> payLimitMap = <int, String>{1: 'year-06-30', 2: 'year-08-31', 3: 'year-10-31', 4: 'year-01-31'};

  ///
  @override
  void initState() {
    super.initState();

    ref.read(residentTaxProvider.notifier).getAllResidentTax();
  }

  ///
  @override
  Widget build(BuildContext context) {
    makeWarekiMap();

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20),
            Expanded(child: displayYearResidentTax()),
          ],
        ),
      )),
    );
  }

  ///
  Widget displayYearResidentTax() {
    final List<Widget> list = <Widget>[];

    final Map<String, ResidentTaxModel> residentTaxMap =
        ref.watch(residentTaxProvider.select((ResidentTaxState value) => value.residentTaxMap));

    for (int i = startYear; i <= endYear; i++) {
      list.add(Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(i.toString()),
              Text(
                warekiMap[i] ?? '',
                style: const TextStyle(color: Colors.yellowAccent),
              ),
            ],
          ),
          Row(
            // ignore: always_specify_types
            children: List.generate(
              4,
              (int index) {
                final int changeYear = (index + 1 == 4) ? (i + 1) : i;

                final String payLimit = (payLimitMap[index + 1] != null)
                    ? payLimitMap[index + 1]!.replaceAll('year', changeYear.toString())
                    : '';

                final bool tapOk = DateTime.parse('$payLimit 00:00:00').isBefore(DateTime.now());

                return Expanded(
                  child: GestureDetector(
                    onTap: tapOk
                        ? () {
                            ResidentTaxDialog(
                              context: context,
                              widget: ResidentTaxInputAlert(
                                payLimit: payLimit,
                                wareki: warekiMap[i] ?? '',
                                index: index + 1,
                                data: residentTaxMap['${warekiMap[i]}-${index + 1}'],
                              ),
                            );
                          }
                        : null,
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white.withOpacity(0.4)),
                        color: tapOk ? Colors.transparent : Colors.white.withOpacity(0.1),
                      ),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(minHeight: context.screenSize.height / 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text('limit:'),
                            Text(payLimit),
                            if (warekiMap[i] != null &&
                                residentTaxMap['${warekiMap[i]}-${index + 1}'] != null) ...<Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(),
                                  Text(residentTaxMap['${warekiMap[i]}-${index + 1}']!.price.toString().toCurrency()),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(),
                                  if (residentTaxMap['${warekiMap[i]}-${index + 1}']!.payDate != null)
                                    Text(
                                      residentTaxMap['${warekiMap[i]}-${index + 1}']!.payDate.toString(),
                                      style: const TextStyle(color: Colors.greenAccent),
                                    )
                                  else
                                    const Text('-'),
                                ],
                              ),
                              if (residentTaxMap['${warekiMap[i]}-${index + 1}']!.interestPayDate != null &&
                                  residentTaxMap['${warekiMap[i]}-${index + 1}']!.interestPrice != null) ...<Widget>[
                                Text(residentTaxMap['${warekiMap[i]}-${index + 1}']!.interestPayDate.toString()),
                                Text(residentTaxMap['${warekiMap[i]}-${index + 1}']!.interestPrice.toString()),
                              ],
                            ],
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
        ],
      ));
    }

    return SingleChildScrollView(child: Column(children: list));
  }

  ///
  Future<void> makeWarekiMap() async {
    for (int i = startYear; i <= endYear; i++) {
      final AsyncValue<WarekiState> warekiState = ref.watch(warekiProvider(year: i));

      if (warekiState.value != null) {
        final WarekiModel data = warekiState.value!.warekiList.first;

        warekiMap[i] = utility.generateWareki(wareki: data.wareki);
      }
    }
  }
}
