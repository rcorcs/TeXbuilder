%% This is file 'lms.cls'
%% 
%% London Mathematical Society document class, version 2.1.9
%% 
%% by Ola Tornkvist with modified 2008 journal style by Techset ('Devi')
%%          based on LMS.CLS v2.1.8
%%          by Ola Tornkvist (a minor modification of version 2.1.7)
%%          based on LMS.CLS v2.1.7 
%%          by Ola Tornkvist with substantial contributions from Alistair Smith
%%          based on LMS.CLS v2.1.5
%%          by Ola Tornkvist with contributions from Alice Sharp
%%          based on LMS.CLS v2.1
%%          by Alison Woollatt and Ola Tornkvist 
%%          based on LMS.STY v0.92 and LMS.CLS v2.0    
%%          by Mark A. Reed and Alison Woollatt
%%
%% Bugs (in the case of unchanged files) should be reported to
%%    production@lms.ac.uk
%%
%% Copyright (c) 2002, 2005 London Mathematical Society
%% Permission is granted to copy and use these macros freely and
%% without restriction. Modifications are permitted, but should be
%% documented and made only to PRIORLY RENAMED copies of the file. 
%% The modified version must include the new name in the first 
%% line of text (as above) and should acknowledge this TeX document
%% as its source. Any further distribution of this file, modified 
%% or otherwise, must carry this copyright notice.  
%%
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%%
\NeedsTeXFormat{LaTeX2e}[1996/06/01]
\ProvidesClass{lms}[2007/11/20 v2.1.9 London Mathematical
  ^^JSociety document class]

%%Added on 19/07/06
\setlength{\paperheight}{270mm}%
\setlength{\paperwidth}{192mm}%

%%Added on 19/07/06
\newif\if@cropmarkson \@cropmarksontrue

% class options
\newif\ifblm % bulletin
\newif\ifjlm % journal
\newif\ifplm % proceedings
% Added in version 2.1.5 (OT):
\newif\ifprod % new production style from January 2004 issues
\newif\if@queries % permit margin queries, listed on float page
\newif\if@nocm
% in particular, from lms2ecm.sty style options:
\newif\iffrak  % replaces \mathcal with \mathfrak
\newif\ifeuler % replaces \mathcal with Euler font
% End of this addition (OT)
\newif\iffinal % page nos. syle on I proofs.

\DeclareOption{oneside}{\relax}
\DeclareOption{twoside}{\@twosidetrue \@mparswitchtrue}
\DeclareOption{draft}{\setlength\overfullrule{5\p@}}
\DeclareOption{final}{\finaltrue}%%updated on 12/9/06 - devi -page nos. syle on I proofs.
\DeclareOption{onecolumn}{\@twocolumnfalse}
\DeclareOption{twocolumn}{\relax}
\DeclareOption{blm}{\blmtrue}
\DeclareOption{jlm}{\jlmtrue}
\DeclareOption{plm}{\plmtrue}
% Added in version 2.1.5 (OT):
\DeclareOption{queries}{\@queriestrue}
\DeclareOption{nocm}{\@nocmtrue}
\DeclareOption{frak}{\fraktrue}
\DeclareOption{euler}{\eulertrue}   

%%Added on 19/07/06
\DeclareOption{a4paper}{\PassOptionsToPackage{a4}{crop}}
\DeclareOption{centre}{\PassOptionsToPackage{center}{crop}}
\DeclareOption{crop}{\PassOptionsToPackage{cam}{crop}\global\@cropmarksontrue}
\DeclareOption{nocrop}{\PassOptionsToPackage{off}{crop}\global\@cropmarksonfalse}
\DeclareOption{info}{\PassOptionsToPackage{info}{crop}}
\DeclareOption{noinfo}{\PassOptionsToPackage{noinfo}{crop}}
% End of this addition (OT)

\ExecuteOptions{twoside,onecolumn}
\ProcessOptions\relax

% Added in version 2.1.9 (OT)
\newcounter{c@FirstPage}

% Added in version 2.1.5 (OT):
\ifblm\prodtrue\else
   \ifjlm\prodtrue\else
     \ifplm\prodtrue\else
     \prodfalse
\fi\fi\fi
% End of this addition (OT)

% stop baselineskips from stretching
\renewcommand\baselinestretch{}

\setlength\lineskip{0\p@}
\setlength\normallineskip{0\p@}
\setlength\normalbaselineskip{0\p@}

\newcommand\quarter@line{3\p@}
\newcommand\half@line{6\p@}
\newcommand\full@line{12\p@}
\newcommand\doublefull@line{18\p@}

\renewcommand\normalsize{%
  \@setfontsize\normalsize\@xpt\@xiipt
  \abovedisplayskip \half@line \@plus 1\p@ \@minus 1\p@
  \belowdisplayskip \abovedisplayskip
  \abovedisplayshortskip \quarter@line \@plus 1\p@
  \belowdisplayshortskip \abovedisplayskip
  \let\@listi\@listI
}

\normalsize

\newcommand\small{%
  \@setfontsize\small\@ixpt\@xpt
  \abovedisplayskip 5\p@ \@plus 1\p@ \@minus 1\p@
  \belowdisplayskip \abovedisplayskip
  \abovedisplayshortskip 2.5\p@ \@plus 1\p@
  \belowdisplayshortskip \abovedisplayskip
  \def\@listi{\leftmargin\leftmargini
    \topsep \z@ \@plus 1\p@ \@minus 1\p@
    \parsep \z@
    \itemsep \parsep}%
}

\newcommand\medium{%
  \@setfontsize\medium\@viiipt\@xpt
  \abovedisplayskip 5\p@ \@plus 1\p@ \@minus 1\p@
  \belowdisplayskip \abovedisplayskip
  \abovedisplayshortskip 2.5\p@ \@plus 1\p@
  \belowdisplayshortskip \abovedisplayskip
  \def\@listi{\leftmargin\leftmargini
    \topsep \z@ \@plus 1\p@ \@minus 1\p@
    \parsep \z@
    \itemsep \parsep}%
}

\newcommand\footnotesize{%
  \@setfontsize\footnotesize\@viiipt\@ixpt
  \abovedisplayskip 4.5\p@ \@plus 1\p@ \@minus 1\p@
  \belowdisplayskip \abovedisplayskip
  \abovedisplayshortskip \z@ \@plus 1\p@
  \belowdisplayshortskip \abovedisplayskip
  \def\@listi{\leftmargin\leftmargini
    \topsep \z@ \@plus 1\p@ \@minus 1\p@
    \parsep \z@
    \itemsep \parsep}%
}

\newcommand{\@viiptv}{7.5}%7.5pt, mock small caps for running head
\DeclareMathSizes{\@viiptv}{\@viiptv}{\@vipt}{\@vpt}
\newcommand\mocksmallcaps{\@setfontsize\mocksmallcaps\@viiptv{12}}

\newcommand\scriptsize{\@setfontsize\scriptsize\@viipt\@viiipt}
\newcommand\tiny{\@setfontsize\tiny\@vpt\@vipt}
\newcommand\addresssize{\@setfontsize\addresssize\@xpt\@xipt}
\newcommand\large{\@setfontsize\large\@xiipt\@xivpt}
\newcommand\Large{\@setfontsize\Large\@xivpt{16\p@}}
\newcommand\LARGE{\@setfontsize\LARGE\@xviipt{21\p@}}
\newcommand\huge{\@setfontsize\huge\@xxpt\@xxvpt}
\newcommand\Huge{\@setfontsize\Huge\@xxvpt{30\p@}}

% copyright sign
\newcommand{\@viptvpt}{6.5}%                   
\DeclareMathSizes{\@viptvpt}{\@viptvpt}{\@vipt}{\@vpt}

% Added in version 2.1.5 (OT):
\if@nocm
  % old CUP copyright symbol
  \newcommand\copyrightsize{\@setfontsize\copyrightsize\@viptvpt{7}}%   6.5/7
  \newcommand\LMScopyright{%
  \raisebox{.8pt}{\hbox{\kern 2pt\raisebox{-.5pt}{%
    \copyrightsize C}\kern -2pt\raisebox{1.8pt}{\circle{7}}\kern -2pt}}}
\else
  % Modify LMS copyright symbol for Computer Modern font
  \newcommand\copyrightsize{\@setfontsize\copyrightsize\@vpt{7}}% 5/7
  \newcommand\LMScopyright{%
  \raisebox{.9pt}{\hbox{\kern 2.1pt\raisebox{.1pt}{%
    \copyrightsize C}\kern -2.1pt\raisebox{1.8pt}{\circle{6}}\kern -2pt}}}
\fi
% End of this addition (OT)

\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}

\setlength\marginparwidth{2.0cm}
\setlength\marginparsep{10\p@}

\setlength\headheight{7\p@}%%changed according to the trimsize on 19/07/06
% Added OT v. 2.1.9
\iffinal%
\setlength\topmargin{17.5mm}%
\addtolength\topmargin{-1in}%
\else
\setlength\topmargin{\z@}
\fi
\setlength\headsep{26\p@}%20
\setlength\topskip{8\p@}
\setlength\footskip{18\p@}

\setlength\textheight{50\baselineskip}%51lines
\addtolength\textheight{\topskip}%

\setlength\textwidth{144mm}
\setlength\columnsep{10\p@}
\setlength\columnseprule{\z@}

\newlength{\insidemargin}
\setlength{\insidemargin}{26mm}%%20mm
\setlength\oddsidemargin{\insidemargin}
\addtolength\oddsidemargin{-1in}    % subtract out the 1 inch driver margin
\setlength\@tempdima{\paperwidth} \addtolength\@tempdima{-\textwidth}
\addtolength\@tempdima{-\insidemargin} \setlength\evensidemargin{\@tempdima}
\addtolength\evensidemargin{-1in}


% Added in version 2.1.5 (OT):
%\ifprod
% Page positioning of typeset page (from lms2esym.sty)
%   \setlength\oddsidemargin\z@
%   \setlength\evensidemargin\z@
%   \setlength\topmargin\z@
%\else 
% Page positioning in author manuscripts
%   \setlength\oddsidemargin{2pc}
%   \setlength\evensidemargin{2pc}
%   \setlength\topmargin{3pc}
%\fi


% End of this addition (OT)
% Further additions in version 2.1.5 are all at the end of this class file.

\DeclareTextFontCommand\textsfi{\usefont{OT1}{cmss}{m}{sl}}
\DeclareMathAlphabet\mathsfi            {OT1}{cmss}{m}{sl}
\DeclareTextFontCommand\textsfb{\usefont{OT1}{cmss}{bx}{n}}
\DeclareMathAlphabet\mathsfb            {OT1}{cmss}{bx}{n}
\DeclareTextFontCommand\textsfbi{\usefont{OT1}{cmss}{m}{sl}}
\DeclareMathAlphabet\mathsfbi            {OT1}{cmss}{m}{sl}


