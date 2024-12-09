import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../controllers/resident_tax/resident_tax.dart';
import '../../controllers/resident_tax_input/resident_tax_input.dart';
import '../../extensions/extensions.dart';
import '../../models/resident_tax_model.dart';
import '../parts/error_dialog.dart';

class ResidentTaxInputAlert extends ConsumerStatefulWidget {
  const ResidentTaxInputAlert({
    super.key,
    required this.payLimit,
    required this.wareki,
    required this.index,
    this.data,
  });

  final String payLimit;
  final String wareki;
  final int index;
  final ResidentTaxModel? data;

  ///
  @override
  ConsumerState<ResidentTaxInputAlert> createState() => _ResidentTaxInputAlertState();
}

class _ResidentTaxInputAlertState extends ConsumerState<ResidentTaxInputAlert> {
  final TextEditingController _priceEditingController = TextEditingController();
  final TextEditingController _interestPriceEditingController = TextEditingController();

  ///
  @override
  void initState() {
    super.initState();

    if (widget.data != null) {
      if (widget.data!.price > 0) {
        _priceEditingController.text = widget.data!.price.toString();
      }

      if (widget.data!.interestPrice != null) {
        _interestPriceEditingController.text = widget.data!.interestPrice.toString();
      }

      if (widget.data!.payDate != null) {
        // ignore: always_specify_types
        Future(() => ref.read(residentTaxInputProvider.notifier).setPayDate(date: widget.data!.payDate.toString()));
      }

      if (widget.data!.interestPayDate != null) {
        // ignore: always_specify_types
        Future(() => ref
            .read(residentTaxInputProvider.notifier)
            .setInterestPayDate(date: widget.data!.interestPayDate.toString()));
      }
    }
  }

