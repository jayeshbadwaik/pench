\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{slarticle}
\LoadClassWithOptions{scrartcl}

% Allow optional commands for sectioning commands which then allow you to type
% commands such as:
%\subsection[
%  head={Subsection in Header},
%  tocentry={Subsection in Table of Contents}
%]
%{Actual Subsection Heading}
\PassOptionsToClass{
  headings=optiontoheadandtoc
}
{scrbook}

\RequirePackage{slpart}
\RequirePackage{slsection}
\RequirePackage{slfont}
\RequirePackage{slbib}
\RequirePackage{sllang}
\RequirePackage{slref}
\RequirePackage{slsection.header}