\DeclareMathSymbol{\varGamma}{\mathord}{letters}{"00}
\DeclareMathSymbol{\varDelta}{\mathord}{letters}{"01}
\DeclareMathSymbol{\varTheta}{\mathord}{letters}{"02}
\DeclareMathSymbol{\varLambda}{\mathord}{letters}{"03}
\DeclareMathSymbol{\varXi}{\mathord}{letters}{"04}
\DeclareMathSymbol{\varPi}{\mathord}{letters}{"05}
\DeclareMathSymbol{\varSigma}{\mathord}{letters}{"06}
\DeclareMathSymbol{\varUpsilon}{\mathord}{letters}{"07}
\DeclareMathSymbol{\varPhi}{\mathord}{letters}{"08}
\DeclareMathSymbol{\varPsi}{\mathord}{letters}{"09}
\DeclareMathSymbol{\varOmega}{\mathord}{letters}{"0A}


\setlength\footnotesep{10pt}
\setlength{\skip\footins}{\doublefull@line \@plus \full@line \@minus 1\p@}

\setlength\floatsep{12\p@ \@plus \half@line \@minus 1\p@}
\setlength\textfloatsep{18\p@ \@plus \half@line \@minus 3\p@}
\setlength\intextsep{18\p@ \@plus \quarter@line \@minus 2\p@}
\setlength\dblfloatsep{12\p@ \@plus \half@line \@minus 2\p@}
\setlength\dbltextfloatsep{18\p@ \@plus 4.5\p@ \@minus 3\p@}
\setlength\@fptop{\z@ \@plus 0fil}
\setlength\@fpsep{\full@line \@plus 0fil}
\setlength\@fpbot{\z@ \@plus 3fil}
\setlength\@dblfptop{\z@ \@plus 0fil}
\setlength\@dblfpsep{\full@line \@plus 0fil}
\setlength\@dblfpbot{\z@ \@plus 3fil}
\setlength\marginparpush{6\p@}

\setlength\parskip{\z@}

\setlength\parindent{10pt}
\setlength\partopsep{\z@ \@plus 1\p@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
%\displaywidowpenalty 100 %%added on 190706
%\predisplaypenalty   10000%%added on 190706
%\postdisplaypenalty  2500%%added on 190706
%\clubpenalty\z@   % replaced v.2.1.6
%\widowpenalty\@M  % replaced v.2.1.6
% Fix v.2.1.6 Alistair Smith: retune parameters
\hyphenpenalty=800
\doublehyphendemerits=10000
\lefthyphenmin=3 
\brokenpenalty=10000
\displaywidowpenalty=0
\clubpenalty=10000
\widowpenalty=10000

\newcommand\partname{Part}
\newcommand\part{\addvspace{18\p@ \@plus 3\p@}%
     \secdef\@part\@spart}

\def\@part[#1]#2{%
  \ifnum \c@secnumdepth >\m@ne
    \refstepcounter{part}%
    \addcontentsline{toc}{section}{{\partname}\ \thepart\ifx #1\@empty\else.\enspace #1\fi}%
  \else
    \addcontentsline{toc}{section}{{#1}}%
  \fi
  {\vspace*\z@\centering
   \ifnum \c@secnumdepth >\m@ne
     \normalfont\rmfamily{\sc {\partname}\ \thepart. }%
     \fi
   \normalfont\rmfamily{\sc #2}\markboth{}{}\par}%
  \nobreak %\vskip 3ex \@afterheading
  \addvspace{18\p@} \@afterheading
}

\def\@spart#1{%
  {\centering\normalfont\rmfamily{\sc #1}\par}%
  \nobreak %\vskip 3ex \@afterheading
  \addvspace{18\p@} \@afterheading
}

\newcommand\section{%
\@startsection{section}{1}{\z@}%
    {24\p@ \@plus 5\p@}{6\p@}%
    {%\vspace*\z@%
    \normalsize\normalfont\itshape\centering}%
}

\def\dropheader{\eject\vspace*{-12pt}} 
%Use for lowering subsection header (or any header) when it occurs 
%at the top of an even-numbered page.

\def\subsection{\@startsection{subsection}{2}{\z@}%
{12\p@ \@plus 3\p@}{6\p@}%
{\addvspace\full@line\normalsize\normalfont\itshape}} 

\newcommand\subsubsection{\@startsection{subsubsection}{3}{\parindent}
    {\full@line \@plus 6\p@ \@minus 3\p@}{-\parindent}
    {\normalsize\normalfont\itshape\noindent}%
}

\newcommand\paragraph{\@startsection{paragraph}{4}{\parindent}
    {\full@line \@plus 6\p@ \@minus 3\p@}{-\parindent}
    {\normalsize\normalfont\itshape\noindent}%
}

\newcommand\subparagraph{\@startsection{subparagraph}{4}{\parindent}
    {\half@line \@plus 3.25\p@ \@minus 1\p@}{-0.5em}
    {\normalsize\normalfont\rmfamily}%
}

\def\@seccntformat#1{% FROM LATEX.LTX
  \normalfont\rmfamily\csname the#1\endcsname.\enskip%
}


% Fix v.2.1.6 OT: single appendix without caption to have slanted heading
\def\@secappcntformat#1{%
  \ifappendix% 
    \ifoneappendix%
      \ifx\apphe@d\@empty%
        \sl\appendixname%
     \else%
        \rm\appendixname%
     \fi%
    \else%
      \rm\appendixname~%
    \fi%
  \fi%
  \ifoneappendix\else \csname the#1\endcsname\relax\fi% NOTE: used for ordinary sections too
  \ifx\apphe@d\@empty \else .\fi\enskip% 
}
% end of fix v.2.1.6
%

% obsolete code to allow 1/2 line space above section head at top of page
%\def\leavegap{% removed in v.2.1.6
%\newcommand\mysection{% removed in v.2.1.6


% Added in v.2.1.6 to allow adjustment of spacing in subsection and subsubsection
% heading 
\newlength\subsectionspaceadjust
\newlength\subsubsectionspaceadjust
\setlength\subsectionspaceadjust{-.5em}
\setlength\subsubsectionspaceadjust{-.5em}
%

% \@sect{1NAME}{2LEVEL}{3INDENT}{4BEFORESKIP}{5AFTERSKIP}{6STYLE}[ARG1]{ARG2} 
\def\@sect#1#2#3#4#5#6[#7]#8{%                
                \def\emptybracket{}%
                \def\contsofeight{#8}%
                \ifnum #2>\c@secnumdepth
                  \let\@svsec\@empty%
                \else \refstepcounter{#1}
      \def\apphe@d{#8}%
       \protected@edef\@svsec{{\noexpand\reset@font\noexpand\itshape
               \ifnum #2=1% if a section
                 \@secappcntformat{#1}\relax
               \else
                 \@seccntformat{#1}\relax%
                 \ifnum #2=\thr@@ % if a subsubsection
                    \ifx\apphe@d\@empty%
                        \hspace*{\subsubsectionspaceadjust}% v.2.1.6 OT: correct space for uncaptioned subsubsection
                    \fi%
                 \fi
                 \ifnum #2=\tw@ % if a subsection
                    \if@runonsubsections% v.2.1.6 OT: fix for run-on subsections
                       \ifx\apphe@d\@empty%
                         \hspace*{\subsectionspaceadjust}% v.2.1.6 OT: correct space for uncaptioned subsection
                       \fi%
                    \fi%
                 \fi
               \fi
               }
              }\fi
 \@tempskipa #5\relax
 \ifdim \@tempskipa>\z@
  \begingroup #6\relax
   \@hangfrom{\hskip #3\relax\@svsec}{\interlinepenalty \@M #8\par}
  \endgroup
  \csname #1mark\endcsname{#7}%
%
  \ifnum #2=\@ne
   \addcontentsline{toc}{#1}{\ifnum #2>\c@secnumdepth\else%
    \ifappendix
       \ifoneappendix
        \appendixname% OT v.2.1.6.\enspace #7%
       \else 
        \appendixname~\csname the#1\endcsname% OT v.2.1.6.\enspace #7%
       \fi
% Fix v.2.1.6 OT: omit full stop and \enspace in ToC when there is no caption
       \ifx\apphe@d\@empty\else.\enspace #7\fi%
% End of fix v.2.1.6       
    \else\protect\numberline{\csname the#1\endcsname%
% Fix v.2.1.6 OT: omit full stop in ToC when there is no caption.
    \ifx\apphe@d\@empty\else.\fi}#7\fi% again
    \fi}
  \else
   \addcontentsline{toc}{#1}{\ifnum #2>\c@secnumdepth \else
      \protect\numberline{\csname the#1\endcsname\ifx\apphe@d\@empty\else.\fi}#7\fi}% again
  \fi
%
 \else
  \def\@svsechd{#6\hskip #3\@svsec #8%
          \ifx\emptybracket\contsofeight
            \hskip -0.5em
           \fi
    \csname #1mark\endcsname% add dot
    {#7}\addcontentsline{toc}{#1}{\ifnum #2>\c@secnumdepth\else
      \protect\numberline{\csname the#1\endcsname\ifx\apphe@d\@empty\else.\fi}#7\fi}}
 \fi
 \@xsect{#5}}

\newif\ifappendix
\newif\ifoneappendix
\newcommand\appendixname{Appendix}

\newcommand\oneappendix{\global\oneappendixtrue \appendix\def\thesection{the Appendix}}
\newcommand\appendix{\par
  \@addtoreset{figure}{section}%
  \@addtoreset{table}{section}%
  \setcounter{section}\z@
  \setcounter{equation}\z@
  \def\thesection{\@Alph\c@section}%
  \def\thesubsection{\@Alph\c@section.\@arabic\c@subsection}%
  \def\thesubsubsection{\@Alph\c@section.\@arabic\c@subsubsection}%
  \def\theequation{\@Alph\c@section.\@arabic\c@equation}%
  \def\thefigure{\@Alph\c@section.\@arabic\c@figure}%
  \def\thetable{\@Alph\c@section.\@arabic\c@table}%
  \global\appendixtrue
}

\newlength\@indentskip
\newlength\smallindent
\newlength\@footindent
\newlength\@leftskip
\setlength\@indentskip{3pc}
\setlength\smallindent{\parindent}
\setlength\@footindent{\smallindent}
\setlength\@leftskip{1pc}

\setlength\leftmargini{27.7pt}
% this fits perfectly with default labels e.g. (1)
\setlength\leftmarginii{1.5pc}
\setlength\leftmarginiii{1.5pc}
\setlength\leftmarginiv{1.5pc}
\setlength\leftmarginv{1pc}
\setlength\leftmarginvi{1pc}
\setlength\leftmargin{\leftmargini}
\setlength\labelsep{0.5em}
\setlength\labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}

\newcommand\makeRLlabel[1]{\rlap{{\normalfont\rmfamily #1}}\hss}
\newcommand\makeRRlabel[1]{\hss\llap{{\normalfont\rmfamily #1}}}

\def\@listI{\leftmargin\leftmargini
  \parsep \z@ %\@plus 1\p@ \@minus 1\p@
  \topsep \z@ %\@plus 1\p@ \@minus 1\p@
  \itemsep \z@ %\@plus 1\p@ \@minus 1\p@
  \let\makelabel=\makeRRlabel
}
\let\@listi\@listI
\@listi

\def\@listii{\leftmargin\leftmarginii
  \labelwidth\leftmarginii
  \advance\labelwidth-\labelsep
  \topsep \z@ %\@plus 1\p@ \@minus 1\p@
  \parsep \z@
  \itemsep \parsep
  \let\makelabel\makeRRlabel
}

\def\@listiii{\leftmargin\leftmarginiii
  \labelwidth\leftmarginiii\advance\labelwidth-\labelsep
  \topsep \z@ %\@plus 1\p@ \@minus 1\p@
  \parsep \z@
  \partopsep \z@
  \itemsep \parsep
  \let\makelabel\makeRRlabel
}

\def\@listiv{\leftmargin\leftmarginiv
  \labelwidth\leftmarginiv\advance\labelwidth-\labelsep
  \let\makelabel\makeRRlabel
}

\def\@listv{\leftmargin\leftmarginv
  \labelwidth\leftmarginv\advance\labelwidth-\labelsep
  \let\makelabel\makeRRlabel
}

\def\@listvi{\leftmargin\leftmarginvi
  \labelwidth\leftmarginvi\advance\labelwidth-\labelsep
  \let\makelabel\makeRRlabel
}

%itemize environment modified by OT 14/11/02
\renewenvironment{itemize} % FROM LATEX.LTX
  {\ifnum \@itemdepth >\thr@@ \@toodeep
   \else
     \advance\@itemdepth\@ne
     \edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
     \labelsep .5em \itemindent\z@
     \par
     \expandafter
     \list
       \csname \@itemitem\endcsname
       {\settowidth\labelwidth{%
       \ifcase\@itemdepth\or\labelitemi\or\labelitemii\or\labelitemiii%
         \or\labelitemiv\else\@toodeep\fi}
       \leftmargin\labelwidth \advance\leftmargin\labelsep
       \ifnum\@itemdepth=1\advance\leftmargin\parindent\fi%       
       \let\makelabel\makeRRlabel}%
   \fi}
  {\endlist\@intheoremlikefalse}

\newcommand\labelitemi{\normalfont\rmfamily--}
\newcommand\labelitemii{\hskip 2pt$\m@th\ast$}
\newcommand\labelitemiii{\hskip 2pt$\m@th\cdot$}
\newcommand\labelitemiv{\hskip 2pt$\m@th\cdot$}

% stored indents useful for enumerate and flushenumerate
\newlength\@itemindenti
\newlength\@itemindentii
\newlength\@itemindentiii
\newlength\@itemindentiv

\renewenvironment{enumerate} % FROM LATEX.LTX
  {\ifnum \@enumdepth >\thr@@ \@toodeep\else
     \advance\@enumdepth\@ne
     \edef\@enumctr{enum\romannumeral\the\@enumdepth}%     
   \fi
   \labelsep .5em
   \@ifnextchar [{\@enumeratetwo}{\@enumerateone}}
  {\endlist}% if a new para starts after this, leave a blank line

\def\@enumeratetwo[#1]{
%modified by OT 15/11/02; allows nesting with flushenumerate
  \par
  \expandafter
  \list
    \csname label\@enumctr\endcsname
    {\settowidth\labelwidth{{\normalfont\rmfamily(#1)}}%
     \leftmargin\labelwidth \advance\leftmargin\labelsep
     \usecounter{\@enumctr}%
     \ifcase\@enumdepth\or
       \advance\leftmargin\parindent
       \@itemindenti\z@
       \or
% adjust for parent environment, which may be flushenumerate
       \advance\leftmargin\@itemindenti
       \@itemindentii\z@
       \or
       \advance\leftmargin\@itemindentii
       \@itemindentiii\z@
       \or%
       \advance\leftmargin\@itemindentiii
       \@itemindentiv\z@
     \fi
     \itemindent\z@
     \let\makelabel\makeRRlabel}%
}

\def\@enumerateone{%
%modified by OT 15/11/02; allows nesting with flushenumerate
  \par
  \expandafter
  \list
    \csname label\@enumctr\endcsname
    {\if@intheoremlike
        \settowidth\labelwidth{{\normalfont\rmfamily(%
        \ifcase\@enumdepth\or iii\or b\or 9\or C\else 9\fi)}}
     \else
        \settowidth\labelwidth{{\normalfont\rmfamily(%
        \ifcase\@enumdepth\or 9\or iii\or b\or C\else 9\fi)}}   
     \fi
    \leftmargin\labelwidth \advance\leftmargin\labelsep
    \usecounter{\@enumctr}%
     \ifcase\@enumdepth\or
       \advance\leftmargin\parindent
       \@itemindenti\z@
       \or
% adjust for parent environment, which may be flushenumerate
       \advance\leftmargin\@itemindenti
       \@itemindentii\z@
       \or
       \advance\leftmargin\@itemindentii
       \@itemindentiii\z@
       \or%
       \advance\leftmargin\@itemindentiii
       \@itemindentiv\z@
     \fi
     \itemindent\z@
     \let\makelabel\makeRRlabel}%
}

\newenvironment{flushenumerate}
%created by OT 15/11/02; allows nesting with enumerate
  {\ifnum \@enumdepth >\thr@@ \@toodeep\else
     \advance\@enumdepth\@ne
     \edef\@enumctr{enum\romannumeral\the\@enumdepth}%
   \fi
   \labelsep .5em
   \@ifnextchar [{\@flushenumeratetwo}{\@flushenumerateone}}
  {\endlist}% if a new para starts after this, leave a blank line

\def\@flushenumeratetwo[#1]{
%created by OT 15/11/02; allows nesting with enumerate
  \par
  \expandafter
  \list
    \csname label\@enumctr\endcsname
    {\settowidth\labelwidth{{\normalfont\rmfamily(#1)}}%
    \itemindent\labelwidth \advance\itemindent\labelsep
    \usecounter{\@enumctr}%
       \ifcase\@enumdepth\or
         \leftmargin\z@
         \advance\itemindent\parindent
         \@itemindenti\itemindent
       \or
% adjust for parent environment, which may also be flushenumerate
         \leftmargin\@itemindenti
         \@itemindentii\itemindent
       \or
         \leftmargin\@itemindentii
         \@itemindentiii\itemindent
       \or
         \leftmargin\@itemindentiii
         \@itemindentiv\itemindent
       \fi           
     \let\makelabel\makeRRlabel}%
}

\def\@flushenumerateone{%
%created by OT 15/11/02; allows nesting with enumerate
  \par
  \expandafter
  \list
    \csname label\@enumctr\endcsname
    {\if@intheoremlike
        \settowidth\labelwidth{{\normalfont\rmfamily(%
        \ifcase\@enumdepth\or iii\or b\or 9\or C\else 9\fi)}}
     \else
        \settowidth\labelwidth{{\normalfont\rmfamily(%
        \ifcase\@enumdepth\or 9\or iii\or b\or C\else 9\fi)}}   
     \fi
    \itemindent\labelwidth \advance\itemindent\labelsep
    \usecounter{\@enumctr}%
       \ifcase\@enumdepth\or
         \leftmargin\z@
         \advance\itemindent\parindent
         \@itemindenti\itemindent
       \or
% adjust for parent environment, which may also be flushenumerate
         \leftmargin\@itemindenti
         \@itemindentii\itemindent
       \or
         \leftmargin\@itemindentii
         \@itemindentiii\itemindent
       \or
         \leftmargin\@itemindentiii
         \@itemindentiv\itemindent
       \fi           
     \let\makelabel\makeRRlabel}%
}

\newcommand\labelenumi  {\theenumi}
\newcommand\labelenumii {\theenumii}
\newcommand\labelenumiii{\theenumiii}
\newcommand\labelenumiv {\theenumiv}

\renewcommand\theenumi  {\textup{(\@arabic\c@enumi)}}
\renewcommand\theenumii {\textup{(\@roman\c@enumii)}}
\renewcommand\theenumiii{\textup{(\@alph\c@enumiii)}}
\renewcommand\theenumiv {\textup{(\@Alph\c@enumiv)}}

\renewcommand\p@enumii {\theenumi}
\renewcommand\p@enumiii{\theenumi\theenumii}
\renewcommand\p@enumiv {\p@enumiii\theenumiii}

\newcommand\changeenumer@tes{% for math environments
  \renewcommand\theenumi  {\textup{(\@roman\c@enumi)}}%
  \renewcommand\theenumii {\textup{(\@alph\c@enumii)}}%
  \renewcommand\theenumiii{\textup{(\@arabic\c@enumiii)}}%
  \renewcommand\theenumiv {\textup{(\@Alph\c@enumiv)}}%
}

\newcommand*\descriptionlabel[1]{\hspace\labelsep\normalfont\bfseries #1}

\newenvironment{description}
  {\list{}{\labelwidth\z@ \itemindent-\leftmargin
    \let\makelabel\descriptionlabel}}
  {\endlist}

\newenvironment{unnum}
  {\list{}{\labelwidth\z@
   \leftmargin \parindent
   \itemindent-\parindent}}
  {\endlist}

\newenvironment{verse}
  {\let\\=\@centercr
   \list{}{\itemsep\z@
     \itemindent -\@indentskip
     \listparindent \itemindent
     \rightmargin\leftmargin
     \advance\leftmargin \@indentskip}\item[]}
  {\endlist}

\newenvironment{quotation}
  {\list{}{\listparindent \smallindent
     \itemindent\listparindent
     \leftmargin2.5pc\rightmargin\leftmargin
     \parsep \z@ \@plus 1\p@}\item[]\small\normalfont}
  {\endlist}

\newenvironment{quote}
  {\list{}{\partopsep 3\p@ \@plus 2\p@ \@minus 1\p@ \parsep\z@\leftmargin 30pt%
  \rightmargin\leftmargin\listparindent 7\p@}%
  \addvspace{2\p@}\item[]\small\normalfont\noindent\ignorespaces}
  {\endlist\par}

\newif\ifextraline
\newif\ifobituary
\def\@emptyfootnote{\footnotetext{}} % Change v.2.1.7: default text again empty, as in v.2.1.5

\newcommand\journalfootnotes{% if options blm, jlm, plm are chosen
  \@footnoteone
  \ifobituary\@footnoteobit\fi
  \@footnotetwo
  \ifextraline\@myfootnote\fi%
}

\newcommand\defaultfootnotes{% default
  \@emptyfootnote
  \ifobituary\@footnoteobit\fi
  \@footnotetwo
  \ifextraline\@myfootnote\fi%
}

\newcommand\maketitle{\par
  \begingroup
    \newpage
    \global\@topnum\z@
    \@maketitle\thispagestyle{title}%
    \label{FirstPage}% added v.2.1.6 Alistair Smith
    \setcounter{c@FirstPage}{\value{page}}% added v.2.1.9 OT
    \@thanks%
  \endgroup
  \ifblm\journalfootnotes
    \else\ifjlm\journalfootnotes
      \else\ifplm\journalfootnotes  
        \else\defaultfootnotes
      \fi
    \fi
  \fi
  \setcounter{footnote}\z@
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\maketitle\relax
  \global\let\thanks\relax
  \addvspace{18\p@}%
}

\def\@maketitle{\newpage
  \vspace*{10.5\p@}%
  {\parindent\z@\centering\sloppy%
    {\Large\@title\par}%
    \vspace{24\p@}%
    {\normalsize\fontsize{11}{13}\selectfont%
     \@author\par}%
  \ifdedic@tion
  \vspace{0.5\baselineskip}
    \textit{\@dedication}%
    \par
  \fi}%
}

\newif\ifpaperno
\papernofalse
\newcommand\paperno[1]{\papernotrue\gdef\@paperno{#1}}
\def\@paperno{}

\newcommand{\abstractname}{Abstract}
\newif\iflastp@gedone % added v.2.1.6 OT to stop running head after last page
\lastp@gedonefalse   %  
\newif\if@onlineabstract
\@onlineabstractfalse
\newenvironment{abstract}
  {\if@onlineabstract% do this only if abstract appears at end of paper.
%     current page is the last page of the paper proper
% fix v.2.1.6 OT: ensure correct running head on last page
% and prevent insertion of running head on query page or abstract page.
      \thispagestyle{lmslast}\label{LastPage}\global\lastp@gedonetrue%
% end fix v.2.1.6
      \newpage\thispagestyle{title}\vspace*{10.5\p@}%
      {\parindent\z@\centering\sloppy%
        {\large\normalfont\@title\par}%
      \vspace{24\p@}%
      {\normalsize\normalfont%
      \@author\par}}\ignorespaces%      
      \gdef\abstractname{Abstract for On-Line Publication}
      \vfill
   \fi   
  \par{\centering\normalfont\scshape
   \abstractname\\[4\p@]}
   \list{}{\topsep\z@ \leftmargin12pt\rightmargin12pt \itemindent\z@
   \labelwidth\z@ \labelsep\z@ \listparindent 10pt
   \parindent 10pt}\item
   \if@onlineabstract\normalsize%
   \else\small\fboxsep6pt%
   \fi%
   \ignorespaces}%
  {\endlist
   \if@onlineabstract% do this only if abstract appears at end of paper.
     \vfill
       \ifpaperno
        \vspace{18\p@}{\centering{\LARGE
        \ifplm PLMS \fi
        \ifblm BLMS \fi
        \ifjlm JLMS \fi
        \@paperno\par}}
      \fi%
   \else %normal cases - abstract at the beginning
     \addvspace{18\p@}
   \fi}

\mark{{}{}}

\renewcommand\author{\@ifnextchar [{\@authortwo}{\@authorone}}
\gdef\@author{\mbox{}}

% Fix v.2.1.6 Alistair Smith for author names: ensure uppercase
% Uses 'textcase' package by David Carlisle (included below)
% Modified v.2.1.6 OT: 'and' lowercase on titlepage, uppercase in running header
% Modified v.2.1.6 OT: to allow line breaks by \\ in the author string

%%% OT v.2.1.6: added macros for 'and' and to remove unwanted spaces. 
\def\eat@token#1{}
\def\eat@space{\@ifnextchar\ {\eat@token}{}} % eats any '\ ' space
%%% OT v.2.1.9: revised the following line
\newcommand\titlepage@and{{and} \noexpand\eat@space}% 
\newcommand\runningheader@and{AND \noexpand\eat@space}% 

\def\@authortwo[#1]#2{\gdef\@author{%
\begingroup\def\and{\titlepage@and}\def\\{\break}{#2}\endgroup}%
  \gdef\@shortauthor{\begingroup\def\and{\runningheader@and}\def\\{}\MakeTextUppercase{#1}\endgroup}}

\def\@authorone#1{\gdef\@author{%
\begingroup\def\and{\titlepage@and}\def\\{\break}{#1}\endgroup}%
  \gdef\@shortauthor{\begingroup\def\and{\runningheader@and}\def\\{}\MakeTextUppercase{#1}\endgroup}}

\newcommand\shortauthor[1]{%
  \gdef\@shortauthor{\begingroup\def\and{\runningheader@and}\def\\{}\MakeTextUppercase{#1}\endgroup}}
\gdef\@shortauthor{\@author}
% end Fix v.2.1.6
%

\newif\ifdedic@tion
\newcommand\dedication[1]{\gdef\@dedication{#1}\dedic@tiontrue}
\gdef\@dedication{}


\renewcommand\title{\@ifnextchar [{\@titletwo}{\@titleone}}
\gdef\@title{\mbox{}}

% Fix v.2.1.6 Alistair Smith for title: ensure text uppercase, maths mixed case
% Uses 'textcase' package by David Carlisle (included below)
% Modified v.2.1.6 OT: to allow line breaks by \\ in the title

\def\@titleone#1{\gdef\@title{\begingroup\def\\{\break}{#1}\endgroup}%
  \gdef\@shorttitle{\begingroup\def\\{}\MakeTextUppercase{#1}\endgroup}}

\def\@titletwo[#1]#2{\gdef\@title{\begingroup\def\\{\break}{#2}\endgroup}%
  \gdef\@shorttitle{\begingroup\def\\{}\MakeTextUppercase{#1}\endgroup}}

\newcommand\shorttitle[1]{\gdef\@shorttitle{\begingroup\def\\{}\MakeTextUppercase{#1}\endgroup}}
\gdef\@shorttitle{\@title}
% end of fix v.2.1.6 Alistair Smith
%

\newcommand\jlmseries[1]{\gdef\@jlmseries{#1}}
\gdef\@jlmseries{(2)}

\newcommand\plmseries[1]{\gdef\@plmseries{#1}}
\gdef\@plmseries{(3)}

%Added v.2.1.6 OT
\newcommand\issn[1]{\gdef\@issn{#1}}
\ifblm
   \gdef\@issn{00246093}
\else
   \ifjlm
     \gdef\@issn{00246107}
   \else
     \ifplm
       \gdef\@issn{00246115}
     \fi
   \fi
\fi
% end v.2.1.6

\newcommand\volume[1]{\gdef\@volume{#1}}
\gdef\@volume{00}

%Added v.2.1.6 Alistair Smith
\def\@startpage{\pageref{FirstPage}}
\def\@endpage{\pageref{LastPage}}
\def\startpage#1{\gdef\@startpage{#1}\c@page#1}
\def\endpage#1{\gdef\@endpage{#1}}

\newcommand\pagerange[1]{\gdef\@pagerange{#1}}
\gdef\@pagerange{\@startpage--\@endpage}
% end v.2.1.6 addition
%

\newcommand\copyedit[1]{\gdef\@copyedit{\raisebox{12pt}[6pt][6pt]{\hspace*{-85pt}\fontsize{8}{9}\selectfont Copy Edited by: #1}}}
\gdef\@copyedit{}

\newcommand\pubyear[1]{\def\@pubyear{#1}}
\edef\@pubyear{\number\year}

% upright integrals

%% \int         will be upright (display mode)
%% \smallint    will be upright (text mode)

%% \oldint      will be slanted (display/text mode)
%% (\oldsmallint available, but not necessary)

\let\oldintop\intop
\def\oldint{\oldintop\nolimits}

\let\oldsmallint\smallint

\DeclareSymbolFont{EUEX}{U}{euex}{m}{n}

\DeclareSymbolFont{euexlargesymbols}{U}{euex}{m}{n}
\DeclareMathSymbol{\intop}{\mathop}{euexlargesymbols}{"52}
     \def\int{\intop\nolimits}

\DeclareSymbolFont{euexsymbols}     {U}{euex}{m}{n}
\DeclareMathSymbol{\smallint}{\mathop}{euexsymbols}{"52}

% Fix v.2.1.6 Alistair Smith: uppercase footnotesize text used for running heads
%\def\ps@headings{\let\@mkboth\markboth
%  \def\@oddhead{\frenchspacing%
%  \footnotesize\normalfont
%        \hss\@shorttitle\hss\llap{\normalsize\normalfont\rmfamily\thepage}}%
%  \def\@evenhead{\frenchspacing%
%  \normalfont
%        \rlap{\normalsize\normalfont\rmfamily\thepage}\footnotesize\hss\@shortauthor\hss}%
%  \let\@oddfoot\@empty
%  \let\@evenfoot\@empty
%  \def\sectionmark##1{\markboth{##1}{}}%
%  \def\subsectionmark##1{\markright{##1}}%
%}

%%updated on 22/8/06 by DEVI


\def\ps@headings{\let\@mkboth\markboth
  \def\@oddhead{\frenchspacing%
  \footnotesize\normalfont
        \hss\@shorttitle\hss\llap{\normalsize\normalfont\rmfamily \pgnum}}%
  \def\@evenhead{\frenchspacing%
  \normalfont
        \rlap{\normalsize\normalfont\rmfamily \pgnum}\footnotesize\hss\@shortauthor\hss}%
  \let\@oddfoot\@empty
  \let\@evenfoot\@empty
  \def\sectionmark##1{\markboth{##1}{}}%
  \def\subsectionmark##1{\markright{##1}}%
}
% end fix v.2.1.6.
%

\def\ps@myheadings{\ps@headings}

\def\ps@title{\leftskip\z@\let\@mkboth\@gobbletwo\vfuzz=5\p@
%  \def\@oddhead{\@journal}%
%%%%%%%%%%%
%\iffinal
  \def\@oddhead{\@journal}%
  \def\@evenhead{\@journal}
%\else
%  \def\@oddhead{\vbox{\@journal}
%\vbox{\@copyedit}}%
%  \def\@evenhead{\vbox{\@journal}
%\vbox{\@copyedit}}
%\fi
%%%%%%%%%%%
%  \def\@evenhead{\@journal}%
  \def\@oddfoot{}%
  \def\@evenfoot{}%
  \def\sectionmark##1{}%
  \def\subsectionmark##1{}%
  \let\footnoterule\title@footnoterule% \global removed
  \let\@makefntext\title@makefntext% \global removed
}

%27/1/06 Revised code for Fix 3

\def\ps@lmslast{%
  \def\@oddhead{\frenchspacing\footnotesize\normalfont
        \hss\@shorttitle\hss\llap{\normalsize\normalfont\rmfamily\pgnum}}%%
   \def\@evenhead{\frenchspacing\footnotesize\normalfont
%        \rlap{\normalsize\normalfont\rmfamily\pgnum}\hss\@shorttitle\hss}%
        \rlap{\normalsize\normalfont\rmfamily\pgnum}\hss\@shorttitle\hss}%
  \let\@oddfoot\@empty%
  \let\@evenfoot\@empty}

%% Fix v.2.1.6 Alistair Smith: ensure title in running header on last page
%\def\ps@lmslast{%
%  \def\@oddhead{\frenchspacing\footnotesize\normalfont
%        \hss\@shorttitle\hss\llap{\normalsize\normalfont\rmfamily\thepage}}%%
%  \let\@evenhead\@oddhead
%  \let\@oddfoot\@empty%
%  \let\@evenfoot\@empty}
  
\AtEndDocument{% 
\iflastp@gedone\else%
\ifnum\value{page}>\value{c@FirstPage}\thispagestyle{lmslast}\fi\label{LastPage}\fi} 
% OT modified v.2.1.9 this prevents running header on titlepage of 1-page paper
% end fix v.2.1.6
%

\newcommand\classno[1]{\def\@classno{#1}}
\def\@classno{00000}

\newcommand\recdate[1]{\def\@recdate{#1}}
\def\@recdate{}

\newcommand\obit{$^\dagger\mskip 3mu$}

\newcommand\obituary[1]{\obituarytrue\def\@obit{\llap{$^\dagger$\hfil}#1}}
\def\@obit{}

\newcommand\extraline[1]{\extralinetrue\def\@extraline{#1}}
\def\@extraline{}

% A.W. redefined affiliationone and ...three to move across to align with 
% refs and decrease size of measure accordingly 

\newcommand\affiliationone[1]{%
  \@onlineabstracttrue % make special abstract if it appears last in paper
  \removelastskip\addvspace{18\p@}\par\noindent
  \addresssize\normalfont\itshape\hspace*{20pt}%
  \parbox[t]{180\p@}%
  {\raggedright\parindent -10pt\@affiliationone{#1}}\hspace*{23pt}%
  \normalfont\upshape\ignorespaces}

\newcommand\affiliationtwo[1]{%
  \addresssize
  \normalfont\itshape\parbox[t]{180pt}%
  {\raggedright\parindent -10pt\@affiliationtwo{#1}}\hspace*{10pt}%
  \normalfont\upshape\ignorespaces}

\newcommand\affiliationthree[1]{%
  \removelastskip\vspace{1.5\baselineskip}\par\noindent
  \addresssize
  \normalfont\itshape\hspace*{20pt}%
  \parbox[t]{180\p@}%
  {\raggedright\parindent -10pt\@affiliationthree{#1}}\hspace*{23pt}%
  \normalfont\upshape\ignorespaces}

\newcommand\affiliationfour[1]{%
  \addresssize
  \normalfont\itshape\parbox[t]{180pt}%
  {\raggedright\parindent -10pt\@affiliationfour{#1}}\hspace*{10pt}%
  \normalfont\upshape\ignorespaces}

\let\@affiliationone\@empty
\let\@affiliationtwo\@empty
\let\@affiliationthree\@empty
\let\@affiliationfour\@empty

\newcommand\email[1]{\nobreak\vspace*{.5\baselineskip}
\par\textup{#1}\ignorespaces}

\def\@footnoteone{\footnotetext{Received \@recdate.}}
\def\@footnoteobit{\footnotetext{\@obit}}
\def\@footnotetwo{\footnotetext{2000 {\normalfont\itshape
  Mathematics Subject Classification\/} \@classno.}}
\def\@myfootnote{\footnotetext{\@extraline}}

\newcommand\doi[1]{\gdef\@doi{10.1112/#1}}

% OT modified v.2.1.8
\ifprod
   \gdef\@doi{10.1112/%
   \ifblm blms/bd...?\fi%
   \ifjlm jlms/jd...?\fi%
   \ifplm plms/pd...?\fi%
}
\else
   \gdef\@doi{10.1112/0000/000000}
\fi
  

\newcommand\journal[1]{\gdef\@journal{#1}}

\newcommand\titlep@gedetails{%
  {\itshape London Math.\ Soc.\/} 
  \ifjlm\@jlmseries~\fi
  \ifplm\@plmseries~\fi
  \@volume \ (\@pubyear)\ \@pagerange\quad
  \LMScopyright\ \@pubyear\ London Mathematical Society\\}

\gdef\@journal{%
  \vbox to 5.5\p@{\noindent
    \parbox[t]{\textwidth}{\raggedleft\normalfont\footnotesize\baselineskip 9\p@
     \ifblm {\itshape Bull.}\ \titlep@gedetails
       \else\ifjlm {\itshape J.}\ \titlep@gedetails
         \else\ifplm {\itshape Proc.}\ \titlep@gedetails
          \else {\itshape Submitted exclusively to the London Mathematical 
                  Society\\}  
        \fi
      \fi
    \fi%
   doi:\@doi}
  \vss}%
}

\newif\if@intheoremlike 

\def\@xnthm#1#2[#3]{\expandafter\@ifdefinable\csname #1\endcsname
  {\@definecounter{#1}\@addtoreset{#1}{#3}%
   \expandafter\xdef\csname the#1\endcsname{\expandafter\noexpand
   \csname the#3\endcsname \@thmcountersep \@thmcounter{#1}}%
   \global\@namedef{#1}{\@thm{#1}{#2}}%
   \global\@namedef{#1*}{\@thmstar{#1}{#2}}%
   \global\@namedef{end#1}{\@endtheorem}%
   \global\@namedef{end#1*}{\@endthmstar}}%
}

\def\@ynthm#1#2{\expandafter\@ifdefinable\csname #1\endcsname
  {\@definecounter{#1}%
   \expandafter\xdef\csname the#1\endcsname{\@thmcounter{#1}}%
   \global\@namedef{#1}{\@thm{#1}{#2}}%
   \global\@namedef{#1*}{\@thmstar{#1}{#2}}%
   \global\@namedef{end#1}{\@endtheorem}%
   \global\@namedef{end#1*}{\@endthmstar}}%
}

\def\@othm#1[#2]#3{\expandafter\@ifdefinable\csname #1\endcsname
  {\global\@namedef{the#1}{\@nameuse{the#2}}%
  \global\@namedef{#1}{\@thm{#2}{#3}}%
  \global\@namedef{#1*}{\@thmstar{#2}{#3}}%
  \global\@namedef{end#1}{\@endtheorem}%
  \global\@namedef{end#1*}{\@endthmstar}}%
}

\def\@thm#1#2{\refstepcounter{#1}\@ifnextchar[%
  {\@ythm{#1}{#2}}{\@xthm{#1}{#2}}}
\def\@xthm#1#2{\@begintheorem{#2}{\csname the#1\endcsname}\ignorespaces}
\def\@ythm#1#2[#3]{\@opargbegintheorem{#2}{\csname the#1\endcsname}{#3}%
  \ignorespaces}

%\@begintheorem modified by OT on 14/11/02
\def\@begintheorem#1#2{\changeenumer@tes\@intheoremliketrue
  \list{}{\topsep\doublefull@line \leftmargin \z@
    \itemindent\parindent \labelsep .5em\let\makelabel=\makeRRlabel
\listparindent\parindent\settowidth\labelwidth{{\normalfont\rmfamily(iii)}}}%
  \item{\normalfont\scshape #1\ #2.}\advance\itemindent\labelsep%
  \advance\itemindent\labelwidth%
  \hskip 1em\normalfont\itshape}

%\@opargbegintheorem modified by OT on 14/11/02
\def\@opargbegintheorem#1#2#3{\changeenumer@tes\@intheoremliketrue
  \list{}{\topsep\doublefull@line \leftmargin \z@
    \itemindent\parindent \labelsep .5em\let\makelabel=\makeRRlabel
\listparindent\parindent\settowidth\labelwidth{{\normalfont\rmfamily(iii)}}}%
  \item{\normalfont\scshape #1\ #2\ {\normalfont\rmfamily #3.}}%
  \advance\itemindent\labelsep%
  \advance\itemindent\labelwidth%
  \hskip 1em\normalfont\itshape}

\def\@endtheorem{\endlist\par\@endpefalse\@intheoremlikefalse}
\def\@thmcounter#1{\noexpand\arabic{#1}}
\def\@thmcountersep{.}

\def\@thmstar#1#2{\@ifnextchar[{\@ythmstar{#1}{#2}}{\@xthmstar{#1}{#2}}}
\def\@xthmstar#1#2{%
  \@beginthmstar{#2}{\csname the#1\endcsname}\ignorespaces}
\def\@ythmstar#1#2[#3]{%
  \@opargbeginthmstar{#2}{\csname the#1\endcsname}{#3}\ignorespaces}

\def\@thmstarcounter#1{{}}
\def\@thmstarcountersep{{}}

%\@beginthmstar modified by OT on 14/11/02
\def\@beginthmstar#1#2{\changeenumer@tes\@intheoremliketrue
  \list{}{\topsep\full@line \leftmargin \z@
    \itemindent\parindent \labelsep .5em\let\makelabel=\makeRRlabel
\listparindent\parindent%
  \settowidth\labelwidth{{\normalfont\rmfamily(iii)}}}%
  \item{\normalfont\scshape #1.}\advance\itemindent\labelsep%
  \advance\itemindent\labelwidth%
  \hskip 1em\normalfont\itshape}

%\@opargbeginthmstar modified by OT on 14/11/02
\def\@opargbeginthmstar#1#2#3{\changeenumer@tes\@intheoremliketrue
  \list{}{\topsep\full@line \leftmargin \z@
    \itemindent\parindent \labelsep .5em\let\makelabel=\makeRRlabel
\listparindent\parindent
\settowidth\labelwidth{{\normalfont\rmfamily(iii)}}}%
  \item{\normalfont\scshape #1\ {\normalfont\rmfamily #3.}}%
  \advance\itemindent\labelsep%
  \advance\itemindent\labelwidth%
  \hskip 1em\normalfont\itshape}

\def\@endthmstar{\endlist\par\@endpefalse\@intheoremlikefalse}

\newcommand\newnumbered[1]{\@ifnextchar[{\@oexmpl{#1}}{\@nexmpl{#1}}}

\def\@nexmpl#1#2{\@ifnextchar[{\@xnexmpl{#1}{#2}}{\@ynexmpl{#1}{#2}}}

\def\@xnexmpl#1#2[#3]{\expandafter\@ifdefinable\csname #1\endcsname
  {\@definecounter{#1}\@addtoreset{#1}{#3}%
   \expandafter\xdef\csname the#1\endcsname{\expandafter\noexpand
   \csname the#3\endcsname \@exmplcountersep \@exmplcounter{#1}}%
   \global\@namedef{#1}{\@exmpl{#1}{#2}}%
   \global\@namedef{#1*}{\@exmplstar{#1}{#2}}%
   \global\@namedef{end#1}{\@endexample}%
   \global\@namedef{end#1*}{\@endexmplstar}}%
}

\def\@ynexmpl#1#2{\expandafter\@ifdefinable\csname #1\endcsname
  {\@definecounter{#1}%
   \expandafter\xdef\csname the#1\endcsname{\@exmplcounter{#1}}%
   \global\@namedef{#1}{\@exmpl{#1}{#2}}%
   \global\@namedef{#1*}{\@exmplstar{#1}{#2}}%
   \global\@namedef{end#1}{\@endexample}%
   \global\@namedef{end#1*}{\@endexmplstar}}%
}

\def\@oexmpl#1[#2]#3{\expandafter\@ifdefinable\csname #1\endcsname
  {\global\@namedef{the#1}{\@nameuse{the#2}}%
   \global\@namedef{#1}{\@exmpl{#2}{#3}}%
   \global\@namedef{#1*}{\@exmplstar{#2}{#3}}%
   \global\@namedef{end#1}{\@endexample}
   \global\@namedef{end#1*}{\@endexmplstar}}%
}

\def\@exmpl#1#2{\refstepcounter{#1}%
  \@ifnextchar[{\@yexmpl{#1}{#2}}{\@xexmpl{#1}{#2}}%
}

\def\@xexmpl#1#2{\@beginexample{#2}{\csname the#1\endcsname}\ignorespaces}
\def\@yexmpl#1#2[#3]{\@opargbeginexample{#2}{\csname the#1\endcsname}{#3}%
  \ignorespaces}

% \@beginexample modified by OT 13/11/02
\def\@beginexample#1#2{\changeenumer@tes\@intheoremliketrue
  \list{}{\topsep\doublefull@line \leftmargin \z@
    \itemindent\parindent \labelsep .5em
\listparindent\parindent\settowidth\labelwidth{{\normalfont\rmfamily(iii)}}}%
  \item{\normalfont\scshape #1\ #2.}\advance\itemindent\labelsep%
  \advance\itemindent\labelwidth%
  \hskip 1em\normalfont\rmfamily}

% \@opargbeginexample modified by OT 13/11/02
\def\@opargbeginexample#1#2#3{\changeenumer@tes\@intheoremliketrue
  \list{}{\topsep\full@line \leftmargin \z@
    \itemindent\parindent \labelsep .5em
\listparindent\parindent
\settowidth\labelwidth{{\normalfont\rmfamily(iii)}}}%%
  \item{\normalfont\scshape #1\ #2\ {\normalfont\rmfamily #3.}}%
  \advance\itemindent\labelsep%
  \advance\itemindent\labelwidth%
  \hskip 1em\normalfont\rmfamily}

\def\@endexample{\endlist\par\@endpefalse\@intheoremlikefalse}
\def\@exmplcounter#1{\noexpand\arabic{#1}}
\def\@exmplcountersep{.}

\def\@exmplstar#1#2{\@ifnextchar[%
  {\@yexmplstar{#1}{#2}}{\@xexmplstar{#1}{#2}}}

\def\@xexmplstar#1#2{%
  \@beginexmplstar{#2}{\csname the#1\endcsname}\ignorespaces}

\def\@yexmplstar#1#2[#3]{\@opargbeginexmplstar{#2}%
  {\csname the#1\endcsname}{#3}\ignorespaces}

\def\@exmplstarcounter#1{{}}
\def\@exmplstarcountersep{{}}

%\@beginexmplstar modified by OT 13/11/02
\def\@beginexmplstar#1#2{\changeenumer@tes\@intheoremliketrue
  \list{}{\topsep\full@line \leftmargin \z@
    \itemindent\parindent \labelsep .5em
\listparindent\parindent
\settowidth\labelwidth{{\normalfont\rmfamily(iii)}}}%
  \item{\normalfont\scshape #1.}\advance\itemindent\labelsep%
  \advance\itemindent\labelwidth%
  \hskip 1em\normalfont\rmfamily}

%\@opargbeginexmplstar modified by OT 13/11/02
\def\@opargbeginexmplstar#1#2#3{\changeenumer@tes\@intheoremliketrue
  \list{}{\topsep\full@line \leftmargin \z@
    \itemindent\parindent \labelsep .5em
\listparindent\parindent
\settowidth\labelwidth{{\normalfont\rmfamily(iii)}}}%
  \item{\normalfont\scshape #1\ {\normalfont\rmfamily #3.}}%
  \advance\itemindent\labelsep%
  \advance\itemindent\labelwidth%
  \hskip 1em\normalfont\rmfamily}

\def\@endexmplstar{\endlist\par\@endpefalse\@intheoremlikefalse}

\newcommand\newunnumbered[1]{\@ifnextchar[{\@oack{#1}}{\@nack{#1}}}

\def\@nack#1#2{\@ifnextchar[{\@xnack{#1}{#2}}{\@ynack{#1}{#2}}}

\def\@xnack#1#2[#3]{\expandafter\@ifdefinable\csname #1\endcsname
  {\global\@namedef{#1}{\@ack{#1}{#2}}\global\@namedef{end#1}{\@endack}}%
}

\def\@ynack#1#2{\expandafter\@ifdefinable\csname #1\endcsname
  {\global\@namedef{#1}{\@ack{#1}{#2}}\global\@namedef{end#1}{\@endack}}%
}

\def\@oack#1[#2]#3{\expandafter\@ifdefinable\csname #1\endcsname
  {\global\@namedef{the#1}{\@nameuse{the#2}}%
  \global\@namedef{#1}{\@ack{#2}{#3}}%
  \global\@namedef{end#1}{\@endack}}%
}

\def\@ack#1#2{\@ifnextchar[{\@yack{#1}{#2}}{\@xack{#1}{#2}}}
\def\@xack#1#2{\@beginack{#2}{\csname the#1\endcsname}\ignorespaces}
\def\@yack#1#2[#3]{\@opargbeginack{#2}{\csname the#1\endcsname}{#3}%
  \ignorespaces}

\def\@ackcounter#1{{}}
\def\@ackcountersep{{}}

%\@beginack environment modified by OT 13/11/02
\def\@beginack#1#2{\changeenumer@tes\@intheoremliketrue
  \list{}{\topsep\full@line \leftmargin \z@
    \itemindent\parindent \labelsep .5em
\listparindent\parindent
\settowidth\labelwidth{{\normalfont\rmfamily(iii)}}}%
  \item{\normalfont\scshape #1.}\advance\itemindent\labelsep%
  \advance\itemindent\labelwidth%
  \hskip 1em\normalfont\rmfamily}

%\@opargbeginack environment modified by OT 13/11/02
\def\@opargbeginack#1#2#3{\changeenumer@tes\@intheoremliketrue
  \list{}{\topsep\full@line \leftmargin\z@
  \itemindent\parindent \labelsep .5em
  \listparindent\parindent
  \settowidth\labelwidth{{\normalfont\rmfamily(iii)}}}%
  \item{\normalfont\scshape #1\ {\normalfont\rmfamily #3.}}%
  \advance\itemindent\labelsep\advance\itemindent\labelwidth%
  \hskip 1em\normalfont\rmfamily}

\def\@endack{\endlist\par\@endpefalse\@intheoremlikefalse}

\let\cdots\ldots 

\newsavebox{\proofsavebox}
\sbox{\proofsavebox}
    {\unitlength 1pt\begin{picture}(6.5,6.5)%
     \put(0,0){\framebox(6.5,6.5){}}\end{picture}}
\newcommand\proofbox{\usebox{\proofsavebox}\relax}

\newcommand\proofname{Proof} %proof environment modified OT 12/11/02
\newenvironment{proof}
  {\changeenumer@tes\@intheoremliketrue\@ifnextchar[{\@oprf}{\@nprf}}
  {\hspace*{\fill}\proofbox\endlist\par\@endpefalse\@intheoremlikefalse}

\newenvironment{proof*} %proof* environment modified OT 12/11/02
  {\changeenumer@tes\@intheoremliketrue\@ifnextchar[{\@oprf}{\@nprf}}
  {\endlist\par\@endpefalse\@intheoremlikefalse}

\def\@nprf{% nprf environment modified OT 12/11/02
  \list{}{\topsep \full@line \leftmargin \z@
  \itemindent\parindent \labelsep .5em 
  \listparindent\parindent
  \settowidth\labelwidth{{\normalfont\rmfamily(iii)}}}%
  \item{\normalfont\itshape\proofname.}\advance\itemindent\labelsep%
  \advance\itemindent\labelwidth%
  \hskip 1em\normalfont\rmfamily\ignorespaces}

\def\@oprf[#1]{% oprf environment modified OT 12/11/02
  \list{}{\topsep \full@line \leftmargin \z@
  \itemindent\parindent \labelsep .5em
  \listparindent\parindent
  \settowidth\labelwidth{{\normalfont\rmfamily(iii)}}}%
  \item{\normalfont\itshape\proofname\ #1.}%
  \advance\itemindent\labelsep%
  \advance\itemindent\labelwidth\hskip 1em%
  \normalfont\rmfamily\ignorespaces}

% code for raising proofboxes
\newcommand\singlebox{\hskip10000pt minus 1fil\relax} 
\newcommand\esinglebox{\hskip10000pt minus 1fil \llap{\proofbox}}

\newcommand\multbox{\multboxtrue}
\newcommand\emultbox{\multboxfalse}

\newif\ifmultbox

\def\@@eqncr{\let\reserved@a\relax
    \ifcase\@eqcnt \def\reserved@a{& & &}\or \def\reserved@a{& &}%
     \or \def\reserved@a{&}\else
       \let\reserved@a\@empty
       \@latex@error{Too many columns in eqnarray environment}\@ehc\fi
     \reserved@a 
     \if@eqnsw
       \ifmultbox
         \proofbox%
       \else
         \@eqnnum\stepcounter{equation}%
       \fi
    \fi
     \global\@eqnswtrue\global\@eqcnt\z@\cr}

\newcommand\noteinproofname{Note added in proof}
\newenvironment{noteinproof}[1]
  {\list{}{\topsep \full@line \leftmargin \z@
     \itemindent\parindent \labelsep 1em\advance \itemindent\labelsep
     \labelwidth\z@ \listparindent\parindent
     \normalfont}%
   \item[{\normalfont\itshape\noteinproofname #1.}]\ignorespaces}
  {\endlist\par\@endpefalse%
  }

\newenvironment{titlepage}
  {\if@twocolumn
     \@restonecoltrue\onecolumn
   \else
     \@restonecolfalse\newpage
   \fi
   \thispagestyle{title}%
   \setcounter{page}\z@}
  {\global\let\@makefntext\normal@makefntext
   \if@restonecol\twocolumn \else \newpage \fi}

\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{12\p@}%{6\p@} % changed v.2.1.6
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{1.5\p@}

\setlength\tabbingsep{\labelsep}
\setlength{\skip\@mpfootins}{\skip\footins}

\setlength\fboxsep{3\p@}
\setlength\fboxrule{\arrayrulewidth}

\setcounter{secnumdepth}{3}

\newcounter{part}
\newcounter{section}
\newcounter{subsection}[section]
\newcounter{subsubsection}[subsection]
\newcounter{paragraph}[subsubsection]
\newcounter{subparagraph}[paragraph]
\renewcommand\thepart          {\@Roman\c@part}
\renewcommand\thesection       {\@arabic\c@section}
\renewcommand\thesubsection    {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection {\thesubsection.\@arabic\c@subsubsection}
\renewcommand\theparagraph     {\thesubsubsection.\@arabic\c@paragraph}
\renewcommand\thesubparagraph  {\theparagraph.\@arabic\c@subparagraph}

\newcommand\@pnumwidth{11.5pt}% Fix v.2.1.6: this value modified
%\newcommand\@pnumwidth{13.5pt}% 1.5em=13.5pt at 9pt % 
\newcommand\@tocrmarg {22.5pt}% 2.5em=22.5pt at 9pt
\newcommand\@dotsep{15}
\setcounter{tocdepth}{1}

\def\@dottedtocline#1#2#3#4#5{% FROM LATEX.LTX
  \small
  \ifnum #1>\c@tocdepth \else
    \vskip \z@ \@plus.2\p@
    {\leftskip #2\relax \rightskip \@tocrmarg %\parfillskip -\rightskip
     \parfillskip -2.5pt% to give 20pt \rightskip 
     \parindent #2\relax\@afterindenttrue
     \interlinepenalty\@M
     \leavevmode
     \@tempdima #3\relax
     \advance\leftskip \@tempdima \null\hskip -\leftskip
     {#4}\nobreak
     \leaders\hbox{$\m@th
        \mkern \@dotsep mu\hbox{\tiny .}\mkern \@dotsep
        mu$}\hfill
     \nobreak
     \hb@xt@\@pnumwidth{\hfil\normalfont \normalcolor #5}%
     \par}%
  \fi
}

\newcommand\contentsname{Contents}

\newcommand\tableofcontents{%
  \@restonecolfalse
  \if@twocolumn\@restonecoltrue\onecolumn\fi
  \section*{\contentsname}%
  \@starttoc{toc}%
  \if@restonecol\twocolumn\fi
  \par\addvspace{\full@line}%
}

\newcommand\guidetableofcontents{%
  \@restonecolfalse
  \if@twocolumn\@restonecoltrue\onecolumn\fi
  \section*{\contentsname\\[0.5\baselineskip]
    \footnotesize\textit{Note that authors are not asked to include a 
    table of contents in their articles.\\ This is for reference only.}}%
  \@starttoc{toc}%
  \if@restonecol\twocolumn\fi
  \par\addvspace{\full@line}%
}

\newcommand*\l@part[2]{%
  \addpenalty{-\@highpenalty}%
  \addvspace{\baselineskip}%
  \begingroup
    \parindent \z@ \rightskip \@pnumwidth
    \parfillskip -\@pnumwidth
    \rightskip=33.5pt%
    {\small\normalfont\rmfamily
     \leavevmode
     \hspace*{33.5pt}%
     {\rm #1}\hfil \hb@xt@\@pnumwidth{\hss {\rm #2}}}\par
     \nobreak
    \global\@nobreaktrue
    \everypar{\global\@nobreakfalse\everypar{}}%
  \endgroup
}

%NB: class file uses \l@section for part toc entries aswell
\newcommand*\l@section[2]{%
  \addpenalty{\@secpenalty}%
  \@tempdima 13.5pt% (equiv 1.5em at 9pt)
  \begingroup
    \parindent \z@ \rightskip \@pnumwidth
    \parfillskip -\@pnumwidth
    \small\normalfont\rmfamily\leavevmode
    \advance\leftskip\@tempdima
    \hskip -\leftskip
    \leftskip=33.5pt\rightskip=33.5pt% added 24-jul-02
% #1\nobreak\hfil\nobreak\hb@xt@\@pnumwidth{\hss #2}\par % replaced with next 3 lines
% Fix v.2.1.6 Alistair Smith; added these lines to give ToC leader dots for parts and sections
    #1\nobreak\leaders\hbox{$\m@th
        \mkern \@dotsep mu\hbox{\tiny .}\mkern \@dotsep
        mu$}\hfill\nobreak\hb@xt@\@pnumwidth{\hss #2}\par
% together with this fix, \@pnumwidth has also been redefined
% end v.2.1.6 fix
      \endgroup
}


\newcommand*\l@subsection{\@dottedtocline{2}{33.5pt}{20pt}}

% the following not used for LMS
\newcommand*\l@subsubsection{\@dottedtocline{3}{3.8em}{3.2em}}
\newcommand*\l@paragraph{\@dottedtocline{4}{7.0em}{4.1em}}
\newcommand*\l@subparagraph{\@dottedtocline{5}{10em}{5em}}

\newcommand\listfigurename{List of Figures}

\newcommand\listoffigures{%
  \@restonecolfalse
  \if@twocolumn\@restonecoltrue\onecolumn\fi
  \section*{\listfigurename\@mkboth{\listfigurename}{\listfigurename}}%
  \@starttoc{lof}%
  \if@restonecol\twocolumn\fi
}

\newcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}

\newcommand\listtablename{List of Tables}

\newcommand\listoftables{%
  \@restonecolfalse
  \if@twocolumn\@restonecoltrue\onecolumn\fi
  \section*{\listtablename\@mkboth{\listtablename}{\listtablename}}%
  \@starttoc{lot}%
  \if@restonecol\twocolumn\fi
}

\let\l@table\l@figure

\def\@cite#1#2{{\if@tempswa #2\else [#1]\fi}}% FROM LATEX.LTX

\let\@internalcite\cite
\def\cite{\def\@citeseppen{-1000}%
    \def\@cite##1##2{[{\normalfont\bfseries ##1}\if@tempswa , ##2\fi]}%
    \@internalcite}
\def\citeNP{\def\@citeseppen{-1000}%
    \def\@cite##1##2{{\normalfont\bfseries ##1}\if@tempswa , ##2\fi}%
    \@internalcite}
% don't box citations, separate with ; and a space
% also, make the penalty between citations negative: 
% a good place to break.
\def\@citex[#1]#2{%
\if@filesw\immediate\write\@auxout{\string\citation{#2}}\fi%
  \def\@citea{}\@cite{\@for\@citeb:=#2\do%
    {\@citea\def\@citea{{\normalfont\rmfamily, }}\@ifundefined% by Young
       {b@\@citeb}{{\bf ?}%
       \@warning{Citation `\@citeb' on page \thepage \space undefined}}%
{\csname b@\@citeb\endcsname}}}{#1}}%

\newcommand\refname{References}
\newlength\@reflabellength % OT 15/11/02

% entries are all based on width of '99' !!!
\newenvironment{thebibliography}[1]
  {\section*{\refname}%
   \addcontentsline{toc}{section}{\refname}%
   \list{{\normalfont\bfseries \@arabic\c@enumiv.\enskip}}
%     {\setbox\@tempboxa\hbox{#1.\enskip}%
      {\setbox\@tempboxa\hbox{99.\enskip}%
      \labelwidth=\wd\@tempboxa
      \labelsep \z@
      \leftmargin 18\p@
      \itemsep \z@
      \itemindent \z@
      \advance\itemindent -\leftmargin
      \advance\itemindent \labelwidth
      \usecounter{enumiv}%
      \let\p@enumiv\@empty
      \renewcommand\theenumiv{\@arabic\c@enumiv}%
      \let\makelabel=\makeRRlabel}%
   \footnotesize\normalfont \frenchspacing \parindent\z@
   \parskip\z@ \@plus .1\p@\relax
   \sloppy\clubpenalty 4000\widowpenalty 4000
   \sfcode`\.\@m}
  {\def\@noitemerr
   {\@latex@warning{Empty `thebibliography' environment}}%
   \endlist%
   \@onlineabstracttrue% make special abstract if it appears last in paper
}

\newcommand\bibname{\def\and{{\normalfont\rmfamily and }}%
                    \normalfont\scshape}%
\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\renewcommand\@biblabel[1]{\normalfont\bfseries #1\ }% FROM LATEX.LTX

\newif\if@restonecol
\newcommand\indexname{Index}

\newenvironment{theindex}
  {\section*{\indexname}%
   \addcontentsline{toc}{section}{\indexname}%
   \footnotesize\normalfont
   \parindent\z@
   \parskip\z@ \@plus .1\p@\relax
   \let\item\@idxitem}
  {\if@restonecol\onecolumn\else\clearpage\fi}

\newcommand\@idxitem{\par\hangindent 1pc}
\newcommand\subitem {\u@idxitem \hspace*{1pc}}
\newcommand\subsubitem{\@idxitem \hspace*{1pc}}
\newcommand\indexspace{\par\vskip\baselineskip \relax}

\def\normal@footnoterule{%
  \kern-3\p@ \hrule \@width \textwidth \@height .5\p@ \kern 3\p@}

\def\title@footnoterule{%
  \kern-3\p@ \hrule \@width \textwidth \@height \z@ \kern 3\p@}

\let\footnoterule\normal@footnoterule

\long\def\normal@makefntext#1{%
  \parindent 10pt\noindent
  \hb@xt@ 8pt{\hss${\@thefnmark}$}\normalfont\rmfamily #1%
}

\long\def\title@makefntext#1{%
  \centering \parindent 10pt\noindent
  $^{\@thefnmark}$\enskip\normalfont\rmfamily #1%
}

\let\@makefntext\normal@makefntext
\def\@makefnmark{\hbox{${\normalfont\@thefnmark}$}}%revert to original code

\renewcommand{\thefootnote}{\mbox{$^{\fnsymbol{footnote}}$}}
\@addtoreset{footnote}{page}

\def\@fnsymbol#1{\ensuremath{\ifcase#1\or \dagger\or \ddagger\or
   \mathchar "278\or \mathchar "27B\or \|\or **\or \dagger\dagger
   \or \ddagger\ddagger \else\@ctrerr\fi}}

\setcounter{topnumber}{2}
\renewcommand\topfraction{.9}
\setcounter{bottomnumber}{1}
\renewcommand\bottomfraction{.9}
\setcounter{totalnumber}{3}
\renewcommand\textfraction{.1}
\renewcommand\floatpagefraction{.75}
\setcounter{dbltopnumber}{2}
\renewcommand\dbltopfraction{.9}
\renewcommand\dblfloatpagefraction{.75}

\long\def\@makecaption#1#2{%
  \ifbot@fig \rule{\textwidth}{.25pt}\fi
  \vskip 5\p@ \@plus .4\p@ \@minus .4\p@
  \begingroup
    \setbox\@tempboxa\hbox{{\normalfont\rmfamily\scshape
     #1\ifrem@fullpt\else .\fi} \normalfont\rmfamily\itshape #2}%
%   \small
%    \ifdim \wd\@tempboxa >\tw@\hsize
%      \unhbox\@tempboxa\par
%    \else
      {\centering \unhbox\@tempboxa\par}%
%    \fi
  \endgroup
  \global\rem@fullptfalse
  \global\bot@figfalse
}

% original coding
%\long\def\@makecaption#1#2{%
%  \setbox\@tempboxa\hbox{#2}%
%  \vskip \half@line
%  \raggedright\sloppy #1%
%    \ifdim\wd\@tempboxa>\z@ .\enskip #2\fi
%    \par
%}

\newcounter{table}
\renewcommand\thetable{\@arabic\c@table}
\def\fps@table{!b}% changed in v.2.1.6 (Alistair Smith)
\def\ftype@table{1}
\def\ext@table{lot}
\newcommand\tablename{Table}
\def\fnum@table{\tablename~\thetable}

\def\fstyle@table{\footnotesize\normalfont\rmfamily}
\def\fjust@table{\centering}
\def\fcapjust@table{\centering\sloppy}
\def\fcapsize@table{\normalfont\small\scshape}
\def\fcapstyle@table{\normalfont\small\itshape}

\newenvironment{table}% incorrect settings removed v.2.1.6 Alistair Smith
  {\@float{table}}
  {\end@float}

\newenvironment{table*}{\@dblfloat{table}}{\end@dblfloat}

\newcounter{figure}
\renewcommand\thefigure{\@arabic\c@figure}
\def\fps@figure{!tp}% changed in v.2.1.6 (Alistair Smith)
\def\ftype@figure{2}
\def\ext@figure{lof}
\newcommand\figurename{Figure}
\def\fnum@figure{\figurename~\thefigure}

\def\fstyle@figure{\footnotesize\normalfont\rmfamily}
\def\fjust@figure{\centering}
\def\fcapjust@figure{\centering\sloppy}

% figure captions to be small (9/10)
\def\fcapsize@figure{\normalfont\small\scshape}
\def\fcapstyle@figure{\normalfont\small\itshape}

\newif\ifrem@fullpt
\newcommand\removefullstop{\global\rem@fullpttrue}

\newif\ifbot@fig
\newenvironment{bottomfigure}{\def\fps@figure{b}%
  \setcounter{bottomnumber}{1}%
  \global\bot@figtrue
  \@float{figure}\fstyle@figure}
  {\end@float}

\newenvironment{figure}{% modified v.2.1.6 Alistair Smith to get correct space at top of page
\@ifnextchar[%
{\@float{figure}}
{\@float{figure}\vspace*{6pt}}}
{\end@float}
\newenvironment{figure*}{\@dblfloat{figure}}{\end@dblfloat}

% Added in v.2.1.6 Alistair Smith
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{6\p@}
% end addition

\long\def\@caption#1[#2]#3{\par\addcontentsline{\csname % FROM LATEX.LTX
  ext@#1\endcsname}{#1}{\protect\numberline{\csname
  the#1\endcsname}{\ignorespaces #2}}\begingroup
  \@parboxrestore
  \normalsize\baselineskip=10pt%
  \@makecaption{\csname fcapjust@#1\endcsname
                \csname fcapsize@#1\endcsname
                \csname fnum@#1\endcsname}%
               {\csname fcapstyle@#1\endcsname \ignorespaces #3}\par
  \endgroup
}

\def\@xfloat #1[#2]{% FROM LATEX.LTX
  \def\@captype {#1}%
  \def\@fps {#2}%
  \@onelevel@sanitize \@fps
  \def \reserved@b {!}%
  \ifx \reserved@b \@fps
    \@fpsadddefault
  \else
    \ifx \@fps \@empty
      \@fpsadddefault
    \fi
  \fi
  \ifhmode \@bsphack\@floatpenalty-\@Mii \else \@floatpenalty-\@Miii\fi
  \ifinner
    \@parmoderr\@floatpenalty\z@
  \else
    \@next\@currbox\@freelist
      {%
       \@tempcnta \sixt@@n
       \expandafter \@tfor \expandafter \reserved@a
         \expandafter :\expandafter =\@fps
         \do
          {%
           \if \reserved@a h%
             \ifodd \@tempcnta
             \else
               \advance \@tempcnta \@ne
             \fi
           \fi
           \if \reserved@a t%
             \@setfpsbit \tw@
           \fi
           \if \reserved@a b%
             \@setfpsbit 4%
           \fi
           \if \reserved@a p%
             \@setfpsbit 8%
           \fi
           \if \reserved@a !%
             \ifnum \@tempcnta>15
               \advance\@tempcnta -\sixt@@n\relax
             \fi
           \fi
           }%
       \@tempcntb \csname ftype@\@captype \endcsname
       \multiply \@tempcntb \@xxxii
       \advance \@tempcnta \@tempcntb
       \global \count\@currbox \@tempcnta
       }%
    \@fltovf
  \fi
  \global \setbox\@currbox
    \color@vbox
      \normalcolor
      \vbox \bgroup
        \hsize\columnwidth \@parboxrestore
        \@floatboxreset
        \csname fstyle@\@captype\endcsname
        \csname fjust@\@captype\endcsname
}

\def\author@tabular{\def\@halignto{}\@authortable}
\let\endauthor@tabular=\endtabular
\def\author@tabularcr{{\ifnum0=`}\fi
  \@xtabularcr[4\p@]\small\normalfont\itshape\ignorespaces}
\def\author@tabularcrnospace{{\ifnum0=`}\fi
  \@xtabularcr[-2\p@]\small\normalfont\itshape\ignorespaces}
\def\@authortable{\leavevmode \hbox \bgroup $\let\@acol\@tabacol
  \let\@classz\@tabclassz
  \let\@classiv\@tabclassiv
  \let\\\author@tabularcr
  \let\nextaddress\author@tabularcrnospace
  \@tabarray
}

\def\long@rule{\par\noindent\rule{\textwidth}{\arrayrulewidth}\par
  \noindent}
\def\short@rule{\par\noindent\rule{27pc}{\arrayrulewidth}\par\noindent}
\def\top@eightrule{\par\rule{27pc}{\arrayrulewidth}\vspace{4\p@}\par
  \noindent}
\def\bottom@eightrule{\par\noindent\vspace{-1\p@}%
  \rule{27pc}{\arrayrulewidth}\par\noindent}

\let\oldtabular\tabular
\let\endoldtabular\endtabular



\renewenvironment{tabular} % FROM LATEX.LTX
  {\noindent%
%   \let\@tabarray\c@tabarray% removed in v.2.1.6 (OT)
   \let\@tarray\c@tarray%
   \let\@ttarray\c@ttarray%
   \let\t@barray\ct@barray% 
%  \def\@halignto{to \textwidth} %would give full width rules
   \let\@halignto\@empty%
   \doublerulesep\z@%
  \def\hline{\noalign{\ifnum0=`}\fi%    
     \vskip4.5\p@\hrule \z@ \arrayrulewidth \vskip4.5\p@%
     \futurelet\@tempa\@xhline}%
   \def\@xhline{\ifx\@tempa\hline%
     \vskip-9\p@\vskip\doublerulesep\fi%
     \ifnum0=`{\fi}}%
   \def\@arrayrule{\@addtopreamble{%
     \hskip -.5\arrayrulewidth\hskip .5\arrayrulewidth}}%
   \tabskip=\tabcolsep \@plus 1fil\@tabular}%
  {\endoldtabular}

\def\c@tabarray{\@ifnextchar[{\@tarray}{\@ttarray}}
\def\c@tarray[#1]#2{\t@barray[#1]{@{\tabskip=2\tabcolsep \@plus 3\p@} #2}}
\def\c@ttarray#1{\t@barray[c]{@{\tabskip=2\tabcolsep \@plus 3\p@} #1}}
\def\ct@barray[#1]#2{%
  \setbox\@arstrutbox\hbox{%
    \vrule \@height\arraystretch \ht\strutbox
    \@depth\arraystretch \dp\strutbox \@width\z@}%
  \@mkpream{#2}\edef\@preamble{%
    \halign \noexpand\@halignto \bgroup
      \tabskip\z@ \@arstrut \@preamble \tabskip=\tabcolsep \@plus 1fil
      \cr
  }%
  \let\@startpbox\@@startpbox \let\@endpbox\@@endpbox
  \if #1t\vtop \else \if#1b\vbox \else \vcenter \fi\fi
  \bgroup \let\par\relax
  \let\@sharp##
  \let\protect\relax \lineskip\z@\baselineskip\z@\@preamble
}

\renewenvironment{eqnarray} % FROM LATEX.LTX
  {\stepcounter{equation}%
   \def\@currentlabel{\p@equation\theequation}%
   \global\@eqnswtrue
   \m@th
   \global\@eqcnt\z@
   \tabskip\@centering
   \let\\\@eqncr
   $$\everycr{}\halign to \displaywidth\bgroup
      \hskip\@centering$\displaystyle\tabskip\z@skip{##}$\@eqnsel
     &\global\@eqcnt\@ne \hfil${\;##\;}$\hfil
     &\global\@eqcnt\tw@
        $\displaystyle\tabskip\z@skip{##}$\hfil\tabskip\@centering
     &\global\@eqcnt\thr@@ \hb@xt@\z@\bgroup\hss##\egroup
        \tabskip\z@skip
     \cr}
  {\@@eqncr\egroup\global\advance\c@equation\m@ne
   $$\global\@ignoretrue}

% \proofbox added on last line
\def\@@eqncrMULTBOX{\let\reserved@a\relax
    \ifcase\@eqcnt \def\reserved@a{& & &}\or \def\reserved@a{& &}%
     \or \def\reserved@a{&}\else
       \let\reserved@a\@empty
       \@latex@error{Too many columns in eqnarray environment}\@ehc\fi
     \reserved@a \if@eqnsw\@eqnnum\stepcounter{equation}\fi
     \global\@eqnswtrue\global\@eqcnt\z@\proofbox\cr}

% to allow proofbox to appear on last line, within eqnarray*
\@namedef{endeqnarray*}{\nonumber      
  \ifmultbox
    \@@eqncrMULTBOX
  \else
    \@@eqncr
  \fi
  \egroup
  \global\advance\c@equation\m@ne
 $$\@ignoretrue
}
\newcommand{\acknowledgementsname}{Acknowledgements}

\newenvironment{acknowledgements}
  {\normalfont\rmfamily
   \topsep\full@line \trivlist
   \item[\hskip \labelsep{\hspace{\parindent}%
   \normalfont\itshape\acknowledgementsname.}\enskip]\ignorespaces}
  {\endtrivlist}

% single acknowledgement
\newenvironment{acknowledgement}{\renewcommand{\acknowledgementsname}{Acknowledgement}%
  \begin{acknowledgements}}{\end{acknowledgements}}

\let\acknowledgments\acknowledgements
\let\endacknowledgments\endacknowledgements

\newcommand\today{}
\edef\today{\number\day\ \ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December
  \fi \ \number\year}

\newif\iffontfound
\newcommand\checkfont[1]{%
  \batchmode
  \font\test=#1\relax
  \errorstopmode
  \fontfoundfalse
  \ifx\test\nullfont \else \fontfoundtrue\fi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Modifications to LMS House Style and Class File
% (from LMS2ECM.STY) inserted in version 2.1.5 (OT)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ifprod
\RequirePackage{amssymb}[1995/02/01] %Used for fraktur, blackboard bold, etc.
\RequirePackage{amsfonts}[1995/02/01] % from CUP/lms2esym.sty
\fi

\if@nocm\else % Computer Modern slanted style
% Slanted text to be used instead of italics in headings, in statements of theorems,
% in the bibliography, and whenever emphasis is required for other reasons.
% (All maths symbols are to remain as italics)

% Make sure we can provide standard italic under EXCEPTIONAL CIRCUMSTANCES
\DeclareTextFontCommand\oldtextit{\usefont{OT1}{cmr}{m}{it}}
\let\olditshape\itshape
\let\@oldit\it
\newcommand\keepolditalics{%
  \let\itshape\olditshape%
  \let\textit\oldtextit%
  \let\it\@oldit%
}  
%
\renewcommand{\itshape}{\slshape}
\renewcommand{\textit}[1]{\textsl{#1}}
\renewcommand{\it}{\sl}
\fi % end Computer Modern slanted style

% Enforce slanted versions of mathematical symbols and operators
\ifprod
% Standard definitions can be retrieved with the prefix \old...
\let\oldgeq\geq  % relational operators
\let\oldleq\leq
\let\oldge\ge
\let\oldle\le
\let\oldgeqq\geqq
\let\oldleqq\leqq
\let\oldsubseteqq\subseteqq
\let\oldsupseteqq\supseteqq
\let\oldlesseqqgtr\lesseqqgtr
\let\oldgtreqqless\gtreqqless
\let\oldlneqq\lneqq  % partly negated relational operators 
\let\oldgneqq\gneqq
\let\oldlvertneqq\lvertneqq
\let\oldgvertneqq\gvertneqq
\let\oldvarsubsetneq\varsubsetneq
\let\oldvarsupsetneq\varsupsetneq
\let\oldsubsetneqq\subsetneqq
\let\oldsupsetneqq\supsetneqq
\let\oldvarsubsetneqq\varsubsetneqq
\let\oldvarsupsetneqq\varsupsetneqq
\let\oldnleq\nleq  % negated relational operators
\let\oldngeq\ngeq
\let\oldnleqq\nleqq
\let\oldngeqq\ngeqq
\let\oldnsubseteqq\nsubseteqq
\let\oldnsupseteqq\nsupseteqq

% Redefinitions added by Alice C. Sharp:

% relational operators
\AtBeginDocument{% prevents overwriting by new calls to amssymb in preamble
\renewcommand\geq{\geqslant}%
\renewcommand\leq{\leqslant}%
\renewcommand\ge{\geqslant}%
\renewcommand\le{\leqslant}%
\renewcommand\geqq{\geqslant}%
\renewcommand\leqq{\leqslant}%
%
\renewcommand\subseteqq{\subseteq}%
\renewcommand\supseteqq{\supseteq}%
%
\renewcommand{\gtreqqless}{\gtreqless}%
\renewcommand{\lesseqqgtr}{\lesseqgtr}%
%
% partly negated relational operators
\renewcommand\gneqq{\gneq}%
\renewcommand\lneqq{\lneq}%
\renewcommand\gvertneqq{\gneq}%
\renewcommand\lvertneqq{\lneq}%
%
\renewcommand\varsubsetneq{\subsetneq}%
\renewcommand\varsupsetneq{\supsetneq}%
\renewcommand\subsetneqq{\subsetneq}%
\renewcommand\supsetneqq{\supsetneq}%
\renewcommand\varsubsetneqq{\subsetneq}%
\renewcommand\varsupsetneqq{\supsetneq}%
%
% negated relational operators
\renewcommand\ngeq{\ngeqslant}%
\renewcommand\nleq{\nleqslant}%
\renewcommand\ngeqq{\ngeqslant}%
\renewcommand\nleqq{\nleqslant}%
%
\renewcommand\nsubseteqq{\nsubseteq}%
\renewcommand\nsupseteqq{\nsupseteq}%
}
% Added by Ola Tornkvist - redefinition of '\not' command
% when preceding certain relational operators
\let\oldnot\not
\AtBeginDocument{% prevents overwriting in preamble
\def\not#1{%
\ifx#1\leq\nleqslant%
\else\ifx#1\geq\ngeqslant%
\else\ifx#1\leqslant\nleqslant%
\else\ifx#1\geqslant\ngeqslant%
\else\ifx#1\subseteq\nsubseteq%
\else\ifx#1\supseteq\nsupseteq%
\else\ifx#1\preceq\npreceq%
\else\ifx#1\succeq\nsucceq%
\else\ifx#1\preccurlyeq\npreceq%
\else\ifx#1\succcurlyeq\nsucceq%
\else%
\oldnot#1%
\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi}%
}

% The following scaling command does not seem to work. Neither Alison Woollatt nor
% Ola Tornkvist knows why it was originally in 'lms2esym.sty', but it has been 
% retained to be safe.
%
% Make large maths symbols scale to any size (overwrite definitions in amsfonts.sty)
\DeclareFontShape{OMX}{cmex}{m}{n}{<-> cmex10}{}

% Likewise, the following command seems to implement some kind of scaling of
% LATEXSYM fonts, without loading latexsym.sty itself. Neither Alison Woollatt nor
% Ola Tornkvist knows why this is needed, as latexsym can be included in the preamble.
% However, it has been included here to be safe.
% From Ulasy.fd (1995/11/28 v2.2c)
\DeclareFontFamily{U}{lasy}{}
\DeclareFontShape{U}{lasy}{m}{n}{<5> <6> <7> <8> <9> gen * lasy
      <10-> lasy10}{}
\DeclareFontShape{U}{lasy}{b}{n}{<-> lasyb10}{}

\fi % end of 'ifprod'
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Editorial Extras - not prescribed by LMS House Style
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Final proofs shd not have Page x of xx in running heads.--Devi: updated on 12/9/06
\iffinal%
\setlength\overfullrule{\z@}%
  \AtBeginDocument{%
\def\pgnum{\thepage}}%
 \else
\gdef\@pagerange{Page \@startpage\ of\ \@endpage}%
\renewcommand\titlep@gedetails{%
  {\itshape London Math.\ Soc.\/}
%  \ifjlm\@jlmseries~\fi
%  \ifplm\@plmseries~\fi
%  \@volume \ (\@pubyear)
  \@pagerange\quad
  \LMScopyright\ \@pubyear\ London Mathematical Society\\}
% OT inserted v.2.1.9
\ifprod%
\setlength\overfullrule{5\p@}%
\else%
\setlength\overfullrule{\z@}%
\fi%
% end OT insertion
\AtBeginDocument{%
\def\pgnum{Page \thepage\ of \@endpage}%
}%
\fi
%\iffinal
%\setlength\overfullrule{\z@}
%  \AtBeginDocument{%
%\def\pgnum{\thepage}
%}
%\else
%\setlength\overfullrule{5\p@}
%  \AtBeginDocument{%
%\def\pgnum{Page \thepage\ of \@endpage}%
%}%
%\fi

% Selection of alternative calligraphic alphabet

\iffrak % Style option for using fraktur alphabet instead of calligraphic
  \let\s@vemathfrak\mathfrak
  \AtBeginDocument{% circumvent any redefinitions of \mathfrak in preamble 
  \let\mathcal\s@vemathfrak%
  \typeout{}%
  \typeout{lms2ecm.sty: 'frak' style option executed AtBeginDocument}%
  \typeout{\protect\mathfrak\space script Gothic alphabet substituted for 
  \protect\mathcal\space calligraphic alphabet.}%
  \typeout{}%
  }
\else
  \ifeuler % Style option for using Euler calligraphic alphabet instead of standard one
  \RequirePackage{eucal}
  \let\s@vemathcal\mathcal
  \AtBeginDocument{% circumvent any redefinitions of \mathcal in preamble
  \let\mathcal\s@vemathcal%  
  \typeout{}%
  \typeout{lms2ecm.sty: 'euler' style option executed AtBeginDocument}%
  \typeout{Euler calligraphic alphabet substituted for \protect\mathcal\space
  alphabet.}%
  \typeout{}%
  }
  \fi
\fi

% Define \tfrac and \dfrac, if not already defined in the preamble
\AtBeginDocument{%
  \providecommand\tfrac[2]{{\textstyle{#1\over #2}}}%
  \providecommand\dfrac[2]{{\displaystyle{#1\over #2}}}%
}

\ifprod % this 'if' clause extends all the way to the end of CUP shorthand macros and
% after the inserted query macros and warning macros, near the end of the class file.

% Load amsbsy to provide access to \boldsymbol
\RequirePackage{amsbsy}[1995/01/20] % also includes amsgen.sty

% Macro for changing \mathversion's, used below
\providecommand{\mathch}[2]{% from upmath.sty, derived from AMSBSY.STY
  \begingroup
  \let\@nomath\@gobble \mathversion{#1}%
  \math@atom{#2}{%
  \mathchoice%
    {\hbox{$\m@th\displaystyle#2$}}%
    {\hbox{$\m@th\textstyle#2$}}%
    {\hbox{$\m@th\scriptstyle#2$}}%
    {\hbox{$\m@th\scriptscriptstyle#2$}}}%
  \endgroup}

% Load fonts for upright and boldface-upright maths symbols and letters
% The following is from Ueur.fd: changed encoding from U to OML.
% This allows to use eurm/b as (more or less) a maths font
% (this part borrowed from upmath.sty)
\DeclareFontFamily{OML}{eur}{\skewchar\font'177}
\DeclareFontShape{OML}{eur}{m}{n}{
  <5> <6> <7> <8> <9> gen * eurm
  <10> <10.95> <12> <14.4> <17.28> <20.74> <24.88> eurm10
  }{}
\DeclareFontShape{OML}{eur}{b}{n}{
  <5> <6> <7> <8> <9> gen * eurb
  <10> <10.95> <12> <14.4> <17.28> <20.74> <24.88> eurb10
  }{}
\DeclareMathVersion{upright} %upright maths symbols
\DeclareMathVersion{boldupright} %boldface upright maths symbols
\SetSymbolFont{letters}{upright}    {OML}{eur}{m}{n}
\SetSymbolFont{letters}{boldupright}{OML}{eur}{b}{n}

% Provide commands for upright maths and bold-upright maths (from upmath.sty)
\DeclareRobustCommand{\mathup}[1]{\mathch{upright}{#1}}
\DeclareRobustCommand{\mathbup}[1]{\mathch{boldupright}{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LMS macros for inserting author queries in edited TeX files
% (new in version 2.1.5 [OT])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\if@queries
\newcounter{auqc@unt} % counter for author queries
\setcounter{auqc@unt}{0}
\def\theauqc@unt{\textbf{Q\arabic{auqc@unt}}}
% Commands to insert a query marker into margin and generate query entry
\@mparswitchfalse %always put query marker in right margin
\AtBeginDocument{
\providecommand\query[1]{\marginpar{\stepcounter{auqc@unt}{%
\footnotesize\textbf{\theauqc@unt}}%
\addtocontents{loq}{\protect\addvspace{2ex}}%
\addtocontents{loq}{\protect\noindent\theauqc@unt\space(page\space\thepage):\newline%
\ignorespaces #1\par}}}}
% Commands for making list of queries at end of document
\newcommand\list@ofauqname{AUTHOR QUERIES}
\newcommand\list@ofauq{%
\@restonecolfalse
\if@twocolumn\@restonecoltrue\onecolumn\fi
{\centering\large\normalfont\list@ofauqname\par\vspace{6\p@}}
\@starttoc{loq}
\if@restonecol\twocolumn\fi
}
% Make list of queries at end of document
\AtEndDocument{%
\ifnum \value{auqc@unt} >\z@%
\clearpage\thispagestyle{empty}%
\list@ofauq%
\fi%
}
\fi % end of 'if@queries'

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LMS macros to warn against uses of obsolete lms2ecm.sty and
% ensure correct version of class file is used for document
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Error handler
\def\LMS@err#1{\ClassError{LMS}{#1}\@eha} %error handler

% Warn against using obsolete lms2ecm.sty
\newcommand\ifprodtf{\LMS@err{Obsolete style file lms2ecm.sty is not allowed.
^^J! Please remove command \string\usepackage{lms2ecm} from your LaTeX document}}

% Allow TeX document to ensure correct version of class file
% 
\newcommand\EnsureClassVersion[1]{%
\RequirePackage{ifthen}%
\ifthenelse{%
% insert nested tests for later versions of class file here as become available 
  \equal{#1}{2.1.7}}{}% do nothing, else:
  {\ifthenelse{%
  \equal{#1}{2.1.6}}{}% do nothing, else:
  {\ifthenelse{%
  \equal{#1}{2.1.5}}{}% do nothing, else:
  {\ifthenelse{%
  \equal{#1}{2.1}}{}% do nothing again, else:
  {\LMS@err{This LaTeX document requires LMS class version #1 or higher}}%
}}}%
}

\fi % end of 'ifprod'

%TeXPI2 is NOT loaded, as it includes fonts that are not freely available.
%It is not needed, since \proofbox is defined differently without the prodtf option

%All commands that load CUP Monotype Times fonts have been eliminated

%Shorthands \e, \ii, \dd have been omitted (conflict with LMS house style)

% Added v.2.1.6 OT enforce thin space and no break between section symbol and number
\ifprod
\let\S@old\S
\let\oldsectionsymbol\S % make available old section command if needed
\def\S{\@ifnextchar \S{\@twoS}{\@oneSa}}
\def\@twoS#1{\S@old\@oneSa}
\def\@oneSa{\@ifnextchar \,{\@oneSspace}{\@oneSb}}
\def\@oneSb{\@ifnextchar \!{\@oneSspace}{\@oneSc}}
\def\@oneSc{\@ifnextchar \:{\@oneSspace}{\@oneSd}}
\def\@oneSd{\@ifnextchar \;{\@oneSspace}{\@oneSe}}
\def\@oneSe{\@ifnextchar ~{\@oneSspace}{\@oneSf}}
\def\@oneSf{\@ifnextchar \ {\@oneSspace}{\@oneSg}}
\def\@oneSg{\@ifnextchar \space{\@oneSspace}{\@oneSother}}
\def\@oneSspace#1{\S@old\nobreak\,\nobreak\ignorespaces}
\def\@oneSother{\S@old\nobreak\,\nobreak\ignorespaces}
\fi

% Fix v.2.1.6: incorporate package 'textcase' (verbatim)
% used above for redefinition of \@title, \@author, and running heads
%% Source File: textcase.dtx
%% Copyright 1997 1998 David Carlisle
%%
%% This file may be distributed under the terms of the LPPL.
\def\@uclcnotmath#1#2#3#4{\begingroup
      #1%
      \def\({$}\let\)\(%
      \def\NoCaseChange##1{\noexpand\NoCaseChange{\noexpand##1}}
      \@nonchangecase\label
      \@nonchangecase\ref
      \@nonchangecase\ensuremath
      \def\cite##1##{\toks@{\noexpand\cite##1}\@citex}%
      \def\@citex##1{\NoCaseChange{\the\toks@{##1}}}%
      \def\reserved@a##1##2{\let#2\reserved@a}%
      \expandafter\reserved@a\@uclclist\reserved@b{\reserved@b\@gobble}%
      \protected@edef\reserved@a{\endgroup
          \noexpand\@skipmath#3#4$\valign$}%
      \reserved@a}
\def\@nonchangecase#1{\def#1##1{\NoCaseChange{#1{##1}}}}
\let\NoCaseChange\@firstofone
\def\@skipmath#1#2$#3${%
  \@skip@nonchangecase#1#2\NoCaseChange\valign
  \ifx\valign#3%
  \else
    $#3$%
    \expandafter\@skipmath\expandafter#1%
  \fi}
\def\@skip@nonchangecase#1#2\NoCaseChange#3{%
  #1{#2}%
  \ifx\valign#3%
  \else
    #3%
    \expandafter\@skip@nonchangecase\expandafter#1%
  \fi}
\DeclareRobustCommand\MakeTextUppercase{%
  \@uclcnotmath{\def\i{I}\def\j{J}}{##1##2}\uppercase}
\protected@edef\MakeTextUppercase#1{\MakeTextUppercase{#1}}
\DeclareRobustCommand\MakeTextLowercase{%
  \@uclcnotmath{}{##2##1}\lowercase}
\protected@edef\MakeTextLowercase#1{\MakeTextLowercase{#1}}
% omitted style options, which cannot run when incorporated into LMS class
%\DeclareOption{overload}{%
%  \expandafter\let\csname MakeUppercase \expandafter\endcsname
%                  \csname MakeTextUppercase \endcsname
%  \expandafter\let\csname MakeLowercase \expandafter\endcsname
%                  \csname MakeTextLowercase \endcsname}
%\ProcessOptions
% end fix v.2.1.6

% Fix v.2.1.6 OT: Provide a simple way for authors to choose equation numbering.
% Set LMS default 1.1, 1.2, etc., unless author has used \@addtoreset in preamble 
% (e.g. with the AMS \numberwithin macro) OR has issued the command \simpleequations
% in the preamble (to get consecutive numbers 1, 2, 3, etc.)
%
% Modify \@addtoreset to reveal if \c@equation has been added to the reset list of any counter
\newif\if@equationaddedtoreset
\@equationaddedtoresetfalse 
\def\@addtoreset#1#2{\expandafter\@cons\csname cl@#2\endcsname {{#1}}%%%% from latex.ltx
\expandafter\ifx\csname c@#1\endcsname\c@equation\@equationaddedtoresettrue\fi} % line added (OT)
%
\newif\if@simpleequations
\@simpleequationsfalse
\newcommand\simpleequations{\@simpleequationstrue\renewcommand\theequation{\@arabic\c@equation}}
\let\modifyeqn\simpleequations % for backward compatibility
%
\AtBeginDocument{\if@equationaddedtoreset\else\if@simpleequations\else
%insert LMS default equation numbering
\@addtoreset{equation}{section}%
\renewcommand\theequation{\thesection.\@arabic\c@equation}%
\fi\fi}
%%

% Fix v.2.1.6. Alistair Smith: provide numbered subsections (without captions) 
% in the same style as subsubsections.
\let\oldsubsection\subsection
% OT added boolean for use in \@sect
\newif\if@runonsubsections
\@runonsubsectionsfalse
\newcommand{\runonsubsections}{\@runonsubsectionstrue%
\renewcommand\subsection{\@startsection{subsection}{2}{\parindent}
    {\full@line \@plus 6\p@ \@minus 3\p@}{-\parindent}
    {\normalsize\normalfont\itshape\noindent}%
}}
\newcommand{\standardsubsections}{\@runonsubsectionsfalse\let\subsection\oldsubsection}
% end fix v.2.1.6

% Fix v.2.1.6: Long figure caption and enable linebreaks
\ifprod% require extra package only in production mode
\let\oldcaption\caption% save usual caption if necessary
\typeout{^^JRequires:caption v3.0c <2004/07/16> (Axel Sommerfeldt).
^^J Now loading:}
\RequirePackage[font=small,textfont={rm,it},labelfont=sc,%
labelsep=period,margin=10pt,justification=centering]{caption}[2004/07/16]
\newcommand\longcaption[1]{{\captionsetup{justification=justified}\caption{#1}}}
% 
% provided as an alternative.
\newcommand\captionlength[1]{\captionsetup{width=#1,justification=centerlast}}
\fi
%

% Fix v.2.1.6: Table caption on top of table.
\ifprod% require extra package only in production mode
\RequirePackage{float}[2001/11/08]%
\floatstyle{plaintop}\restylefloat{table}%
\fi


% Added v.2.1.6 Alistair Smith: wide single affiliation
\let\@wideaffiliation\@empty

\newlength\wideaffil
\setlength\wideaffil{\textwidth}
\addtolength\wideaffil{-20pt}

\newcommand\wideaffiliation[1]{%
  \@onlineabstracttrue % make special abstract if it appears last in paper
  \removelastskip\addvspace{18\p@}\par\noindent
  \addresssize\normalfont\itshape\hspace*{20pt}%
  \parbox[t]{\wideaffil}%
  {\raggedright\parindent -10pt\@wideaffiliation{#1}}
  \normalfont\upshape\ignorespaces}
% end v.2.1.6 addition


% OT v.2.1.6 fixes for integrals
% redefine oint as upright
\let\oldointop\ointop
\def\oldoint{\oldointop\nolimits}
\let\oldsmalloint\smalloint

\DeclareMathSymbol{\ointop}{\mathop}{euexlargesymbols}{"48}
\def\oint{\ointop\nolimits}
\def\smalloint{\mathop{\textstyle\oint}\nolimits}

% revised definition of \smallint
\def\smallint{\mathop{\textstyle\int}\nolimits} % OT new definition

%\setlength{\jot}{6\p@}
\vbadness=9999
\tolerance=9999
\doublehyphendemerits=10000
\doublehyphendemerits 640000
\finalhyphendemerits  1000000

\medmuskip=4mu% plus 2mu minus 4mu
\thickmuskip=5mu% plus 5mu

\flushbottom
\frenchspacing

\ifprod
\AtBeginDocument{%
% OT redefined space between multiple integral signs
\def\intkern@{\mathchoice{\mkern-6mu}  % displaymode
 {\mkern-7mu}% textmode
 {\mkern-7mu}% scriptmode
 {\mkern-7mu}% scriptscriptmode
 }
% OT redefined spacing in \idotsint
\def\intdots@{\mathchoice{\@cdots}% displaymode
 {\mkern-3mu{\cdotp}\mkern1.5mu{\cdotp}\mkern1.5mu{\cdotp}\mkern-3mu}% textmode
 {\mkern-4mu{\cdotp}\mkern1mu{\cdotp}\mkern1mu{\cdotp}\mkern-4mu}% scriptmode
 {\mkern-4mu{\cdotp}\mkern1mu{\cdotp}\mkern1mu{\cdotp}\mkern-4mu}% scriptscriptmode
 }}%                         
\fi
% end v.2.1.6 integral fixes

\def\edot{\raisebox{-2pt}{${\cdot}$}}

\pagestyle{headings}
\pagenumbering{arabic}
\frenchspacing
\endinput

% end of file lms.cls
