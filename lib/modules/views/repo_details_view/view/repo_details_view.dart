import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inilabs_task/models/repos_response/repos_response.dart';

class RepoDetailsView extends StatelessWidget {
  const RepoDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final repo = Get.arguments as ReposResponse;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(repo.name ?? 'Repository'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Repository Name
            Text(
              repo.name ?? '',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            
            // Full Name
            if (repo.fullName != null)
              Text(
                repo.fullName!,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
            const SizedBox(height: 16),
            
            // Description
            if (repo.description != null)
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
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
                ),
                const SizedBox(width: 20),
                _buildStatItem(
                  Icons.fork_right,
                  '${repo.forksCount ?? 0}',
                  'Forks',
                  Colors.blue,
                ),
                const SizedBox(width: 20),
                _buildStatItem(
                  Icons.remove_red_eye_outlined,
                  '${repo.watchersCount ?? 0}',
                  'Watchers',
                  Colors.green,
                ),
              ],
            ),
            const SizedBox(height: 24),
            
            // Info Cards
            if (repo.language != null)
              _buildInfoCard('Language', repo.language!, Icons.code),
            
            if (repo.owner?.login != null)
              _buildInfoCard('Owner', repo.owner!.login!, Icons.person),
            
            if (repo.defaultBranch != null)
              _buildInfoCard('Default Branch', repo.defaultBranch!, Icons.account_tree),
            
            _buildInfoCard(
              'Visibility',
              repo.private == true ? 'Private' : 'Public',
              repo.private == true ? Icons.lock : Icons.public,
            ),
            
            if (repo.createdAt != null)
              _buildInfoCard(
                'Created',
                _formatDate(repo.createdAt!),
                Icons.calendar_today,
              ),
            
            if (repo.updatedAt != null)
              _buildInfoCard(
                'Last Updated',
                _formatDate(repo.updatedAt!),
                Icons.update,
              ),
            
            const SizedBox(height: 16),
            
          
          ],
        ),
      ),
    );
  }
  
  Widget _buildStatItem(IconData icon, String count, String label, Color color) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]!),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Icon(icon, color: color, size: 24),
            const SizedBox(height: 4),
            Text(
              count,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildInfoCard(String label, String value, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.grey[700]),
          const SizedBox(width: 12),
          Text(
            '$label: ',
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[700],
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildChip(String label, IconData icon) {
    return Chip(
      avatar: Icon(icon, size: 16),
      label: Text(label),
      backgroundColor: Colors.blue[50],
      labelStyle: const TextStyle(fontSize: 12),
    );
  }
  
  String _formatDate(String dateStr) {
    try {
      final date = DateTime.parse(dateStr);
      return '${date.day}/${date.month}/${date.year}';
    } catch (e) {
      return dateStr;
    }
  }
}