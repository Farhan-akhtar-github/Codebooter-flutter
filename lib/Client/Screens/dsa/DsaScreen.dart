import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:codebooter_study_app/widgets/BigText.dart';

class DsaScreen extends StatelessWidget {
  const DsaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        toolbarHeight: dimension.val50,
        centerTitle: true,
        title: bigText(
          text: "DSA",
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SizedBox(height: dimension.val10),
          _buildDataStructureTile(
            context: context,
            icon: Icons.data_array_rounded,
            title: 'Array',
            onTap: () {
              context.go('/dsa/arrays');
            },
          ),

          SizedBox(height: dimension.val10),
          _buildDataStructureTile(
            context: context,
            icon: Icons.link_outlined,
            title: 'Linked List',
            onTap: () {
              context.go('/dsa/linkedlist');
            },
          ),
          SizedBox(height: dimension.val10),
          _buildDataStructureTile(
            context: context,
            icon: Icons.layers_outlined,
            title: 'Stack',
            onTap: () {
              context.go('/dsa/stack');
            },
          ),
          SizedBox(height: dimension.val10),
          _buildDataStructureTile(
            context: context,
            icon: Icons.line_style_sharp,
            title: 'Queue',
            onTap: () {
              context.go('/dsa/queue');
            },
          ),
          SizedBox(height: dimension.val10),
          _buildDataStructureTile(
            context: context,
            icon: Icons.account_tree_outlined,
            title: 'Tree',
            onTap: () {
              context.go('/dsa/tree');
            },
          ),
          SizedBox(height: dimension.val10),
          _buildDataStructureTile(
            context: context,
            icon: Icons.auto_graph_sharp,
            title: 'Graph',
            onTap: () {
              context.go('/dsa/graph');
            },
          ),
          SizedBox(height: dimension.val10),
          _buildDataStructureTile(
            context: context,
            icon: Icons.shape_line_outlined,
            title: 'Trie',
            onTap: () {
              context.go('/dsa/trie');
            },
          ),
          SizedBox(height: dimension.val10),
          _buildDataStructureTile(
            context: context,
            icon: Icons.cyclone_sharp,
            title: 'Recursion',
            onTap: () {
              context.go('/dsa/recursion');
            },
          ),
          SizedBox(height: dimension.val10),
          _buildDataStructureTile(
            context: context,
            icon: Icons.search_off_sharp,
            title: 'Searching',
            onTap: () {
              context.go('/dsa/search');
            },
          ),
          SizedBox(height: dimension.val10),
          _buildDataStructureTile(
            context: context,
            icon: Icons.sort_by_alpha,
            title: 'Sorting',
            onTap: () {
              context.go('/dsa/sort');
            },
          ),
          SizedBox(height: dimension.val10),
          _buildDataStructureTile(
            context: context,
            icon: Icons.dynamic_feed_rounded,
            title: 'Dynamic Programming',
            onTap: () {
              context.go('/dsa/dp');
            },
          ),

          SizedBox(height: dimension.val10),
          _buildDataStructureTile(
            context: context,
            icon: Icons.read_more_outlined,
            title: 'Backtracking',
            onTap: () {
              context.go('/dsa/back');
            },
          ),

          SizedBox(height: dimension.val10),
          _buildDataStructureTile(
            context: context,
            icon: Icons.graphic_eq_outlined,
            title: 'Greedy',
            onTap: () {
              context.go('/dsa/greedy');
            },
          ),

          // Add more data structure tiles here
        ],
      ),
    );
  }

  Widget _buildDataStructureTile({
    required BuildContext context,
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 5,
      shadowColor: Colors.grey,
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.black45,
          size: dimension.val25,
        ),
        title: Text(
          title,
          style: TextStyle(
              fontSize: dimension.font16,
              fontWeight: FontWeight.bold,
              fontFamily: 'Georgia'),
        ),
        onTap: onTap,
      ),
    );
  }
}
