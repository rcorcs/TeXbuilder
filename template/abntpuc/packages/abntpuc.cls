% Template Latex para trabalhos academicos da PUC Minas
%
% Pontificia Universidade Catolica de Minas Gerais (www.pucminas.br)
% Instituto de Ciencas Exatas e Informatica (www.icei.pucminas.br)
%
% VERSAO: 0.2
% DATA: Maio de 2012
%
% AUTORES:
% Prof. Joao Paulo Domingos Silva
% Rodrigo Caetano de Oliveira Rocha
%
% COLABORADORES:
% Tamara Márcia Mendes
% Harison Herman Silva
%
% REVISORES:

% --- Criacao de classe ---

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{abntpuc}
\LoadClass[a4paper, 12pt]{report}

% --- Portugues do Brasil ---

\usepackage[brazil]{babel}

%\usepackage[applemac]{inputenc} % Usar no Mac!
\usepackage[latin1]{inputenc} % Usar no PC!


% --- Dimensoes da pagina ---

\usepackage[a4paper]{geometry}
\geometry{top=3cm,bottom=2cm,left=3cm,right=2cm}

\usepackage{times}

\setlength{\parindent}{1.25cm} % Paragrafo
\setlength{\baselineskip}{1.5\baselineskip} % Espacamento: 1.5


\usepackage{chngcntr}

% -- Legenda das Figuras --

\usepackage{caption}
\captionsetup[figure]{labelsep=endash,labelfont=bf,textfont=bf}
\captionsetup[table]{labelsep=endash,labelfont=bf,textfont=bf}

\usepackage[toc,page,titletoc]{appendix}

\pagestyle {empty}
\pagestyle {myheadings}

\newcommand{\iniciocapitulo}
{
%\thispagestyle {empty}
%\pagestyle {myheadings}
%\thispagestyle {myheadings}
%\hspace{1.5\baselineskip}
\hspace{1.25cm}
}


% -- Enumeração de Listas -- 
\usepackage{enumerate}
%\begin{enumerate}[a)]
%	\item
%	\item 
%\end{enumerate}

% --- Nome do curso ---

