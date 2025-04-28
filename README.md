# LaTeX CV Project - Nilushan Silva

This repository contains the LaTeX source code for Nilushan Silva's Curriculum Vitae (CV). It utilizes a custom LaTeX class (`fullstackdeveloper-ats.cls`) designed to be ATS-friendly and uses the Atkinson Hyperlegible font family.

## Project Structure

```
.
├── .gitignore                 # Git ignore file
├── fullstackdeveloper-ats.cls # Custom LaTeX class file for the CV
├── Makefile                   # Makefile for easy compilation
├── nilushan_cv.tex            # Main LaTeX file containing the CV content
├── fonts/                     # Directory containing required fonts
│   ├── AtkinsonHyperlegible-Bold.ttf
│   ├── AtkinsonHyperlegible-BoldItalic.ttf
│   ├── AtkinsonHyperlegible-Italic.ttf
│   └── AtkinsonHyperlegible-Regular.ttf
└── output/                    # Directory where the compiled PDF will be placed (created by make)
```

## Prerequisites

To compile this CV, you need:

1.  **A LaTeX Distribution:** Such as TeX Live, MiKTeX, or MacTeX. Ensure it includes the `xelatex` compiler, as this project relies on it for font handling.
2.  **Atkinson Hyperlegible Font:** The required `.ttf` font files are included in the `fonts/` directory. Ensure your system's font manager or `xelatex` can find these fonts. Often, placing them in the project directory is sufficient for `xelatex`.

## Compilation

The easiest way to compile the CV is using the provided `Makefile`.

1.  **Navigate** to the project directory in your terminal.
2.  **Run the command:**
    ```bash
    make 
    ```
3.  This command executes `xelatex -output-directory=output nilushan_cv.tex`.
4.  The compiled PDF file (`nilushan_cv.pdf`) will be generated in the `output/` directory.

Alternatively, you can compile manually by running the `xelatex` command directly from the project's root directory:

```bash
xelatex -output-directory=output nilushan_cv.tex
```

You might need to run the command twice to ensure all references (like page numbers, if any) are correctly resolved.

## Customization

To adapt this CV for your own use:

1.  **Edit `nilushan_cv.tex`:** Replace the personal information, experience, skills, projects, etc., with your own details.
2.  **Review `fullstackdeveloper-ats.cls`:** If you need to make structural or style changes beyond content, you may need to modify the custom class file.