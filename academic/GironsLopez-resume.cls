% Intro Options
\NeedsTeXFormat{LaTeX2e} % document version
\ProvidesClass{gironslopez-resume}[2016/06/21 Custom CV class] % custom class
\LoadClass[a4paper]{article} % base class

% Packages
\RequirePackage{titlesec} % change section headers
\RequirePackage[usenames,dvipsnames]{xcolor} % colors
\RequirePackage[hmargin=2.00cm, vmargin=2.00cm]{geometry} % page margins
\RequirePackage[absolute]{textpos} % date
\RequirePackage[UKenglish]{isodate} % date
\RequirePackage[hidelinks]{hyperref} % hyperlinks
\RequirePackage{lastpage}
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
\fancyhead{}
\cfoot{\thepage\ of \pageref{LastPage}}

% Color definitions
\definecolor{date}{HTML}{666666}
\definecolor{primary}{HTML}{2b2b2b}
\definecolor{headings}{HTML}{838B83}
\definecolor{subheadings}{HTML}{333333}

% Date command
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{
	\begin{textblock}{60}(155,5)
		\fontsize{8pt}{10pt}
		\fontfamily{ppl}\selectfont
		Last Updated on \today
	\end{textblock}
}

% Name and contact information
\newcommand{\name}[2]{
	\centering{
		\fontsize{20pt}{40pt}
		\fontfamily{ppl}\selectfont #1
		\fontfamily{ppl}\selectfont \color{headings} \textbf{#2}
	}
}

\newcommand{\contact}[1]{
	\centering{
		\fontsize{11pt}{12pt}
		\fontfamily{ppl}\selectfont #1
	}
	\noindent
	\makebox[\linewidth]{
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
	\fontsize{20pt}{24pt}
	\fontfamily{phv}\selectfont
}{}{0em}{}

% Subheadings command
\titleformat{\subsection}{
	\color{headings}
	%\bfseries
	%\large
	\scshape
	\raggedright
	\fontsize{14pt}{18pt}
	\fontfamily{phv}\selectfont
}{}{0em}{}

\newcommand{\runsubsection}[1]{
	\fontsize{11pt}{13pt}
	\fontfamily{phv}\selectfont
	\bfseries
	\uppercase {#1}
	\normalfont
}

% Descriptors command
\newcommand{\descript}[1]{
	\raggedright
	\scshape
	\fontsize{11pt}{13pt}
	\fontfamily{phv}\selectfont {#1 \\}
	\normalfont
}

% Location command
\newcommand{\location}[1]{
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
	\raggedright
	\fontsize{11pt}{13pt}
	\fontfamily{ppl}\selectfont {#1}
	\normalfont
}
