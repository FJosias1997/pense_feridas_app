import 'package:flutter/material.dart';
import 'package:pense_feridas_app/database/models/cirurgico_model.dart';
import 'package:pense_feridas_app/extensions/context_extensions.dart';
import 'package:pense_feridas_app/utils/app_utils.dart';
import 'package:pense_feridas_app/widgets/bottom_sheet/default_bottom_sheet.dart';

class CondutaListtileWidget {
  Future<void> buildCondutaListTile({
    required BuildContext context,
    required CirurgicoModel? cirurgico,
  }) async {
    await DefaultBottomSheet.defaultBottomSheet(
      context,
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Terapia Proposta:",
            overflow: TextOverflow.ellipsis,
            style: context.theme.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 32),
          _buildConduta(context: context, cirurgicoModel: cirurgico),
        ],
      ),
    );
  }

  Widget _buildConduta({
    required BuildContext context,
    CirurgicoModel? cirurgicoModel,
  }) {
    late List<String> conduta;

    conduta = AppUtils().getConduta(cirurgicoModel!);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var item in conduta)
          Text(
            '${item}\n',
            style: context.theme.textTheme.titleMedium?.copyWith(),
          ),
      ],
    );
  }
}
