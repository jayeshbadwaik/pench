% JBook Document Class
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jbook}
\LoadClassWithOptions{scrbook}
\PassOptionsToClass{headings=optiontoheadandtoc}{scrbook}
\RequirePackage[left=20mm,top=25mm,bottom=25mm,right=18mm]{geometry}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Package List
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{ambhora}
\RequirePackage{umred}
\RequirePackage{jbfont}
\RequirePackage{postumred}
\RequirePackage{postambhora}


\RequirePackage[acronym,symbols,nogroupskip]{glossaries-extra}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Configuration
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\PassOptionsToPackage
{hypertexnames=true,plainpages=false,pdfpagelabels,pagebackref}{hyperref}

\RedeclareSectionCommand[tocnumwidth=2.0em]{part}
\RedeclareSectionCommand[tocindent=2.0em,tocnumwidth=2.0em]{chapter}
\RedeclareSectionCommand[tocindent=4.0em,tocnumwidth=2.6em]{section}
\RedeclareSectionCommand[tocindent=6.0em,tocnumwidth=3.7em]{subsection}

\makeatletter
\newcommand{\unchapter}[1]{%
  \begingroup
  \let\@makechapterhead\@gobble % make \@makechapterhead do nothing
  \chapter{#1}
  \endgroup
}
\makeatother


\setcounter{secnumdepth}{3}

\RequirePackage{titlesec}

\titleformat{\chapter}[block]
 {\Large\bfseries}
 {\raisebox{-\height}{}%
  \space\raisebox{-\height}{\bigchapternumber}\space}
 {20pt}
 {\printtitle}


\titleformat{\section}
  {\normalfont\Large\bfseries}{\thesection}{1em}{}[{\titlerule[0.8pt]}]

\newlength\pretitlewidth
\newcommand\bigchapternumber{\resizebox{36pt}{!}{\mdseries\thechapter}}
\newcommand{\printtitle}[1]{%
  \settowidth{\pretitlewidth}{%
    {\bigchapternumber}\space
  }%
  \parbox[t]{\dimexpr0.9\textwidth-\pretitlewidth}{%
    \linespread{1}\selectfont
    \hrule depth 1pt
    \vspace{2ex}
    \raggedright\bfseries \LARGE#1
  }%
}

\newcommand{\nocontentsline}[3]{}
\newcommand{\tocless}[2]{\bgroup\let\addcontentsline=\nocontentsline#1{#2}\egroup}

\renewcommand*{\raggedpart}{\raggedright}

\setkomafont{part}{\fontsize{18pt}{18pt}\selectfont\color{MidnightBlue}}
\setkomafont{partnumber}{\fontsize{18pt}{18pt}\selectfont\color{MidnightBlue}}
\renewcommand*{\partformat}{\partname\  \thepart}
\renewcommand{\partheadstartvskip}{\null}

\RequirePackage{makeidx}


\RequirePackage{tadoba}
\RequirePackage{silari}



