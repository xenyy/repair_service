import 'package:device_repair/common_widgets/c_widgets.dart';
import 'package:device_repair/models/data_models/issue.dart';
import 'package:device_repair/services/app_repository/local_repo/static_data.dart';
import 'package:device_repair/utils/device/device_utils.dart';
import 'package:device_repair/utils/locale/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

class FlowTwo extends StatelessWidget {
  final PageController controller;
  const FlowTwo({Key key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Issue> _issues = getIssue(context, issueIcon);

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getScaledWidth(context, 0.05),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PageTitle(
            text: AppLocalizations.of(context).translate('home_second_title'),
          ),
          Container(
            padding: EdgeInsets.only(
              left: DeviceUtils.getScaledWidth(context, 0.05),
              right: DeviceUtils.getScaledWidth(context, 0.05),
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onBackground.withOpacity(0.05),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Search'),
                IconButton(
                  onPressed: () {},
                  splashRadius: 24,
                  icon: Icon(
                    PhosphorIcons.magnifying_glass,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView(
              physics: BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
              ),
              children: [
                ..._issues.map(
                  (issue) => IssueCard(controller: controller, issue: issue),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class IssueCard extends StatelessWidget {
  const IssueCard({
    Key key,
    @required this.controller,
    @required this.issue,
  }) : super(key: key);

  final PageController controller;
  final Issue issue;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //save problem checked
        print(issue.name);
        controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.ease);
      },
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              issue.icon,
              size: 40,
              color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
            ),
            Text(
              issue.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
