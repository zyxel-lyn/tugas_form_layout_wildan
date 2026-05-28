import 'package:flutter/material.dart';

import 'column_page.dart';
import 'row_page.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();

  String? _validateRequired(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Field ini tidak boleh kosong';
    }

    return null;
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  void _submitForm(String message) {
    if (_formKey.currentState!.validate()) {
      _showSnackBar(message);
    }
  }

  Widget _buildTextFormField({
    required String labelText,
    required String hintText,
    required IconData icon,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: Icon(icon),
        border: const OutlineInputBorder(),
      ),
      validator: _validateRequired,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Page'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildTextFormField(
                  labelText: 'Nama',
                  hintText: 'Masukkan nama lengkap',
                  icon: Icons.person,
                ),
                const SizedBox(height: 16),
                _buildTextFormField(
                  labelText: 'NPM',
                  hintText: 'Masukkan NPM',
                  icon: Icons.badge,
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 16),
                _buildTextFormField(
                  labelText: 'Jurusan',
                  hintText: 'Masukkan jurusan',
                  icon: Icons.school,
                ),
                const SizedBox(height: 16),
                _buildTextFormField(
                  labelText: 'Email',
                  hintText: 'Masukkan email',
                  icon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    _submitForm('Data berhasil disimpan');
                  },
                  child: const Text('Simpan'),
                ),
                const SizedBox(height: 12),
                ElevatedButton.icon(
                  onPressed: () {
                    _submitForm('Data berhasil dikirim');
                  },
                  icon: const Icon(Icons.send),
                  label: const Text('Kirim'),
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ColumnPage(),
                            ),
                          );
                        },
                        child: const Text('Lihat Column'),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RowPage(),
                            ),
                          );
                        },
                        child: const Text('Lihat Row'),
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
}
