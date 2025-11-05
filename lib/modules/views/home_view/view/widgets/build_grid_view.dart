import 'package:flutter/material.dart';
import 'package:inilabs_task/models/repos_response/repos_response.dart';
import 'package:inilabs_task/modules/views/home_view/controller/home_view_controller.dart';

Widget buildGridView(HomeController controller) {
    return RefreshIndicator(
       onRefresh: () async {
        await controller.fetchRepositories(userName: controller.userData.login ?? '');
      } ,
      child: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.85,
        ),
        itemCount: controller.filteredRepositories.length,
        itemBuilder: (context, index) {
          final repo = controller.filteredRepositories[index];
          return _buildGridItem(repo);
        },
      ),
    );
  }

Widget _buildGridItem(ReposResponse repo) {
    return Container(
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
                Icon(
                  repo.private! ? Icons.lock : Icons.book,
                  size: 32,
                  color: Colors.blue,
                ),
                const SizedBox(height: 12),
                Text(
                  repo.name ?? '',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const Spacer(),
                if (repo.language != null) ...[
                  Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          repo.language ?? '',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                ],
                Row(
                  children: [
                    Icon(Icons.star_border, size: 14, color: Colors.grey[600]),
                    const SizedBox(width: 4),
                    Text(
                      '${repo.stargazersCount?? 0}',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                    const Spacer(),
                    Icon(Icons.call_split, size: 14, color: Colors.grey[600]),
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