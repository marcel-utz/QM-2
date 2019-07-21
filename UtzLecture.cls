% !TEX root = qm2.tex
\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{UtzLecture}

\LoadClass[a4paper,11pt]{book}

\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{tikz}
\RequirePackage{standalone}
\RequirePackage{pgfgantt}
\RequirePackage[pdftex,colorlinks=true,breaklinks=true,citecolor=blue,anchorcolor=blue,linkcolor=blue]{hyperref}
\RequirePackage[margin=20mm,top=15mm,bottom=15mm]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{comment}
\RequirePackage{caption}
\RequirePackage{sectsty}
\RequirePackage{fontspec}
\setmainfont{Nimbus Roman No9 L}
\setsansfont{Myriad Pro}
\setmonofont{Input Mono}[Scale=MatchLowercase]

\RequirePackage{unicode-math}
  \setmathfont{texgyretermes-math.otf}
  %\setmathfont{Neo Euler}

\usepackage[verbose]{wrapfig}
\usepackage{subfigure}


\newcommand{\tensor}[1]{\ensuremath{\boldsymbol{#1}}}
\newcommand{\ket}[1]{\ensuremath{|{#1}\rangle}}
\newcommand{\bra}[1]{\ensuremath{\langle{#1}|}}
\newcommand{\braket}[2]{\ensuremath{\langle {#1} | {#2}\rangle}}
\newcommand{\ketbra}[2]{\ensuremath{|{#1}\rangle\langle {#2}|}}
\newcommand{\op}[1]{\ensuremath{\hat{#1}}}
\newcommand{\vect}[1]{\ensuremath{\mathbf{#1}}}
\newcommand{\totaldiff}{\mathrm{d}}

\newcommand{\mlabel}[1]{\mbox{}\marginpar{\raggedleft\hspace{0cm}#1}}
\newcommand{\chemical}[1]{\ensuremath{\mathrm{#1}}}
\newcommand{\chemschem}[1]{\ensuremath{\mathtt{#1}}}
\newcommand{\ensemble}[1]{\endsuremath{\left<{#1}\right>}}
\newcommand{\beq}{\begin{equation}}
\newcommand{\eeq}{\end{equation}}
\newcommand{\etal}{{\em et al.}}
\newcommand{\uf}{{microfluidic}}
\newcommand{\fig}[1]{Fig.~\ref{#1}}

\newenvironment{todo}{\color{orange}\tt\begin{itemize}}{\end{itemize}}

\newenvironment{delete}{\color{gray}}{}

\renewcommand{\thesection}{\arabic{section}}

\renewcommand{\captionfont}{\footnotesize\em}
\renewcommand{\captionlabelfont}{\footnotesize\bf}
%\allsectionsfont{\sffamily}


\renewcommand{\topfraction}{0.9}	% max fraction of floats at top
\renewcommand{\bottomfraction}{0.8}	% max fraction of floats at bottom
%   Parameters for TEXT pages (not float pages):
    \setcounter{topnumber}{2}
    \setcounter{bottomnumber}{2}
    \setcounter{totalnumber}{4}     % 2 may work better
    \setcounter{dbltopnumber}{2}    % for 2-column pages
    \renewcommand{\dbltopfraction}{0.9}	% fit big float above 2-col. text
    \renewcommand{\textfraction}{0.07}	% allow minimal text w. figs
%   Parameters for FLOAT pages (not text pages):
    \renewcommand{\floatpagefraction}{0.7}	% require fuller float pages
% N.B.: floatpagefraction MUST be less than topfraction !!
    \renewcommand{\dblfloatpagefraction}{0.7}	% require fuller float pages


%\renewcommand{\familydefault}{\sfdefault}

\definecolor{soton11}{RGB}{1,67,89}
\definecolor{soton12}{RGB}{0,114,117}
\definecolor{soton13}{RGB}{10,160,169}
\definecolor{soton14}{RGB}{50,61,67}
\definecolor{soton15}{RGB}{151,158,69}
\definecolor{soton16}{RGB}{153,153,166}
\definecolor{soton29}{RGB}{254,62,20}

\makeatletter
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {0.25ex \@plus0.2ex \@minus.2ex}%
                                    {-1em}%
                                    {\sffamily\normalsize\bfseries\color{soton14}}}

\renewcommand\section{\@startsection{section}{1}{\z@}%
                                    {2ex \@plus0.2ex \@minus.2ex}%
                                    {0.5ex}%
                                    {\sffamily\Large\color{soton14}}}

\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                    {0.7ex \@plus0.2ex \@minus.2ex}%
                                    {0.3ex}%
                                    {\sffamily\large\bfseries\color{soton14}}}

\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                    {0.4ex \@plus0.2ex \@minus.2ex}%
                                    {0.2ex}%
                                    {\sffamily\normalsize\bfseries\color{soton14}}}


\renewcommand{\thesection}{\Alph{section}}

\setlength{\parskip}{0.1ex plus 0.25ex minus 0.1ex}


\makeatother

%\DeclareUnicodeCharacter{00B5}{\ensuremath{\mu}}



%\raggedright

\endinput
