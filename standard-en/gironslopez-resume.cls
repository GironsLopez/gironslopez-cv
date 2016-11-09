% Intro Options
\NeedsTeXFormat{LaTeX2e} % document version
\ProvidesClass{gironslopez-resume}[2016/03/30 Custom CV class] % custom class
\LoadClass[a4paper]{article} % base class

% Packages
\RequirePackage{titlesec} % change section headers
\RequirePackage[usenames,dvipsnames]{xcolor} % colors
\RequirePackage[hmargin=1.25cm, vmargin=0.75cm]{geometry} % page margins
\RequirePackage[absolute]{textpos} % date
\RequirePackage[UKenglish]{isodate} % date
\RequirePackage[hidelinks]{hyperref} % hyperlinks

% Color definitions
\definecolor{date}{HTML}{666666}
\definecolor{primary}{HTML}{2b2b2b}
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Date command
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{
  \begin{textblock}{60}(155,5)
    \color{date}
    \fontsize{8pt}{10pt}
    \fontfamily{ppl}\selectfont
    Last Updated on \today
  \end{textblock}
}

% Name and contact information
\newcommand{\name}[2]{
  \centering{
    \fontsize{40pt}{60pt}
    \fontfamily{ppl}\selectfont #1
    \fontfamily{ppl}\selectfont \textbf{#2}
  }
}

\newcommand{\contact}[1]{
  \centering{
    \color{headings}
    \fontsize{11pt}{14pt}
    \fontfamily{ppl}\selectfont #1
  }
  \noindent
  \makebox[\linewidth]{
    \color{headings}
    \rule{\paperwidth}{0.4pt}
  }
  \vspace{-15pt}
}

% Section seperators
\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{8pt}}

% Headings command
\titleformat{\section}{
  \color{headings}
  \Large
  \scshape
  \raggedright
  \fontsize{20pt}{28pt}
  \fontfamily{phv}\selectfont
}{}{0em}{}

% Subheadings command
\titleformat{\subsection}{
  \color{subheadings}
  \bfseries
  %\large
  \scshape
  \raggedright
  \fontsize{12pt}{12pt}
  \fontfamily{phv}\selectfont
}{}{0em}{}

\newcommand{\runsubsection}[1]{
  \color{subheadings}
  \fontsize{12pt}{12pt}
  \fontfamily{phv}\selectfont
  \bfseries
  \uppercase {#1}
  \normalfont
}

% Descriptors command
\newcommand{\descript}[1]{
  \color{subheadings}
  \raggedright
  \scshape
  \fontsize{11pt}{13pt}
  \fontfamily{phv}\selectfont {#1 \\}
  \normalfont
}

% Location command
\newcommand{\location}[1]{
  \color{headings}
  \raggedright
  \fontsize{10pt}{12pt}
  \fontfamily{ppl}\selectfont {#1 \\}
  \normalfont
}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
  \fontsize{10pt}{11pt}
  \fontfamily{ppl}\selectfont
  \vspace{-\topsep}
  \begin{itemize}
  \itemsep1pt
  \parskip0pt
  \parsep0pt
}
{\end{itemize}\vspace{-\topsep}}

% Normal text
\newcommand{\text}[1]{
  \color{headings}
  %\raggedright
  %\scshape
  \fontsize{10pt}{11pt}
  \fontfamily{ppl}\selectfont {#1}
  %\normalfont
}
