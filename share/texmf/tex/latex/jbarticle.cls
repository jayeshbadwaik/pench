% JBArticle Document Class
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jbarticle}
\LoadClassWithOptions{scrartcl}
\PassOptionsToClass{headings=optiontoheadandtoc}{scrartcl}
\RequirePackage[left=15mm,top=25mm,bottom=25mm,right=10mm]{geometry}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Package List
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{ambhora}
\RequirePackage{umred}
\RequirePackage{jbfont}
\RequirePackage{postumred}
\RequirePackage{postambhora}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Configuration
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\PassOptionsToPackage
{hypertexnames=true,plainpages=false,pdfpagelabels,pagebackref}{hyperref}

\RedeclareSectionCommand[tocnumwidth=2.0em]{part}
\RedeclareSectionCommand[tocindent=4.0em,tocnumwidth=2.6em]{section}
\RedeclareSectionCommand[tocindent=6.0em,tocnumwidth=3.7em]{subsection}

\RequirePackage{tadoba}
\RequirePackage{silari}

