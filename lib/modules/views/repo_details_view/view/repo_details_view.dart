import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:inilabs_task/core/utils/utility/helper_func.dart';
import 'package:inilabs_task/models/repos_response/repos_response.dart';

class RepoDetailsView extends StatelessWidget {
  const RepoDetailsView({super.key});

  @override
  Widget build(BuildContext context) {

    // Arguments Data \\
    final repo = Get.arguments as ReposResponse;

    return Scaffold(
      appBar: AppBar(title: Text(repo.name ?? 'Repository', style: TextStyle(color: Theme.of(context).colorScheme.onPrimary)), elevation: 0),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Repository Name
            Text(
              repo.name ?? '',
              style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.primary),
            ),
            const SizedBox(height: 8),

            // Full Name
            if (repo.fullName != null)
              Text(
                repo.fullName!,
                style: TextStyle(fontSize: 14.sp, color: Theme.of(context).colorScheme.primary),
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
                _buildStatItem(
                  Icons.star_border,
                  '${repo.stargazersCount ?? 0}',
                  'Stars',
                  Colors.amber,
                  context,
                ),
                const SizedBox(width: 20),
                _buildStatItem(
                  Icons.fork_right,
                  '${repo.forksCount ?? 0}',
                  'Forks',
                  Colors.blue,
                  context,
                ),
                const SizedBox(width: 20),
                _buildStatItem(
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
              _buildInfoCard('Language', repo.language!, Icons.code, context),

            if (repo.owner?.login != null)
              _buildInfoCard(
                'Owner',
                repo.owner!.login!,
                Icons.person,
                context,
              ),

            if (repo.defaultBranch != null)
              _buildInfoCard(
                'Default Branch',
                repo.defaultBranch!,
                Icons.account_tree,
                context,
              ),

            _buildInfoCard(
              'Visibility',
              repo.private == true ? 'Private' : 'Public',
              repo.private == true ? Icons.lock : Icons.public,
              context,
            ),

            if (repo.createdAt != null)
              _buildInfoCard(
                'Created',
                formatDate(repo.createdAt!),
                Icons.calendar_today,
                context,
              ),

            if (repo.updatedAt != null)
              _buildInfoCard(
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
  
  Widget _buildStatItem(
    IconData icon,
    String count,
    String label,
    Color color,
    BuildContext context,
  ) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.primary),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Icon(icon, color: Theme.of(context).colorScheme.primary, size: 24),
            const SizedBox(height: 4),
            Text(
              count,
              style: TextStyle(
                fontSize: 18.sp,
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: 12.sp,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(
    String label,
    String value,
    IconData icon,
    BuildContext context,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.primary),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Theme.of(context).colorScheme.primary),
          const SizedBox(width: 12),
          Text(
            '$label: ',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14.sp,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontSize: 14.sp,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }

 
}
