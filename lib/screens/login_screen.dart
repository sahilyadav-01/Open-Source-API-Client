import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/auth_provider.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final TextEditingController _tokenController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isSimulatingOAuth = false;

  @override
  void dispose() {
    _tokenController.dispose();
    super.dispose();
  }

  Future<void> _handleLogin() async {
    if (_formKey.currentState?.validate() ?? false) {
      await ref.read(authProvider.notifier).login(_tokenController.text.trim());
    }
  }

  Future<void> _handleOAuthSimulation() async {
    setState(() {
      _isSimulatingOAuth = true;
    });

    // Simulate OAuth background process redirecting with a secure token
    await Future.delayed(const Duration(seconds: 2));
    
    if (mounted) {
      const mockOAuthToken = 'enterprise-ref-jwt-token-redirect-mock-2026';
      await ref.read(authProvider.notifier).login(mockOAuthToken);
      setState(() {
        _isSimulatingOAuth = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo / Heading
              const Icon(
                Icons.bolt,
                size: 72,
                color: Color(0xFF6366F1), // Indigo 500
              ),
              const SizedBox(height: 16),
              const Text(
                'ANTIGRAVITY',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 2.0,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Production-Grade API Client Workspace',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[400],
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              // Card with form
              Container(
                constraints: const BoxConstraints(maxWidth: 400),
                padding: const EdgeInsets.all(32.0),
                decoration: BoxDecoration(
                  color: const Color(0xFF1E293B), // Slate 800
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xFF334155)), // Slate 700
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.3),
                      blurRadius: 20,
                      offset: const Offset(0, 10),
                    )
                  ],
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Secure Credentials Login',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 24),
                      // Input field
                      TextFormField(
                        controller: _tokenController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'Enter API Token / JWT Auth Key',
                          prefixIcon: Icon(Icons.lock_outline, color: Color(0xFF94A3B8)),
                        ),
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Please enter a valid token';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      // Submit button
                      SizedBox(
                        height: 48,
                        child: ElevatedButton(
                          onPressed: authState.isLoading || _isSimulatingOAuth
                              ? null
                              : _handleLogin,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF6366F1),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: authState.isLoading
                              ? const SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                                  ),
                                )
                              : const Text('Access Workspace', style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                      const SizedBox(height: 16),
                      // Divider line
                      Row(
                        children: [
                          const Expanded(child: Divider(color: Color(0xFF334155))),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Text(
                              'OR',
                              style: TextStyle(color: Colors.grey[500], fontSize: 12),
                            ),
                          ),
                          const Expanded(child: Divider(color: Color(0xFF334155))),
                        ],
                      ),
                      const SizedBox(height: 16),
                      // OAuth simulation button
                      SizedBox(
                        height: 48,
                        child: OutlinedButton.icon(
                          onPressed: authState.isLoading || _isSimulatingOAuth
                              ? null
                              : _handleOAuthSimulation,
                          icon: _isSimulatingOAuth
                              ? const SizedBox(
                                  width: 16,
                                  height: 16,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF6366F1)),
                                  ),
                                )
                              : const Icon(Icons.vpn_key_outlined, size: 16),
                          label: Text(_isSimulatingOAuth ? 'Simulating Redirect...' : 'Sign in with OAuth Flow'),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: const Color(0xFF6366F1),
                            side: const BorderSide(color: Color(0xFF6366F1)),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