\newcommand{\@curso}{}
\newcommand{\curso}[1]{\renewcommand{\@curso}{#1}}

% --- Nome do autor ---

\newcommand{\@autor}{}
\newcommand{\autor}[1]{\renewcommand{\@autor}{#1}}

% --- Titulo do trabalho ---

\newcommand{\@titulo}{}
\newcommand{\titulo}[1]{\renewcommand{\@titulo}{#1}}

% --- Subtitulo do trabalho ---

\newcommand{\@subtitulo}{}
\newcommand{\subtitulo}[1]{\renewcommand{\@subtitulo}{#1}}

% --- Cidade ---

\newcommand{\@cidade}{}
\newcommand{\cidade}[1]{\renewcommand{\@cidade}{#1}}

% --- Ano ---

\newcommand{\@ano}{}
\newcommand{\ano}[1]{\renewcommand{\@ano}{#1}}

% --- Tipo de trabalho: Monografia, Dissertacao, Tese ---

\newcommand{\@trabalho}{}
\newcommand{\trabalho}[1]{\renewcommand{\@trabalho}{#1}}

% --- Grau do trabalho: Bacharel em..., Mestre em..., Doutor em... ---

\newcommand{\@grau}{}
\newcommand{\grau}[1]{\renewcommand{\@grau}{#1}}

% --- Nome do orientador ---

\newcommand{\@orientador}{}
\newcommand{\orientador}[1]{\renewcommand{\@orientador}{#1}}

% --- Nome do 1o avaliador ---

\newcommand{\@avaliadorA}{}
\newcommand{\avaliadorA}[1]{\renewcommand{\@avaliadorA}{#1}}

% --- Nome do 2o avaliador ---

\newcommand{\@avaliadorB}{}
\newcommand{\avaliadorB}[1]{\renewcommand{\@avaliadorB}{#1}}

% --- Data completa: dia, mes e ano ---

\newcommand{\@datacompleta}{}
\newcommand{\datacompleta}[1]{\renewcommand{\@datacompleta}{#1}}

% --- CAPA ---

\newcommand{\capa}{
	\thispagestyle{empty}

	\begin{center}
		PONTIF\'ICIA UNIVERSIDADE CAT\'OLICA DE MINAS GERAIS\par % Universidade
		\@curso % Curso
	\end{center}
	
	\vspace{3.5cm} % Espaco vertical
	
	\begin{center}
		\@autor % Autor
	\end{center}
	
	\vspace{3.5cm} % Espaco vertical
	
	\begin{center}
		\textbf{\@titulo}\par % Titulo
		\textbf{\@subtitulo} % Subtitulo
	\end{center}
	
	\vfill % Espaco vertical
	
	\begin{center}
		\@cidade\par % Cidade
		\@ano % Ano
	\end{center}
	
	\newpage % Quebra de pagina
}

% --- FOLHA DE ROSTO ---

\newcommand{\folharosto}{
	\thispagestyle{empty}

	\begin{center}
		\@autor % Autor
	\end{center}
	
	\vfill % Espacamento vertical
	
	\begin{center}
		\textbf{\@titulo}\par % Titulo
		\textbf{\@subtitulo} % Subtitulo
	\end{center}
	
	\vfill % Espacamento vertical
	
	\begin{flushright}
		\begin{minipage}{9cm} % 7cm (recuo) + 9cm (texto) + 5cm (margens) = 21cm (largura A4)
			{\@trabalho} apresentada ao programa de {\@curso} da Pontif\'icia Universidade Cat\'olica de Minas Gerais,
			como requisito parcial para obten\c{c}\~ao do t\'itulo de {\@grau}.\par % Nota de apresentacao
			\vspace{1cm}
			Orientador: {\@orientador} % Orientador
		\end{minipage}
	\end{flushright}
	
	\vfill % Espacamento vertical
	
	\begin{center}
		\@cidade\par % Cidade
		\@ano % Ano
	\end{center}
	
	\newpage % Quebra de pagina
}

% --- FOLHA DE APROVACAO ---

\newcommand{\folhaaprovacao}{
	\thispagestyle{empty}
	
	\begin{center}
		\@autor % Autor
	\end{center}
	
	\vfill % Espacamento vertical
	
	\begin{center}
		\textbf{\@titulo}\par % Titulo
		\textbf{\@subtitulo} % Subtitulo
	\end{center}
	
	\vfill % Espacamento vertical
	
	\begin{flushright}
		\begin{minipage}{9cm}
			{\@trabalho} apresentada ao programa de {\@curso} da Pontif\'icia Universidade Cat\'olica de Minas Gerais,
			como requisito parcial para obten\c{c}\~ao do t\'itulo de {\@grau}. % Nota de apresentacao
		\end{minipage}
	\end{flushright}
	
	\vfill % Espacamento vertical
	
	\begin{center}
		\rule{8cm}{0.01cm}\par % Linha horizontal
		\@orientador % Orientador
	\end{center}
	
	\vfill % Espacamento vertical
	
	\begin{center}
		\rule{8cm}{0.01cm}\par % Linha horizontal
		\@avaliadorA % 1o avaliador
	\end{center}
	
	\vfill % Espacamento vertical
	
	\begin{center}
		\rule{8cm}{0.01cm}\par % Linha horizontal
		\@avaliadorB % 2o avaliador
	\end{center}
	
	\vfill % Espacamento vertical
	
	\begin{center}
		\@cidade, \@datacompleta % Cidade e data completa
	\end{center}
	
	\newpage % Quebra de pagina
}

% --- DEDICATORIA ---

\newcommand{\dedicatoria}[1]
{
\begin{newpage}
	\thispagestyle{empty}
	\setlength{\baselineskip}{1.5\baselineskip} % Espacamento: 1.5
	\begin{flushright}
		\begin{minipage}{12cm}
			{#1} % Texto
		\end{minipage}
	\end{flushright}
\end{newpage}
}

% --- EPIGRAFE ---

\newcommand{\epigrafe}[1]
{
\begin{newpage}
	\thispagestyle{empty}
	\setlength{\baselineskip}{1.5\baselineskip} % Espacamento: 1.5
	\begin{flushright}
		\begin{minipage}{12cm}
			\footnotesize{{#1}} % Texto
		\end{minipage}
	\end{flushright}
\end{newpage}
}

% --- AGRADECIMENTOS ---

\newcommand{\agradecimentos}[1]
{
\begin{newpage}
	\thispagestyle{empty}	
	\setlength{\parindent}{1.25cm} % Paragrafo
	\setlength{\baselineskip}{1.5\baselineskip} % Espacamento: 1.5
	\begin{center}
		\textbf{AGRADECIMENTOS} \\ [1.5\baselineskip]
	\end{center}
	{#1} % Texto
\end{newpage}
}


% --- RESUMO ---

\newcommand{\resumo}[2]
{
\begin{newpage}
	\thispagestyle{empty}
	\setlength{\baselineskip}{1.5\baselineskip} % Espacamento: 1.5
	\begin{center}
		\textbf{RESUMO} \\ [1.5\baselineskip]
	\end{center}
	\noindent{#1} % Texto

	\vspace{1.5\baselineskip}
	\noindent Palavras-chave: {#2} % Palavras-chave
\end{newpage}
}

% --- ABSTRACT ---

\renewcommand{\abstract}[2]
{
\begin{newpage}
	\thispagestyle{empty}
	\setlength{\baselineskip}{1.5\baselineskip} % Espacamento: 1.5
	\begin{center}
		\textbf{ABSTRACT} \\ [1.5\baselineskip]
	\end{center}
	\noindent{\setlength{\baselineskip}{1.5\baselineskip}#1} % Texto

	\vspace{1.5\baselineskip}	
	\noindent Keywords: {#2} % Palavras-chave
\end{newpage}
}

% --- SUMARIO ---

\newcommand{\sumario}
{
	\thispagestyle{empty}
	\setlength{\baselineskip}{1.0\baselineskip} % Espacamento: 0.7
	\begin{center}
		\textbf{SUM\'ARIO} \\ [1.5\baselineskip]
	\end{center}
    
	\@starttoc{toc}
	
	\newpage
        \setlength{\baselineskip}{1.5\baselineskip} % Espacamento: 1.5
}


\usepackage{tocloft}

% --- LISTA DE FIGURAS ---

\usepackage{chngcntr} 
\counterwithout{figure}{chapter}
\counterwithout{table}{chapter}

\renewcommand{\cftfigpresnum}{FIGURA \ }
\setlength{\cftfignumwidth}{6em}
\renewcommand{\cftfigaftersnum}{ \ -- \ }
\renewcommand{\thefigure}{\arabic{figure}}

\newcommand{\listafiguras}
{
\begin{newpage}
	\thispagestyle{empty}
	\setlength{\baselineskip}{1.5\baselineskip} % Espacamento: 1.5

	\begin{center}
		\textbf{LISTA DE FIGURAS} \\ [1.5\baselineskip]
	\end{center}
	\@starttoc{lof}
\end{newpage}
}

% --- LISTA DE TABELAS ---

\renewcommand{\cfttabpresnum}{TABELA \ }
\setlength{\cfttabnumwidth}{6em}
\renewcommand{\cfttabaftersnum}{ \ -- \ }
\renewcommand{\thetable}{\arabic{table}}

\newcommand{\listatabelas}
{
\begin{newpage}
	\thispagestyle{empty}
	\setlength{\baselineskip}{1.5\baselineskip} % Espacamento: 1.5

	\begin{center}
		\textbf{LISTA DE TABELAS} \\ [1.5\baselineskip]
	\end{center}
	\@starttoc{lot}
\end{newpage}
}

%% LISTA DE EXEMPLOS
\newcommand{\acronymlistname}{LISTA DE SIGLAS}
\newlistof{acronym}{loac}{\acronymlistname}
\newcommand{\acronym}[2]{\refstepcounter{acronym}\addtocontents{loac}{\protect #1 \ -- \ #2 \\}}

\newcommand{\sigla}[2]{\acronym{#1}{#2}}

\newcommand{\listasiglas}
{
\begin{newpage}
	\thispagestyle{empty}
	\setlength{\baselineskip}{1.5\baselineskip} % Espacamento: 1.5
	\begin{center}
		\textbf{\acronymlistname} \\ [1.5\baselineskip]
	\end{center}
	\@starttoc{loac}
        \newpage
\end{newpage}
}
%% FIM LISTA DE EXEMPLOS


%\setcounter{tocdepth}{3}

\setlength{\cftbeforechapskip}{\baselineskip}
%\renewcommand{\cftchapfont}{\upshape\bfseries}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}

\setlength{\cftsecindent}{0em}
\renewcommand{\cftsecfont}{\bfseries}

\setlength{\cftsubsecindent}{0em}
\renewcommand{\cftsubsecfont}{\itshape}

\setlength{\cftsubsubsecindent}{0em}
\renewcommand{\cftsubsubsecfont}{\bfseries}

%\usepackage{titlesec}

% --- Titulo de capitulo ---

\newcommand{\capitulo}[1]{\chapter{#1} \thispagestyle{myheadings}}
\renewcommand{\@makechapterhead}[1]{\noindent{\textup{\textbf{\thechapter~#1}}}\vspace{1.5\baselineskip}}

% --- Titulo de secao ---

\newcommand{\secao}[1]{\section{#1}}
\renewcommand{\section}{\@startsection
{section} %Nome
{0} %Nivel
{0mm} %Indentacao
{1.5\baselineskip} % Antes do paragrafo
{1.5\baselineskip} % Depois do paragrafo
{\noindent\bfseries}} % Estilo

% --- Titulo de subsecao ---

\newcommand{\subsecao}[1]{\subsection{#1}}
\renewcommand{\subsection}{\@startsection
{subsection} %Nome
{1} %Nivel
{0mm} %Indentacao
{1.5\baselineskip} % Antes do paragrafo
{1.5\baselineskip} % Depois do paragrafo
{\noindent\itshape}} % Estilo

% --- Titulo de subsubsecao ---

\newcommand{\subsubsecao}[1]{\subsubsection{#1}}
\renewcommand{\subsubsection}{\@startsection
{subsubsection}% %Nome
{2} %Nivel
{0mm} %Indentacao
{1.5\baselineskip} % Antes do paragrafo
{1.5\baselineskip} % Depois do paragrafo
{\noindent\bfseries}} % Estilo

% Conforme a ABNT, haveria mais um nivel.

% --- REFERENCIAS ---

\usepackage[alf]{abntcite}

\def\@makeschapterhead#1{
	%\thispagestyle{empty}
        \thispagestyle{myheadings}
	\begin{center} \textbf{#1}\par \end{center}
        \addcontentsline{toc}{chapter}{\bibname}
	\vspace{1.5\baselineskip}
}

\newcommand{\referencias}[1]
{
	\thispagestyle{myheadings}
        \setlength{\baselineskip}{0.73\baselineskip} % Espacamento: 0.7
	\renewcommand{\bibname}{REFER\^ENCIAS}
	\bibliographystyle{abnt-alf}
	\bibliography{#1}
}

%% APENDICES

\renewcommand{\appendixtocname}{APÊNDICE}


\newcommand{\apendice}[1]{
\newpage
%\thispagestyle{empty}
\setlength{\parindent}{0pt}
\begin{center}\textbf{#1}\end{center}
\vspace{1.5\baselineskip}
%\thispagestyle{myheadings}
}

\newcommand{\apendices}[1]{
\begin{newpage}
\addappheadtotoc
#1
\end{newpage}
}
