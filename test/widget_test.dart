import 'package:flutter_test/flutter_test.dart';

import 'package:tugas_form_layout_wildan/main.dart';

void main() {
  testWidgets('FormPage tampil sebagai halaman utama', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Form Page'), findsOneWidget);
    expect(find.text('Nama'), findsOneWidget);
    expect(find.text('NPM'), findsOneWidget);
    expect(find.text('Jurusan'), findsOneWidget);
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Simpan'), findsOneWidget);
    expect(find.text('Kirim'), findsOneWidget);
    expect(find.text('Lihat Column'), findsOneWidget);
    expect(find.text('Lihat Row'), findsOneWidget);
  });
}