  ///
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      content: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 20),
            Container(width: context.screenSize.width),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[Text('${widget.wareki}-${widget.index}'), Container()],
            ),
            Divider(color: Colors.white.withOpacity(0.4), thickness: 5),
            _displayInputParts(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(),
                if (widget.data?.price == null) ...<Widget>[
                  TextButton(
                    onPressed: () => _inputResidentTaxRecord(),
                    child: const Text('input'),
                  ),
                ],
                if (widget.data?.price != null) ...<Widget>[
                  TextButton(
                    onPressed: () => _updateResidentTaxRecord(),
                    child: const Text('update'),
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }

  ///
  Widget _displayInputParts() {
    final String payDate = ref.watch(residentTaxInputProvider.select((ResidentTaxInputState value) => value.payDate));

    final String interestPayDate =
        ref.watch(residentTaxInputProvider.select((ResidentTaxInputState value) => value.interestPayDate));

    return DecoratedBox(
      decoration: BoxDecoration(
          boxShadow: <BoxShadow>[BoxShadow(blurRadius: 24, spreadRadius: 16, color: Colors.black.withOpacity(0.2))]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
          child: Container(
            width: context.screenSize.width,
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white.withOpacity(0.2), width: 1.5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text('金額'),
                const SizedBox(height: 10),
                TextField(
                  controller: _priceEditingController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                    hintText: '金額(6桁以内)',
                    filled: true,
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white54)),
                  ),
                  style: const TextStyle(fontSize: 13, color: Colors.white),
                  onTapOutside: (PointerDownEvent event) => FocusManager.instance.primaryFocus?.unfocus(),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(),
                    Row(children: <Widget>[const Text('limit date: '), Text(widget.payLimit)]),
                  ],
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                      onPressed: () => _showDP(type: 'payDate'),
                      icon: const Icon(Icons.calendar_month),
                    ),
                    const SizedBox(width: 10),
                    Text(payDate),
                  ],
                ),
                const Divider(color: Colors.white),
                const Text('遅延利息'),
                const SizedBox(height: 10),
                TextField(
                  controller: _interestPriceEditingController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                    hintText: '遅延利息(6桁以内)',
                    filled: true,
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white54)),
                  ),
                  style: const TextStyle(fontSize: 13, color: Colors.white),
                  onTapOutside: (PointerDownEvent event) => FocusManager.instance.primaryFocus?.unfocus(),
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                      onPressed: () => _showDP(type: 'interestPayDate'),
                      icon: const Icon(Icons.calendar_month),
                    ),
                    const SizedBox(width: 10),
                    Text(interestPayDate),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ///
  Future<void> _showDP({required String type}) async {
    final DateTime? selectedDate = await showDatePicker(
      barrierColor: Colors.transparent,
      locale: const Locale('ja'),
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime.now().add(const Duration(days: 360)),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Colors.black.withOpacity(0.1),
            canvasColor: Colors.black.withOpacity(0.1),
            cardColor: Colors.black.withOpacity(0.1),
            dividerColor: Colors.indigo,
            primaryColor: Colors.black.withOpacity(0.1),
            secondaryHeaderColor: Colors.black.withOpacity(0.1),
            dialogBackgroundColor: Colors.black.withOpacity(0.1),
            primaryColorDark: Colors.black.withOpacity(0.1),
            highlightColor: Colors.black.withOpacity(0.1),
          ),
          child: child!,
        );
      },
    );

    if (selectedDate != null) {
      switch (type) {
        case 'payDate':
          ref.read(residentTaxInputProvider.notifier).setPayDate(date: selectedDate.yyyymmdd);

        case 'interestPayDate':
          ref.read(residentTaxInputProvider.notifier).setInterestPayDate(date: selectedDate.yyyymmdd);
      }
    }
  }

  ///
  Future<void> _inputResidentTaxRecord() async {
    bool errFlg = false;

    if (_priceEditingController.text == '' || _priceEditingController.text.trim().length > 6) {
      errFlg = true;
    }

    if (errFlg) {
      // ignore: always_specify_types
      Future.delayed(
        Duration.zero,
        () => error_dialog(
            // ignore: use_build_context_synchronously
            context: context,
            title: '登録できません。',
            content: '値を正しく入力してください。'),
      );

      return;
    }

    final Map<String, dynamic> param = <String, dynamic>{
      'pay_limit': widget.payLimit,
      'period': '${widget.wareki}-${widget.index}',
      'price': _priceEditingController.text.trim(),
    };

    // ignore: always_specify_types
    await ref.read(residentTaxInputProvider.notifier).inputResidentTax(param: param).then((value) async {
      await ref.read(residentTaxProvider.notifier).getAllResidentTax();

      if (mounted) {
        Navigator.pop(context);
      }
    });
  }

  ///
  Future<void> _updateResidentTaxRecord() async {
    bool errFlg = false;

    final String payDate = ref.watch(residentTaxInputProvider.select((ResidentTaxInputState value) => value.payDate));

    if (payDate == '') {
      errFlg = true;
    }

    final Map<String, dynamic> param = <String, dynamic>{'pay_date': payDate};

    if (_priceEditingController.text == '' || _priceEditingController.text.trim().length > 6) {
      errFlg = true;
    }

    param['price'] = _priceEditingController.text.trim();

    if (_interestPriceEditingController.text.trim() != '') {
      if (_interestPriceEditingController.text.trim().length > 6) {
        errFlg = true;
      }

      final String interestPayDate =
          ref.watch(residentTaxInputProvider.select((ResidentTaxInputState value) => value.interestPayDate));

      if (interestPayDate == '') {
        errFlg = true;
      }

      param['interest_price'] = _interestPriceEditingController.text.trim();
      param['interest_pay_date'] = interestPayDate;
    }

    if (errFlg) {
      // ignore: always_specify_types
      Future.delayed(
        Duration.zero,
        () => error_dialog(
            // ignore: use_build_context_synchronously
            context: context,
            title: '登録できません。',
            content: '値を正しく入力してください。'),
      );

      return;
    }

    await ref
        .read(residentTaxInputProvider.notifier)
        .updateResidentTax(param: param, period: '${widget.wareki}-${widget.index}')
        // ignore: always_specify_types
        .then((value) async {
      await ref.read(residentTaxProvider.notifier).getAllResidentTax();

      if (mounted) {
        Navigator.pop(context);
      }
    });
  }
}
