import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/users_bloc.dart';
import '../bloc/users_event.dart';
import '../bloc/users_state.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  @override
  void initState() {
    super.initState();
    context.read<UsersBloc>().add(const UsersEvent.loadUsers());
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
          style: textTheme.titleLarge?.copyWith(color: colorScheme.onPrimary),
        ),
        backgroundColor: colorScheme.primary,
      ),
      body: BlocBuilder<UsersBloc, UsersState>(
        builder: (context, state) {
          switch (state.status) {
            case UsersStatus.loading:
              return Center(
                child: CircularProgressIndicator(color: colorScheme.primary),
              );

            case UsersStatus.error:
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.error_outline,
                        size: 64, color: colorScheme.error),
                    const SizedBox(height: 16),
                    Text(
                      state.errorMessage ?? 'Unknown error',
                      style: textTheme.bodyLarge?.copyWith(
                        color: colorScheme.error,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton.icon(
                      onPressed: () => context
                          .read<UsersBloc>()
                          .add(const UsersEvent.refreshUsers()),
                      icon: const Icon(Icons.refresh),
                      label: const Text('Retry'),
                    ),
                  ],
                ),
              );

            case UsersStatus.success:
              if (state.users.isEmpty) {
                return Center(
                  child: Text('No users found', style: textTheme.bodyLarge),
                );
              }
              return RefreshIndicator(
                onRefresh: () async => context
                    .read<UsersBloc>()
                    .add(const UsersEvent.refreshUsers()),
                child: ListView.builder(
                  itemCount: state.users.length,
                  itemBuilder: (context, index) {
                    final user = state.users[index];
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text(user.name[0].toUpperCase()),
                      ),
                      title: Text(user.name),
                      subtitle: Text(user.email),
                      trailing: Text(user.phone),
                    );
                  },
                ),
              );

            case UsersStatus.initial:
              return const SizedBox();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            context.read<UsersBloc>().add(const UsersEvent.refreshUsers()),
        backgroundColor: colorScheme.primary,
        child: Icon(Icons.refresh, color: colorScheme.onPrimary),
      ),
    );
  }
}
