% Intro Options
\NeedsTeXFormat{LaTeX2e} % document version
\ProvidesClass{gironslopez-resume-se}
\LoadClass[a4paper]{article} % base class

% Packages
\RequirePackage[hmargin=2cm, vmargin=2cm]{geometry} % page margins
\RequirePackage[hidelinks]{hyperref} % hyperlinks

% Language
\RequirePackage[swedish]{babel} % language
\RequirePackage[utf8]{inputenc} % language

% Publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\RequirePackage[usenames,dvipsnames]{xcolor}
\definecolor{date}{HTML}{666666}
\definecolor{primary}{HTML}{2b2b2b}
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}
\definecolor{focus}{HTML}{4183C4}

% Set main fonts
\RequirePackage{fontspec}
\setmainfont[Color=primary, Path = fonts/lato/,BoldItalicFont=Lato-RegIta,BoldFont=Lato-Reg,ItalicFont=Lato-LigIta]{Lato-Lig}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}

% Date command
\RequirePackage[absolute]{textpos}
\RequirePackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{
  \begin{textblock}{60}(155,5)
    \color{date}
    \fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}
    \fontsize{8pt}{10pt}\selectfont
    Senast updaterad \today
  \end{textblock}
}

% Name and contact information
\newcommand{\namesection}[3]{
  \centering{
  	\fontsize{40pt}{60pt}
    \fontspec[Path = fonts/lato/]{Lato-Hai}
    \selectfont #1
    \color{focus}
    \fontspec[Path = fonts/lato/]{Lato-Lig}
    \selectfont #2
  } \\[5pt]
  \centering{
    \color{headings}
    \fontspec[Path = fonts/raleway/]{Raleway-Medium}
    \fontsize{11pt}{14pt}
    \selectfont #3
  }
  \noindent
  \makebox[\linewidth]{
    \color{headings}
    \rule{0.81\paperwidth}{0.4pt}
  }
  %\vspace{-15pt}
}

% Section seperators
\RequirePackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{8pt}}

% Headings command
\titleformat{\section}{
  \color{focus}
  \scshape
  \fontspec[Path = fonts/lato/]{Lato-Lig}
  \fontsize{16pt}{24pt}
  \selectfont
  \raggedright
  \uppercase
}{}{0em}{}

% Subheadings command
\titleformat{\subsection}{
  \color{subheadings}
  \fontspec[Path = fonts/lato/]{Lato-Bol}
  \fontsize{11pt}{11pt}
  \selectfont
  \raggedright
  \bfseries
  \uppercase
}{}{0em}{}

\newcommand{\runsubsection}[1]{
  \color{subheadings}
  \fontspec[Path = fonts/lato/]{Lato-Bol}
  \fontsize{11pt}{11pt}
  \selectfont
  \bfseries
  \uppercase {#1}
  \normalfont
}

% Descriptors command
\newcommand{\descript}[1]{
  \color{subheadings}
  \raggedright
  \scshape
  \fontspec[Path = fonts/raleway/]{Raleway-Medium}
  \fontsize{11pt}{13pt}
  \selectfont {#1 \\}
  \normalfont
}

% Location command
\newcommand{\location}[1]{
  \color{headings}
  \raggedright
  \fontspec[Path = fonts/raleway/]{Raleway-Medium}
  \fontsize{10pt}{12pt}
  \selectfont {#1\\}
  \normalfont
}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
  \vspace{-\topsep}
  \begin{itemize}
    \itemsep1pt
    \parskip0pt
    \parsep0pt
  }
  {\end{itemize}\vspace{-\topsep}
}
