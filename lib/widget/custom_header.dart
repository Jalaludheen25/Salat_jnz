import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:janaza_guide/constants/colorclass.dart';
import 'package:janaza_guide/constants/iconclass.dart';
import 'package:janaza_guide/provider/language_provider.dart';
import 'package:provider/provider.dart';

class CustomHeader extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool showBackButton;
  final bool showLanguageButton;
  final bool showMenuButton;
  final VoidCallback? onMenuPressed;
  final VoidCallback? onBackPressed;

  const CustomHeader({
    super.key,
    this.title,
    this.showBackButton = false,
    this.showLanguageButton = false,
    this.showMenuButton = false,
    this.onMenuPressed,
    this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageProvider>(
      builder: (context, langProvider, child) {
        return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                ColorClass.blueDark,
                ColorClass.bluelite,
              ],
            ),
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: _buildLeadingWidget(context),
            title: _buildTitle(langProvider),
            centerTitle: false,
            titleSpacing: 8,
            actions: showLanguageButton
                ? [_buildLanguageButton(context, langProvider)]
                : null,
          ),
        );
      },
    );
  }

  Widget? _buildLeadingWidget(BuildContext context) {
    if (showBackButton) {
      return IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          size: 24,
        ),
        onPressed: onBackPressed ?? () => Navigator.of(context).pop(),
      );
    } else if (showMenuButton) {
      return IconButton(
        icon: const Icon(
          Icons.menu_rounded,
          color: Colors.white,
          size: 28,
        ),
        onPressed: onMenuPressed,
      );
    }
    return null;
  }

  Widget _buildTitle(LanguageProvider langProvider) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Logo Icon
        Image.asset(
          IconClass.logo,
          width: 52,
          height: 52,
        ),
        const SizedBox(width: 0),
        // Title Text - Always "Janaza Guide"
        Flexible(
          child: Text(
            title ?? 'Janaza Guide',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              letterSpacing: 0.5,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  Widget _buildLanguageButton(
      BuildContext context, LanguageProvider langProvider) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: IconButton(
        icon: const Icon(
          Icons.translate,
          color: Colors.white,
          size: 24,
        ),
        onPressed: () => _showLanguageDialog(context, langProvider),
      ),
    );
  }

  void _showLanguageDialog(
      BuildContext context, LanguageProvider langProvider) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text(
            langProvider.t('language.select'),
            style: GoogleFonts.poppins(
              color: ColorClass.primaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildLanguageOption(
                dialogContext,
                langProvider,
                'ml',
                'മലയാളം',
                'Malayalam',
              ),
              const SizedBox(height: 8),
              _buildLanguageOption(
                dialogContext,
                langProvider,
                'en',
                'English',
                'English',
              ),
              const SizedBox(height: 8),
              _buildLanguageOption(
                dialogContext,
                langProvider,
                'ur',
                'اردو',
                'Urdu',
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(),
              child: Text(
                langProvider.t('common.cancel'),
                style: GoogleFonts.poppins(
                  color: ColorClass.primaryColor,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildLanguageOption(
    BuildContext context,
    LanguageProvider langProvider,
    String langCode,
    String nativeName,
    String englishName,
  ) {
    final isSelected = langProvider.lang == langCode;

    return InkWell(
      onTap: () {
        langProvider.loadLanguage(langCode);
        Navigator.of(context).pop();

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Language changed to $englishName'),
            duration: const Duration(seconds: 2),
            backgroundColor: ColorClass.primaryColor,
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.grey.withValues(alpha: 0.3),
          ),
        ),
        child: Row(
          children: [
            Icon(
              Icons.language,
              color: ColorClass.primaryColor,
              size: 20,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nativeName,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                  if (nativeName != englishName)
                    Text(
                      englishName,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                ],
              ),
            ),
            Icon(
              isSelected ? Icons.check : Icons.crop_square,
              color: ColorClass.primaryColor,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
