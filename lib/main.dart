import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'routing/router.dart';
import 'services/database_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize Isar database caching
  await DatabaseService.init();

  runApp(
    const ProviderScope(
      child: OpenSourceApiClientApp(),
    ),
  );
}

class OpenSourceApiClientApp extends ConsumerWidget {
  const OpenSourceApiClientApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(routerProvider);

    return MaterialApp.router(
      title: 'Antigravity API Client',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark, // Keep gorgeous dark mode
      routerConfig: goRouter,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0F172A), // Slate 900
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF6366F1), // Indigo 500
          secondary: Color(0xFF10B981), // Emerald 500
          surface: Color(0xFF1E293B), // Slate 800
          error: Color(0xFFEF4444), // Red 500
        ),
        cardColor: const Color(0xFF1E293B),
        dividerColor: const Color(0xFF334155), // Slate 700
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Color(0xFF6366F1),
          selectionColor: Color(0x666366F1),
          selectionHandleColor: Color(0xFF6366F1),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: const Color(0xFF0B1220),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xFF334155)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xFF334155)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xFF6366F1), width: 1.5),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        ),
        useMaterial3: true,
      ),
    );
  }
}
