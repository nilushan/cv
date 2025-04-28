% fullstackdeveloper-ats-fixed.cls
% ATS-friendly CV class for Full Stack Developers with Atkinson Hyperlegible font
% Created by Claude - Fixed alignment issues

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fullstackdeveloper-ats}[2025/04/28 ATS-friendly CV class for full stack developers]

% Base class
\LoadClass[11pt,a4paper]{article}

% Required packages
\RequirePackage[top=1.2cm, bottom=1.2cm, left=1.5cm, right=1.5cm]{geometry} % Narrower margins
\RequirePackage{xcolor} % For custom colors
\RequirePackage{fontawesome} % For icons
\RequirePackage{titlesec} % For section formatting
\RequirePackage{hyperref} % For hyperlinks
\RequirePackage{tabularx} % For better tables
\RequirePackage{enumitem} % For customizing lists
\RequirePackage{fontspec} % For font selection
\RequirePackage{ragged2e} % For better text alignment

% Define CV colors - Simple palette for ATS compatibility
\definecolor{primary}{RGB}{0, 0, 0} % Black for main text
\definecolor{highlight}{RGB}{41, 128, 185} % Blue for highlights
\definecolor{secondary}{RGB}{102, 102, 102} % Gray for secondary text

% Font settings for Atkinson Hyperlegible
\setmainfont{AtkinsonHyperlegible}[
  Path = ./fonts/,
  Extension = .ttf,
  UprightFont = *-Regular,
  BoldFont = *-Bold,
  ItalicFont = *-Italic,
  BoldItalicFont = *-BoldItalic
]
\setsansfont{AtkinsonHyperlegible}[
  Path = ./fonts/,
  Extension = .ttf,
  UprightFont = *-Regular,
  BoldFont = *-Bold,
  ItalicFont = *-Italic,
  BoldItalicFont = *-BoldItalic
]

% Remove default page numbering
\pagestyle{empty}

% Create plain section styling for ATS compatibility
\titleformat{\section}
  {\normalfont\Large\bfseries\color{highlight}}
  {}{0em}
  {}
  [\vspace{-0.3cm}\rule{\textwidth}{0.5pt}]

\titlespacing*{\section}
  {0pt}{14pt}{8pt}

% Hyperref setup
\hypersetup{
  colorlinks=true,
  linkcolor=highlight,
  filecolor=highlight,
  urlcolor=highlight,
}

% Custom commands for CV elements - ATS friendly
\newcommand{\cvname}[1]{%
  \begin{center}
    \fontsize{18}{22}\selectfont\textbf{#1}
  \end{center}
}

\newcommand{\cvtitle}[1]{%
  \begin{center}
    \fontsize{14}{16}\selectfont\textbf{#1}
  \end{center}
}

\newcommand{\cvcontact}[5]{%
  \begin{center}
    \fontsize{10}{12}\selectfont
    \faEnvelope\ \href{mailto:#1}{#1} $|$
    \faPhone\ #2 $|$
    \faGlobe\ \href{https://#3}{#3} $|$
    \faGithub\ \href{https://github.com/#4}{#4} $|$
    \faLinkedin\ \href{https://linkedin.com/in/#5}{#5}
  \end{center}
}

\newcommand{\daterange}[2]{%
  \textbf{#1 -- #2}
}

\newcommand{\jobtitle}[1]{%
  \textbf{\large #1}
}

\newcommand{\company}[2]{%
  \textbf{#1}, \textit{#2}
}

\newcommand{\skillcategory}[1]{%
  \textbf{#1:} 
}

\newcommand{\projecttitle}[2]{%
  \textbf{#1} \hfill #2
}

\newcommand{\projectdesc}[1]{%
  #1
}

\newcommand{\technologies}[1]{%
  \textbf{Technologies:} #1
}

% Customize list environments
\setlist[itemize]{leftmargin=*,nosep,topsep=0pt,parsep=2pt,partopsep=0pt,label=\textbullet,itemsep=2pt}

% Define footer
\newcommand{\cvfooter}[1]{%
  \vfill
  \begin{center}
    \fontsize{9}{11}\selectfont
    #1
  \end{center}
}

% Simple certification command
\newcommand{\certification}[2]{%
  \textbf{#1} \hfill #2\\[0.1cm]
}

% Simple language command - RENAMED from \language to \cvlanguage to avoid conflict
\newcommand{\cvlanguage}[2]{%
  \textbf{#1} \hfill #2\\[0.1cm]
}