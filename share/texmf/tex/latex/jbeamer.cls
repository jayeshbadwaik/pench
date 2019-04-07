% Beamer Document Class
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jbeamer}
\LoadClassWithOptions{beamer}

% Beamer Color Theme
\usetheme{Boadilla}
\usecolortheme{seahorse}

\RequirePackage{jbfont}
\RequirePackage{umred}

%% This code sets up the footer of the presentation
\makeatother
\setbeamertemplate{footline}
{
  \leavevmode
  \hbox{
  \begin{beamercolorbox}
    [wd=.20\paperwidth,ht=3ex,dp=1ex,center]{author in head/foot,white}%
    \usebeamerfont{author in head/foot}
    %\insertshortauthor
  \end{beamercolorbox}
  \begin{beamercolorbox}
    [wd=.34\paperwidth,ht=3ex,dp=1ex,center]
    {title in head/foot,white}
    \usebeamerfont{title in head/foot}
    %\insertshorttitle
  \end{beamercolorbox}
  \begin{beamercolorbox}[wd=.25\paperwidth,ht=3ex,dp=1ex,center]{author in
    head/foot,white}
    \usebeamerfont{title in head/foot}
   %\insertshortinstitute
  \end{beamercolorbox}
  \begin{beamercolorbox}[wd=.15\paperwidth,ht=3ex,dp=1ex,right]{author in
    head/foot, white}
    \insertframenumber{} / \inserttotalframenumber\hspace*{1ex}
  \end{beamercolorbox}
  }
  \vskip0pt%
}
\makeatletter
\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{frametitle continuation}[from second][]

%% Table of Contents at the Section Starting
\AtBeginSection[]
{
\begin{frame}
\frametitle{Table of Contents}
\tableofcontents[currentsection]
\end{frame}
}

%% Part Page
\setbeamertemplate{part page}{
        \begin{beamercolorbox}[sep=8pt,center,wd=\textwidth,rounded=true,
          shadow=true]{part title}
            \usebeamerfont{part title}\insertpart\par
        \end{beamercolorbox}
}

% Reset Section Numbering at New Part
\makeatletter
\AtBeginPart{%
  \beamer@tocsectionnumber=0\relax
  \setcounter{section}{0}
  \frame{\partpage}%
}
\makeatother


%% Frame Title Color Style
\definecolor{frametitlecolor}{RGB}{56,56,120}
\setbeamertemplate
{frametitle}
{
  \color{frametitlecolor}
  \bfseries
  \insertframetitle\par\vskip-15pt\hrulefill\\[0.05em]
  {\small \insertframesubtitle}
}

\RequirePackage{tadoba}
\RequirePackage{silari}


