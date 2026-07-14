# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a QGIS training documentation site built with MkDocs Material theme. It contains comprehensive educational materials for basic and advanced QGIS courses, organized by Planetek Italia and authored by Ing. Salvatore Fiandaca.

The repository contains:
- **Basic QGIS Course**: Introduction, installation, interface, projections, vectors, rasters, printing, etc.
- **Advanced QGIS Course**: Expression engine, processing tools, georeferencing, advanced printing techniques
- **Exercises**: Hands-on practice materials for both courses
- **Course materials**: Images, datasets, and supplementary resources

## Architecture

```
docs/
├── capitoli/
│   ├── corso_base/          # Basic course chapters (010_*.md - 160_*.md)
│   └── corso_avanzato/      # Advanced course chapters organized by topic
├── esercitazioni/           # Exercise materials organized by subject
├── imgs/                    # All images and screenshots for documentation
├── dati/                    # Course datasets and materials
├── css/                     # Custom CSS styling
├── javascripts/             # Custom JavaScript (KaTeX, utilities)
└── includes/                # Reusable content (disclaimer, etc.)

site/                        # Generated static site (build output)
mkdocs.yml                   # MkDocs configuration file
```

## Common Development Commands

### Documentation Building
```bash
# Serve the documentation locally with live reload
mkdocs serve

# Build the static site
mkdocs build

# Deploy to GitHub Pages (if configured)
mkdocs gh-deploy
```

### Content Conversion
```bash
# Convert specific markdown files to PDF (chapters 010-060)
cd docs/capitoli/corso_base/
./da_md_a_pdf_pandoc.sh
```

### Content Management
```bash
# Check image usage across documentation
python3 check_imgs_usage.py          # Analyze which images are used/unused
python3 check_imgs_unused_size.py    # Get size information for unused images
```

## Content Organization

- **Chapter numbering**: Basic course chapters use numeric prefixes (010_, 020_, etc.)
- **Markdown features**: Uses PyMdown Extensions for enhanced markdown (admonitions, code blocks, tables, etc.)
- **Images**: All course images are stored in `docs/imgs/` with subdirectories by chapter
- **Multilingual**: Content is primarily in Italian (`language: it` in mkdocs.yml)
- **Responsive**: Uses Material theme with dark/light mode toggle

## Key Configuration

- **Theme**: Material Design with Ubuntu font for text, Courier for code
- **Plugins**: Search, social, glightbox (image gallery), KaTeX (math rendering)
- **Features**: Navigation tabs, search suggestions, content editing links, table of contents following
- **Mathematics**: KaTeX support for mathematical expressions
- **Social**: Twitter and Telegram links for the instructor

## File Naming Conventions

- Course chapters: `XXX_topic_name.md` (where XXX is chapter number)
- Exercise files: `XX_exercise_name.md` (where XX is exercise number)
- Images: Organized by chapter in `imgs/XX_chapter_name/` directories
- Asset files: Use descriptive names with proper extensions

## Editing Guidelines

When working with this documentation:
- Maintain the existing chapter numbering system
- Place new images in appropriate `imgs/` subdirectories
- Use existing markdown extensions (admonitions, code blocks, etc.) consistently
- Preserve Italian language content and terminology
- **For every new .md file**: Always add `{!includes/disclaimer.md!}` at the end of the file (this includes the standard copyright disclaimer)
- **Markdown formatting**: Always leave a blank line between text ending with colon (:) and bulleted lists to ensure proper HTML rendering
- Test changes locally with `mkdocs serve` before committing