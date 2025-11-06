import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:inilabs_task/core/utils/utility/helper_func.dart';
import 'package:inilabs_task/models/repos_response/repos_response.dart';
import 'package:inilabs_task/modules/views/repo_details_view/view/widgets/build_Info_card.dart';
import 'package:inilabs_task/modules/views/repo_details_view/view/widgets/build_state_item.dart';

class RepoDetailsView extends StatelessWidget {
  const RepoDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    // Arguments Data \\
    final repo = Get.arguments as ReposResponse;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          repo.name ?? 'Repository',
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
        elevation: 0,
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Repository Name
            Text(
              repo.name ?? '',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),

            // Full Name
            if (repo.fullName != null)
              Text(
                repo.fullName!,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            const SizedBox(height: 16),

            // Description
            if (repo.description != null)
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  repo.description!,
                  style: const TextStyle(fontSize: 15),
                ),
              ),
            const SizedBox(height: 24),

            // Stats Row
            Row(
              children: [
                buildStatItem(
                  Icons.star_border,
                  '${repo.stargazersCount ?? 0}',
                  'Stars',
                  Colors.amber,
                  context,
                ),
                const SizedBox(width: 20),
                buildStatItem(
                  Icons.fork_right,
                  '${repo.forksCount ?? 0}',
                  'Forks',
                  Colors.blue,
                  context,
                ),
                const SizedBox(width: 20),
                buildStatItem(
                  Icons.remove_red_eye_outlined,
                  '${repo.watchersCount ?? 0}',
                  'Watchers',
                  Colors.green,
                  context,
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Info Cards
            if (repo.language != null)
              buildInfoCard('Language', repo.language!, Icons.code, context),

            if (repo.owner?.login != null)
              buildInfoCard('Owner', repo.owner!.login!, Icons.person, context),

            if (repo.defaultBranch != null)
              buildInfoCard(
                'Default Branch',
                repo.defaultBranch!,
                Icons.account_tree,
                context,
              ),

            buildInfoCard(
              'Visibility',
              repo.private == true ? 'Private' : 'Public',
              repo.private == true ? Icons.lock : Icons.public,
              context,
            ),

            if (repo.createdAt != null)
              buildInfoCard(
                'Created',
                formatDate(repo.createdAt!),
                Icons.calendar_today,
                context,
              ),

            if (repo.updatedAt != null)
              buildInfoCard(
                'Last Updated',
                formatDate(repo.updatedAt!),
                Icons.update,
                context,
              ),

            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
