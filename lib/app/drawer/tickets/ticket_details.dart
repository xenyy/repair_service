import 'package:device_repair/common_widgets/app_bar.dart';
import 'package:device_repair/common_widgets/status.dart';
import 'package:device_repair/utils/device/device_utils.dart';
import 'package:device_repair/utils/locale/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

class TicketDetailsScreen extends StatelessWidget {
  static const String routeName = "/ticket-details";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Ticket Title',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: DeviceUtils.getScaledHeight(context, 0.02),
            horizontal: DeviceUtils.getScaledWidth(context, 0.03),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Status(),
              buildDescription(context),
              buildAttachments(context),
              buildContact(context),
              buildRepairerNotes(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDescription(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DetailsTitles(
          text: AppLocalizations.of(context)!.translate("t_details_desc")!,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus id metus posuere, '
          'eleifend nibh semper, sagittis mauris. Duis tincidunt consectetur.'
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus id metus posuere, '
          'eleifend nibh semper, sagittis mauris. Duis tincidunt consectetur.'
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus id metus posuere, '
          'eleifend nibh semper, sagittis mauris. Duis tincidunt consectetur.',
          style: TextStyle(
            fontSize: 14,
            color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
          ),
        ),
      ],
    );
  }

  Widget buildAttachments(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DetailsTitles(
          text: AppLocalizations.of(context)!.translate("t_details_attach")!,
        ),
        SizedBox(
          height: DeviceUtils.getScaledHeight(context, 0.15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  AttachmentCard(
                    documentName: 'DocumentName',
                  ),
                  AttachmentCard(
                    documentName: 'ImageName',
                    icon: PhosphorIcons.image,
                  ),
                ],
              ),
              AttachmentCard(
                documentName: 'Add',
                icon: PhosphorIcons.plus,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildContact(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DetailsTitles(
          text: AppLocalizations.of(context)!.translate("t_details_contact")!,
        ),
        Text(
          'Fake Street 1234, FakeCity ',
          style: TextStyle(
            fontSize: 14,
            color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: DeviceUtils.getScaledHeight(context, 0.01)),
        //Fake map
        Container(
          color: Theme.of(context).colorScheme.onBackground,
          height: 200,
        ),
        SizedBox(height: DeviceUtils.getScaledHeight(context, 0.01)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'fake@email.com',
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'XX-XXX-XX-XX',
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildRepairerNotes(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: DetailsTitles(
            text: AppLocalizations.of(context)!.translate("t_details_notes")!,
          ),
        ),
        ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                vertical: DeviceUtils.getScaledHeight(context, 0.02),
                horizontal: DeviceUtils.getScaledWidth(context, 0.03),
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onBackground.withOpacity(0.08),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Employer Name',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onBackground.withOpacity(0.8),
                    ),
                  ),
                  SizedBox(height: DeviceUtils.getScaledHeight(context, 0.01)),
                  Text(
                    '08-12-2020',
                    style: TextStyle(
                      fontSize: 12,
                      color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
                    ),
                  ),
                  SizedBox(height: DeviceUtils.getScaledHeight(context, 0.01)),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus id metus posuere, '
                    'eleifend nibh semper, sagittis mauris. Duis tincidunt consectetur.',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class AttachmentCard extends StatelessWidget {
  const AttachmentCard({
    Key? key,
    required this.documentName,
    this.icon = PhosphorIcons.file,
  }) : super(key: key);

  final String documentName;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: DeviceUtils.getScaledWidth(context, 0.25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: DeviceUtils.getScaledHeight(context, 0.1),
            width: DeviceUtils.getScaledWidth(context, 0.2),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onBackground.withOpacity(0.08),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              icon,
              size: 30,
            ),
          ),
          SizedBox(height: DeviceUtils.getScaledHeight(context, 0.01)),
          Text(
            documentName,
            style: TextStyle(fontSize: 12),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}

class DetailsTitles extends StatelessWidget {
  const DetailsTitles({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: DeviceUtils.getScaledHeight(context, 0.02),
        top: DeviceUtils.getScaledHeight(context, 0.01),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}
