import 'package:flutter/material.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/imagesclass.dart';
import 'package:janaza_guide/constants/textstyleclass.dart';
import 'package:janaza_guide/provider/version_check_provider.dart';
import 'package:janaza_guide/screen/homescreen/home_screen.dart';


import 'package:provider/provider.dart';


class ForceUpdatePage extends StatefulWidget {
  const ForceUpdatePage({super.key});

  @override
  State<ForceUpdatePage> createState() => _ForceUpdatePageState();
}

class _ForceUpdatePageState extends State<ForceUpdatePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _scaleAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutBack,
    );
    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _buildWhatsNewSection(BuildContext context, String? changes) {
    if (changes == null || changes.isEmpty) {
      return const SizedBox.shrink();
    }

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: ColorClass.backgroundColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: ColorClass.black87,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.new_releases_rounded,
                size: 20,
                color: ColorClass.primaryColor,
              ),
              const SizedBox(width: 8),
              Text(
                'What\'s New',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: ColorClass.black,
                      letterSpacing: 0.5,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          ...changes.split('\n').map((change) {
            if (change.trim().isEmpty) return const SizedBox.shrink();

            final cleanedChange =
                change.trim().replaceAll(RegExp(r'^[-•]\s*'), '');
            IconData icon = _getIconForChange(cleanedChange.toLowerCase());

            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    icon,
                    size: 18,
                    color: ColorClass.primaryColor.withOpacity(0.7),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      cleanedChange,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            height: 1.4,
                          ),
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }

  IconData _getIconForChange(String change) {
    if (change.contains('language') ||
        change.contains('translation') ||
        change.contains('word')) {
      return Icons.translate_rounded;
    } else if (change.contains('audio') ||
        change.contains('sound') ||
        change.contains('playback') ||
        change.contains('recitation')) {
      return Icons.music_note_rounded;
    } else if (change.contains('design') ||
        change.contains('theme') ||
        change.contains('ui') ||
        change.contains('layout')) {
      return Icons.palette_rounded;
    } else if (change.contains('reminder') ||
        change.contains('notification') ||
        change.contains('alert')) {
      return Icons.notifications_rounded;
    } else if (change.contains('performance') ||
        change.contains('speed') ||
        change.contains('optimization')) {
      return Icons.speed_rounded;
    } else if (change.contains('bug') ||
        change.contains('fix') ||
        change.contains('issue')) {
      return Icons.bug_report_rounded;
    } else if (change.contains('security') ||
        change.contains('privacy') ||
        change.contains('authentication')) {
      return Icons.security_rounded;
    } else if (change.contains('download') ||
        change.contains('storage') ||
        change.contains('offline')) {
      return Icons.download_rounded;
    } else if (change.contains('search') ||
        change.contains('find') ||
        change.contains('lookup')) {
      return Icons.search_rounded;
    } else if (change.contains('share') ||
        change.contains('export') ||
        change.contains('send')) {
      return Icons.share_rounded;
    } else if (change.contains('bookmark') ||
        change.contains('save') ||
        change.contains('favorite')) {
      return Icons.bookmark_rounded;
    } else if (change.contains('settings') ||
        change.contains('configuration') ||
        change.contains('preferences')) {
      return Icons.settings_rounded;
    } else if (change.contains('sync') ||
        change.contains('backup') ||
        change.contains('cloud')) {
      return Icons.sync_rounded;
    } else if (change.contains('feature') ||
        change.contains('new') ||
        change.contains('added')) {
      return Icons.stars_rounded;
    } else if (change.contains('data') ||
        change.contains('database') ||
        change.contains('content')) {
      return Icons.storage_rounded;
    } else if (change.contains('user') ||
        change.contains('profile') ||
        change.contains('account')) {
      return Icons.person_rounded;
    } else if (change.contains('prayer') ||
        change.contains('salah') ||
        change.contains('namaz')) {
      return Icons.access_time_rounded;
    } else if (change.contains('quran') ||
        change.contains('surah') ||
        change.contains('ayah')) {
      return Icons.menu_book_rounded;
    } else if (change.contains('tafseer') ||
        change.contains('interpretation') ||
        change.contains('explanation')) {
      return Icons.description_rounded;
    } else if (change.contains('qibla') ||
        change.contains('direction') ||
        change.contains('compass')) {
      return Icons.explore_rounded;
    } else if (change.contains('font') ||
        change.contains('text size') ||
        change.contains('typography')) {
      return Icons.text_fields_rounded;
    } else if (change.contains('network') ||
        change.contains('internet') ||
        change.contains('connection')) {
      return Icons.wifi_rounded;
    } else if (change.contains('calendar') ||
        change.contains('date') ||
        change.contains('schedule')) {
      return Icons.calendar_today_rounded;
    } else if (change.contains('location') ||
        change.contains('place') ||
        change.contains('region')) {
      return Icons.location_on_rounded;
    }
    return Icons.check_circle_outline_rounded;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorClass.backgroundColor,
      body: Consumer<VersionCheckProvider>(
        builder: (context, provider, child) {
          return Stack(
            children: [
              SafeArea(
                child: Center(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 40),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // App Logo
                        Image.asset(ImageClass.d4dxLogo, height: 80),
                        const SizedBox(height: 20),
                        ScaleTransition(
                          scale: _scaleAnimation,
                          child: FadeTransition(
                            opacity: _fadeAnimation,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                // Update Icon with Gradient Animation
                                TweenAnimationBuilder<double>(
                                  duration: const Duration(seconds: 1),
                                  tween: Tween(begin: 0, end: 1),
                                  builder: (context, value, child) {
                                    return Transform.rotate(
                                      angle: value * 2 * 3.14,
                                      child: Container(
                                        padding: const EdgeInsets.all(24),
                                        decoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                            colors: [
                                              ColorClass.primaryColor,
                                              ColorClass.primaryLight,
                                            ],
                                          ),
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                              color: ColorClass.black
                                                  .withOpacity(0.4),
                                              blurRadius: 20,
                                              spreadRadius: value * 5,
                                            ),
                                          ],
                                        ),
                                        child: const Icon(
                                          Icons.system_update_rounded,
                                          size: 56,
                                          color: ColorClass.white,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                const SizedBox(height: 40),
                                // Title with Gradient
                                ShaderMask(
                                  shaderCallback: (bounds) =>
                                      const LinearGradient(
                                    colors: [
                                      ColorClass.primaryColor,
                                      ColorClass.secondaryColor,
                                    ],
                                  ).createShader(bounds),
                                  child: Text(
                                    'Update Available!',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1.2,
                                        ),
                                  ),
                                ),
                                const SizedBox(height: 12),
                                // Version Info with Animation
                                TweenAnimationBuilder<double>(
                                  duration: const Duration(milliseconds: 800),
                                  tween: Tween(begin: 0, end: 1),
                                  builder: (context, value, child) {
                                    return Opacity(
                                      opacity: value,
                                      child: Transform.translate(
                                        offset: Offset(0, 20 * (1 - value)),
                                        child: Text(
                                          'New Version: v${provider.newVersion}',
                                          style: TextStyleClass.abelDefault(
                                            color: ColorClass.primaryColor,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                const SizedBox(height: 30),
                                // Mandatory Update Badge
                                if (provider.forceUpdate)
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 8),
                                    decoration: BoxDecoration(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .errorContainer,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .error
                                              .withOpacity(0.3),
                                          blurRadius: 8,
                                          spreadRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Icon(
                                          Icons.warning_rounded,
                                          size: 18,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          'Mandatory Update',
                                              style: TextStyleClass.abelDefault(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                const SizedBox(height: 32),
                                // What's New Section
                                _buildWhatsNewSection(
                                    context, provider.changes),
                                const SizedBox(height: 40),
                                // Update Button
                                ElevatedButton(
                                  onPressed: () {
                                    provider.launchAppStore(context: context);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 32, vertical: 16),
                                    backgroundColor: ColorClass.primaryColor,
                                    foregroundColor:
                                        Theme.of(context).colorScheme.onPrimary,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'Update Now',
                                        style: TextStyleClass.abelDefault(
                                          color: ColorClass.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Icon(
                                        Icons.arrow_forward_rounded,
                                        size: 18,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                      ),
                                    ],
                                  ),
                                ),
                                // Skip button only if not force update
                                if (!provider.forceUpdate)
                                  TextButton(
                                    onPressed: () {
                                   Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                                    },
                                    style: TextButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 24, vertical: 12),
                                      foregroundColor: ColorClass.primaryColor,
                                    ),
                                    child: Text(
                                      'Skip for now',
                                      style: TextStyleClass.abelDefault(
                                        color: ColorClass.primaryColor,
                                        fontSize: 16,
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
              ),
            ],
          );
        },
      ),
    );
  }
}
