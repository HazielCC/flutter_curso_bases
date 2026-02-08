import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class FakerScreen extends StatefulWidget {
  const FakerScreen({super.key});

  @override
  State<FakerScreen> createState() => _FakerScreenState();
}

class _FakerScreenState extends State<FakerScreen> {
  // * Instancia de Faker
  final faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Faker Screen')),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          final name = faker.person.name();
          final email = faker.internet.email();
          final avatarUrl = faker.image.loremPicsum();
          final phoneNumber = faker.phoneNumber.us();

          return ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(avatarUrl)),
            title: Text(name),
            subtitle: Text(email),
            trailing: Text(phoneNumber),
          );
        },
      ),
    );
  }
}
