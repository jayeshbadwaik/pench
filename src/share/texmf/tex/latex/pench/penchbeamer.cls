\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{penchbeamer}
\RequirePackage[dvipsnames]{xcolor}
\LoadClassWithOptions{beamer}

\renewcommand*\insertshorttitle[1][]{%
  \beamer@setupshort{#1}%
  \let\thanks=\@gobble%
  \ifnum\c@page=1%
    \beamer@insertshort{\beamer@shorttitle}
  \else%
    \beamer@insertshort{\beamer@shorttitle}%
\fi}


\RequirePackage{penchbeamer.ref}
\RequirePackage{penchbeamer.header}
\RequirePackage{penchfont}
\RequirePackage{penchlang}

% Disable Navigation Symbols
\beamertemplatenavigationsymbolsempty



