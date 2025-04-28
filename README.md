# LaTeX CV Project - Nilushan Silva

This repository contains the LaTeX source code for Nilushan Silva's Curriculum Vitae (CV). It utilizes a custom LaTeX class (`fullstackdeveloper-ats.cls`) designed to be ATS-friendly and uses the Atkinson Hyperlegible font family.

## CV
[View the compiled CV PDF](./output/nilushan_cv.pdf)

## Project Structure

```
.
├── .gitignore                 # Git ignore file
├── Makefile                   # Makefile for easy compilation
├── README.md                  # This README file
├── docs/                      # Documentation files
│   └── CLASS_DOCUMENTATION.md # Documentation for the custom LaTeX class
├── output/                    # Directory where the compiled PDF will be placed
│   └── nilushan_cv.pdf        # Generated PDF (after running make)
└── src/                       # LaTeX source files and fonts
    ├── fullstackdeveloper-ats.cls # Custom LaTeX class file
    ├── nilushan_cv.tex            # Main LaTeX file for CV content
    └── fonts/                     # Directory containing required fonts
        ├── AtkinsonHyperlegible-Bold.ttf
        ├── AtkinsonHyperlegible-BoldItalic.ttf
        ├── AtkinsonHyperlegible-Italic.ttf
        └── AtkinsonHyperlegible-Regular.ttf
```

## Prerequisites

To compile this CV, you need:

1.  **A LaTeX Distribution:** Such as TeX Live, MiKTeX, or MacTeX. Ensure it includes the `xelatex` compiler, as this project relies on it for font handling.
2.  **Atkinson Hyperlegible Font:** The required `.ttf` font files are included in the `src/fonts/` directory. The LaTeX class is configured to find them there when compiled using the `Makefile`.

## Compilation

The easiest way to compile the CV is using the provided `Makefile`.

1.  **Navigate** to the project directory in your terminal.
2.  **Run the command:**
    ```bash
    make build
    ```
3.  This command changes into the `src/` directory and then executes `xelatex -output-directory=../output nilushan_cv.tex`.
4.  The compiled PDF file (`nilushan_cv.pdf`) will be generated in the `output/` directory.

Alternatively, you can compile manually:
1.  Navigate to the `src/` directory: `cd src`
2.  Run `xelatex`: `xelatex -output-directory=../output nilushan_cv.tex`
3.  Navigate back to the root directory if needed: `cd ..`

You might need to run the command twice to ensure all references (like page numbers, if any) are correctly resolved.

## Customization

To adapt this CV for your own use:

1.  **Edit `src/nilushan_cv.tex`:** Replace the personal information, experience, skills, projects, etc., with your own details.
2.  **Review `src/fullstackdeveloper-ats.cls`:** If you need to make structural or style changes beyond content, you may need to modify the custom class file. See the [Class Documentation](./docs/CLASS_DOCUMENTATION.md) for details on its structure and commands.