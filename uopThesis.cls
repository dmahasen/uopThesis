%%Identification
%%The class identifies itself and the LaTeX version needed
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uopThesis}[2014/08/16 Example class]


 


\LoadClass[oneside,a4,12pt]{book}

 

 

\RequirePackage{setspace}
\RequirePackage{geometry}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
 \RequirePackage{tocloft}
  
 
\geometry{
	a4paper,
	total={170mm,297mm},
	left=40mm,
	top=25mm,
	right=15mm,
	bottom=25mm
}



\newcommand{\@dept}{}
\newcommand{\dept}[1]{\renewcommand{\@dept}{#1}}
\newcommand{\@university}{}
\newcommand{\university}[1]{\renewcommand{\@university}{#1}}

\newcommand{\@degree}{}
\newcommand{\degree}[1]{\renewcommand{\@degree}{#1}}

\newcommand{\@supervisor}{}
\newcommand{\supervisor}[1]{\renewcommand{\@supervisor}{#1}}


\renewcommand{\maketitle}{
	
	\thispagestyle{empty}
	
	\begin{center}
		
		
		\vspace{8cm}
		
		\Large  \textbf{\MakeUppercase  \@title}
		
		\normalsize
		
		\vspace{2cm}
		
		%\normalsize A PROJECT REPORT PRESENTED BY
		
		\vspace{2cm}
		
		\MakeUppercase \@author
		
		\vspace{2cm}
		
		
		Submitted in partial fulfillment of the requirements of the degree of
		
		\vspace{2cm}
		
		\@degree
		
		
		\vspace{4cm}
		
		\@dept
		
		\vspace{1cm}
		
		\@university
		
	\end{center}
	
}


%%% ---- Abstract ---- 
\newenvironment{abstract}{
	\cleardoublepage
	\chapter*{\centering \Large Abstract}
	\thispagestyle{empty}
}


%%% ---- Acknowledgement ---- 
\newenvironment{acknowledgement}{
	\cleardoublepage
	\chapter*{\centering \Large Acknowledgement}
	\thispagestyle{empty}
}

%%% ---- Declaration ---- 

\newenvironment{declaration}{
	\singlespacing %%% MAHASEN
	\cleardoublepage
	\chapter*{\centering \Large Declaration}
	\thispagestyle{empty}
}{
	\flushright
	\vspace{0.5cm}
	\makebox[2in]{\dotfill} \\
	\@author{}\\
	\@date 
	
	\vspace{2cm}
	
	\flushleft
	\vspace{0.5cm}
	\makebox[2in]{\dotfill} \\
	\@supervisor\\
	\@date 
	\vfill
}


%\renewcommand{\contentsname}{ \centering TABLE OF CONTENTS}
\renewcommand{\contentsname}{\hspace*{\fill}\bfseries\Large TABLE OF CONTENTS \hspace*{\fill}}   
\renewcommand{\listtablename}{\hspace*{\fill}\bfseries\Large LIST OF TABLES \hspace*{\fill}}   
\renewcommand{\listfigurename}{\hspace*{\fill}\bfseries\Large LIST OF FIGURES \hspace*{\fill}}   
%\renewcommand{\listabrname}{\hspace*{\fill}\bfseries\Large LIST OF ABREVIATIONS \hspace*{\fill}}   
%%% --- Change chapter title ---

\titleformat{\chapter}[display]
{\Large \bfseries \centering}{CHAPTER\ \thechapter}{15pt}{\MakeUppercase}{\large}
\titlespacing*{\chapter}{-10pt}{-20pt}{45pt}


\setlength{\cftbeforechapskip}{15pt}
%\renewcommand{\cftchapafterpnum}{\vspace{10pt}}
% Change table of content

\titlecontents{chapter}
[0pt]% <left>
{\bfseries}% <above-code>
{ \MakeUppercase{\chaptername}\ \thecontentslabel \ : \ \MakeUppercase }% <numbered-entry-format>
{}% <numberless-entry-format>
{\titlerule*[0.8pc]{.}\contentspage}





