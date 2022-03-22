\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lab}[Grant Lemons's Custom Lab Report Class]

% Preamble
\LoadClass[letterpaper, 10pt]{report}
\usepackage[includefoot, left=1in, right=1in, top=1in, bottom=0.5in]{geometry}

% Paragraph jump and intents
\setlength{\parskip}{1em}
\setlength{\parindent}{1em}

% Package mass import
\usepackage{mathtools}
\usepackage{amsmath}
\usepackage{amsfonts}
\usepackage{siunitx}
\usepackage{microtype}
\usepackage[export]{adjustbox}

% Spacing
\usepackage{setspace}
\singlespacing
\usepackage{titlesec}
\titlespacing{\chapter}{0pt}{0pt}{0pt}
\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\titlespacing{\subsubsection}{0pt}{0pt}{0pt}

% Images
\usepackage{graphicx}
\graphicspath{ {./images/} }

% Tables
\usepackage{multirow}
\usepackage{booktabs}
\usepackage{subcaption}
\usepackage{array}
\usepackage{float}
\newcommand{\dtoprule}{\toprule[1pt]\midrule[0.3pt]}
\newcommand{\dbottomrule}{\midrule[0.3pt]\bottomrule[1pt]}
\newcolumntype{L}[1]{>{\raggedright\arraybackslash}p{#1}}
\newcolumntype{C}[1]{>{\centering\arraybackslash}p{#1}}
\newcolumntype{R}[1]{>{\raggedleft\arraybackslash}p{#1}}

% Misc Setup
\titleformat{\subsection}{\normalfont\normalsize\bfseries}{\thesubsection}{1em}{\large}
\titleformat{\section}{\normalfont\large\bfseries}{\thesection}{1em}{}
\titleformat{\chapter}[display]{\vspace{-1.8cm}\normalfont\bfseries}{}{0pt}{\Large}
\newcommand{\insertTitlePage}{
	\centering
        \setcounter{page}{1}
        \pagenumbering{roman}
        \vspace*{7.7cm}
        \textbf{\huge \reporttitle}\\
        \vspace{.4cm}
        \textit{\large \name}\\
        \vspace{.4cm}
        \textit{\large \today}
        \flushleft
        \pagenumbering{roman}
        \newpage
	\setcounter{page}{1}
        \pagenumbering{arabic}
}

% Link setup
\usepackage{hyperref}    
\hypersetup{
    colorlinks=true, %set true if you want colored links
    linktoc=all,     %set to all if you want both sections and subsections linked
    linkcolor=black,  %choose some color if you want links to stand out
}

\endinput
