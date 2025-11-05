import 'package:flutter/material.dart';
import 'package:inilabs_task/models/repos_response/repos_response.dart';
import 'package:inilabs_task/modules/views/home_view/controller/home_view_controller.dart';

Widget buildListView(HomeController controller) {
    return RefreshIndicator(
      onRefresh: () async {
        await controller.fetchRepositories(userName: controller.userData.login ?? '');
      } ,
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: controller.filteredRepositories.length,
        itemBuilder: (context, index) {
          final repo = controller.filteredRepositories[index];
          return _buildListItem(repo);
        },
      ),
    );
  }

Widget _buildListItem(ReposResponse repo) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            // Navigate to repo details
          },
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      repo.private! ? Icons.lock : Icons.book,
                      size: 20,
                      color: Colors.grey[600],
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        repo.name ?? '',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                if (repo.description != null) ...[
                  const SizedBox(height: 8),
                  Text(
                    repo.description ?? '',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
                const SizedBox(height: 12),
                Row(
                  children: [
                    if (repo.language!= null) ...[
                      Container(
                        width: 12,
                        height: 12,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        repo.language ?? '',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(width: 16),
                    ],
                    Icon(Icons.star_border, size: 16, color: Colors.grey[600]),
                    const SizedBox(width: 4),
                    Text(
                      '${repo.stargazersCount ?? 0}',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(width: 16),
                    Icon(Icons.call_split, size: 16, color: Colors.grey[600]),
                    const SizedBox(width: 4),
                    Text(
                      '${repo.forksCount ?? 0}',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }