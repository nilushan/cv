# Documentation for `fullstackdeveloper-ats.cls`

This document explains the features and usage of the custom LaTeX class `fullstackdeveloper-ats.cls`, designed for creating ATS-friendly CVs for Full Stack Developers using the Atkinson Hyperlegible font.

## Purpose

The class provides a clean, structured, and ATS-compatible layout for a CV, focusing on readability and standard formatting while incorporating specific elements like contact icons and project details.

## Dependencies

This class relies on the following LaTeX packages:

*   `geometry`: For setting page margins.
*   `xcolor`: For defining and using custom colors.
*   `fontawesome`: For including icons (e.g., envelope, phone, GitHub).
*   `titlesec`: For customizing section titles.
*   `hyperref`: For creating clickable links (email, URLs).
*   `tabularx`: For improved table layouts (though not heavily used in the default commands).
*   `enumitem`: For customizing list environments (like bullet points).
*   `fontspec`: Essential for loading custom fonts like Atkinson Hyperlegible using `xelatex`.
*   `ragged2e`: For text justification options (like `\justify`).

## Configuration

### Margins

Page margins are set using the `geometry` package:
*   Top: 1.2cm
*   Bottom: 1.2cm
*   Left: 1.5cm
*   Right: 1.5cm

### Colors

Three main colors are defined:
*   `primary` (RGB 0,0,0 - Black): Used for the main body text.
*   `highlight` (RGB 41,128,185 - Blue): Used for section titles and links.
*   `secondary` (RGB 102,102,102 - Gray): Defined but not explicitly used in the default commands.

### Fonts

*   The **Atkinson Hyperlegible** font family is set as the main document font using `fontspec`.
*   The class expects the `.ttf` font files (`AtkinsonHyperlegible-Regular.ttf`, `*-Bold.ttf`, `*-Italic.ttf`, `*-BoldItalic.ttf`) to be located in a `fonts/` subdirectory relative to the main `.tex` file.

## Layout

*   **Base Class:** Uses the standard `article` class as a base.
*   **Page Style:** `\pagestyle{empty}` removes default page numbering.
*   **Sections:** Section titles (`\section`) are formatted in a large, bold, blue font (`highlight` color) with a horizontal rule underneath. Spacing around sections is adjusted for a compact look.
*   **Lists:** `itemize` lists use a standard bullet point (`\textbullet`) and have reduced spacing for compactness.

## Custom Commands

The class provides several custom commands to structure the CV content:

*   `\cvname{Name}`: Creates a centered, large, bold title for the name.
    *   Argument 1: Full Name
*   `\cvtitle{Title}`: Creates a centered, medium-sized, bold job title below the name.
    *   Argument 1: Job Title
*   `\cvcontact{Email}{Phone}{Website}{GitHub}{LinkedIn}`: Creates a centered contact line with icons and clickable links.
    *   Argument 1: Email address
    *   Argument 2: Phone number
    *   Argument 3: Personal website URL (without `https://`)
    *   Argument 4: GitHub username
    *   Argument 5: LinkedIn profile path (the part after `linkedin.com/in/`)
*   `\daterange{Start Date}{End Date}`: Formats a date range, typically used for experience or education duration. Makes the text bold.
    *   Argument 1: Start Date/Year
    *   Argument 2: End Date/Year (or "Present")
*   `\jobtitle{Job Title}`: (Defined but seemingly unused in `nilushan_cv.tex` in favor of direct bolding). Formats a job title in large bold text.
    *   Argument 1: Job Title
*   `\company{Company Name}{Location}`: Formats the company name (bold) and location (italic).
    *   Argument 1: Company Name
    *   Argument 2: Location (e.g., City, Country)
*   `\skillcategory{Category Name}`: Formats a skill category label in bold, followed by a colon.
    *   Argument 1: Skill Category (e.g., "Programming", "Frontend")
*   `\projecttitle{Project Name}{Date Range}`: Formats a project title (bold) aligned left and a date range aligned right.
    *   Argument 1: Project Name
    *   Argument 2: Date Range (e.g., "2020-2022")
*   `\projectdesc{Description}`: Used for the project description text.
    *   Argument 1: Project Description
*   `\technologies{Tech List}`: Formats a list of technologies used in a project, prefixed with "Technologies:".
    *   Argument 1: Comma-separated list of technologies.
*   `\cvfooter{Footer Text}`: Places text centered at the bottom of the page.
    *   Argument 1: Footer content.
*   `\certification{Certification Name}{Date/Details}`: Formats a certification entry.
    *   Argument 1: Certification Name (bold, left-aligned)
    *   Argument 2: Date or other details (right-aligned)
*   `\cvlanguage{Language}{Proficiency}`: Formats a language entry. (Renamed from `\language` to avoid conflicts).
    *   Argument 1: Language Name (bold, left-aligned)
    *   Argument 2: Proficiency Level (right-aligned)

## Example Usage (from `nilushan_cv.tex`)

```latex
\documentclass{fullstackdeveloper-ats}

\begin{document}

% Header
\cvname{NILUSHAN SILVA}
\cvtitle{Full Stack and Cloud Engineer}
\cvcontact{email@example.com}{+123456789}{www.example.com}{githubuser}{linkedinuser}

\section{TECHNICAL SKILLS}
\noindent\skillcategory{Programming} TypeScript, JavaScript, Node.js...

\section{EXPERIENCE}
\noindent\textbf{Full Stack Developer \& Cloud Engineer} \hfill \daterange{October 2017}{Present}\\
\company{Example Ltd}{City, Country}
\begin{itemize}
    \item Achievement description...
\end{itemize}

\section{PROJECTS}
\noindent\projecttitle{Awesome Project}{2021-2023}\\
\projectdesc{Description of the awesome project...}\\
\noindent\technologies{React, Node.js, GCP}

\cvfooter{More information at www.example.com}

\end{document}
```

This documentation provides a guide to understanding and utilizing the `fullstackdeveloper-ats.cls` for creating your CV.