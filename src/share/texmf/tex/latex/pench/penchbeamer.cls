\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{slbeamer}
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


\RequirePackage{slbeamer.ref}
\RequirePackage{slbeamer.header}
\RequirePackage{slfont}
\RequirePackage{sllang}

% Disable Navigation Symbols
\beamertemplatenavigationsymbolsempty



