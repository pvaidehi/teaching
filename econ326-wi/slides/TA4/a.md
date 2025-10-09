
%---------------------------------------------------------------------
\begin{frame}{Data}
\begin{itemize}
\item Intensensal survey data in 1995 
\begin{itemize}
    \item Focus on men born between 1950 and 1972
\end{itemize}   
\item Match with district-level census data and number of schools built in each district
\end{itemize}
\end{frame}
%---------------------------------------------------------------------

%---------------------------------------------------------------------
\begin{frame}{Empirical Strategy (I)}
\begin{itemize}
\item Goal: Estimate the effect of INPRES on schooling and labour market outcomes.
\item \pause Key idea: Children born before 1962 were 12 years or older in 1974 and were not affected by the program.
\item \pause So children in Indonesia belong to one of these cells:
\end{itemize}
\pause{
\begin{table}
\scriptsize
\centering
\begin{tabular}{|c|c|c|}
\hline
    & \multicolumn{2}{|c|}{\textbf{INPRES Intensity in Region of Birth}}  \\
    \hline
    \textbf{Cohorts} & \textbf{High} & \textbf{Low}  \\
\hline 
\textbf{(A)} Aged 2-6 in 1974:  & \rule{0pt}{15pt}  \textcolor{blue}{High Exposure to INPRES} & \rule{0pt}{15pt} \textcolor{gray}{Low Exposure to INPRES} \\
\hline
\textbf{(B)} Aged 12-17 in 1974:  & \rule{0pt}{15pt} \textcolor{gray}{Low Exposure to INPRES} & \rule{0pt}{15pt} \textcolor{gray}{Low Exposure to INPRES} \\
\hline
\end{tabular}
\end{table}
}
\end{frame}
%---------------------------------------------------------------------

%---------------------------------------------------------------------
\begin{frame}{Empirical Strategy (II)}
\begin{table}
\scriptsize
\centering
\begin{tabular}{|c|c|c|}
\hline
    & \multicolumn{2}{|c|}{\textbf{INPRES Intensity in Region of Birth}}  \\
    \hline
    \textbf{Cohorts} & \textbf{High} & \textbf{Low}  \\
\hline 
\textbf{(A)} Aged 2-6 in 1974:  & \rule{0pt}{15pt}  \textcolor{blue}{High Exposure to INPRES} & \rule{0pt}{15pt} \textcolor{gray}{Low Exposure to INPRES} \\
\hline
\textbf{(B)} Aged 12-17 in 1974:  & \rule{0pt}{15pt} \textcolor{gray}{Low Exposure to INPRES} & \rule{0pt}{15pt} \textcolor{gray}{Low Exposure to INPRES} \\
\hline
\end{tabular}
\end{table}

\begin{itemize}
    \item \pause Naive approach: Compare cohorts A and B to estimate the effect of INPRES
    \item \pause But this can underestimate the actual effects of INPRES:
    \begin{itemize}
        \item \pause Only those in high-intensity regions get the full benefits of the policy
    \end{itemize} 
    \item \pause And it's hard to argue that cohorts A and B \textit{only} differ in exposure to INPRES
    \begin{itemize}
        \item \pause If Indonesia is experiencing growth over time, we expect cohort A to do better, regardless of whether INPRES is implemented
    \end{itemize}
\end{itemize}
\end{frame}
%---------------------------------------------------------------------

%---------------------------------------------------------------------
\begin{frame}{Empirical Strategy (III)}
\begin{table}
\scriptsize
\centering
\begin{tabular}{|c|c|c|}
\hline
    & \multicolumn{2}{|c|}{\textbf{INPRES Intensity in Region of Birth}}  \\
    \hline
    \textbf{Cohorts} & \textbf{High} & \textbf{Low}  \\
\hline 
\textbf{(A)} Aged 2-6 in 1974:  & \rule{0pt}{15pt}  \textcolor{blue}{High Exposure to INPRES} & \rule{0pt}{15pt} \textcolor{gray}{Low Exposure to INPRES} \\
\hline
\textbf{(B)} Aged 12-17 in 1974:  & \rule{0pt}{15pt} \textcolor{gray}{Low Exposure to INPRES} & \rule{0pt}{15pt} \textcolor{gray}{Low Exposure to INPRES} \\
\hline
\end{tabular}
\end{table}

\begin{itemize}
    \item \pause Another naive approach: Compare high vs low intensity regions 
    \item \pause But this is misleading as well:
    \begin{itemize}
        \item \pause INPRES targeted regions that were worse off to begin with
        \item \pause So we expect people in high-intensity regions to do worse, regardless of INPRES
    \end{itemize} 
\end{itemize}
\end{frame}
%---------------------------------------------------------------------

%---------------------------------------------------------------------
\begin{frame}{Empirical Strategy (IV)}
\begin{table}
\scriptsize
\centering
\begin{tabular}{|c|c|c|}
\hline
    & \multicolumn{2}{|c|}{\textbf{INPRES Intensity in Region of Birth}}  \\
    \hline
    \textbf{Cohorts} & \textbf{High} & \textbf{Low}  \\
\hline 
\textbf{(A)} Aged 2-6 in 1974:  & \rule{0pt}{15pt}  \textcolor{blue}{High Exposure to INPRES} & \rule{0pt}{15pt} \textcolor{gray}{Low Exposure to INPRES} \\
\hline
\textbf{(B)} Aged 12-17 in 1974:  & \rule{0pt}{15pt} \textcolor{gray}{Low Exposure to INPRES} & \rule{0pt}{15pt} \textcolor{gray}{Low Exposure to INPRES} \\
\hline
\end{tabular}
\end{table}

\begin{itemize}
    \item \pause Solution: Use both the variation from cohorts and the variation from intensity and combine the two naive approaches
    \item \pause For each region, we compare the outcomes of cohort A relative to cohort B
    \item \pause Then we compare the changes in outcomes between high and low intensity regions
    \item \pause What is the key assumption for this to work?
    \begin{itemize}
        \item Factors that make high and low intensity regions different affect each cohort identically 
    \end{itemize} 
\end{itemize}
\end{frame}
%---------------------------------------------------------------------

%---------------------------------------------------------------------
\begin{frame}{Empirical Strategy (V)}
\begin{itemize}
    \item This was a classic example of a difference-in-difference strategy
    \item \pause The key identifying assumption: \textbf{Parallel Trends Assumption}
    \begin{itemize}
        \item \pause  In the absence of INPRES, the outcomes of cohorts A and B in high and low intensity regions would have evolved in the same way
    \end{itemize}
\end{itemize}
\begin{figure}
    \centering
    \includegraphics[width=0.5\textwidth]{inputs/diagram1.png}
\end{figure}
\end{frame}
%---------------------------------------------------------------------

%---------------------------------------------------------------------
\begin{frame}{Empirical Strategy (VI)}
\begin{itemize}
    \item Fundamentally untestable assumption
    \item \pause But we can verify its plausibility by looking at pre-trends 
    \item Compare a new placebo cohort (C) to cohort B
    \begin{itemize}
        \item \pause If the outcomes of cohorts B and C evolve the same way, then we have suggestive evidence that there were no different intergenerational effects by region 
    \end{itemize}
\end{itemize}
\pause{
\begin{figure}
    \centering
    \includegraphics[width=0.5\textwidth]{inputs/diagram2.png}
\end{figure}
}
\end{frame}
%---------------------------------------------------------------------

%---------------------------------------------------------------------
\begin{frame}{Empirical Strategy (Regression)}
\begin{itemize}
    \item Let $P_j$ be program intensity in region (number of schools per 1,000 children)
    \item Let $T_i$ be an indicator for cohort A (the young cohort) 
    \item Let $C_j$ be a vector of region characteristics 
    \item Duflor (2001) estimates the effect of the program on schooling ($S_{ijk}$) and earnings $y_{ijk}$ of inidividual $i$ born in region $j$ in year $k$ using the following regression
\end{itemize}
\begin{align*}
    S_{ijk} &= c_1 + \alpha_{1j} + \beta_{1k} + \gamma_1 T_i * P_j + \delta_1 T_i * C_j + \epsilon_{ijk} \\
    y_{ijk} &= c_2 + \alpha_{2j} + \beta_{2k} + \gamma_2 T_i * P_j + \delta_2 T_i * C_j + \nu_{ijk}
\end{align*}
\end{frame}
%---------------------------------------------------------------------

%---------------------------------------------------------------------
\begin{frame}{Empirical Strategy (IV)}
\begin{itemize}
    \item First stage: 
    \begin{equation}
        S_{ijk} = c_1 + \alpha_{1j} + \beta_{1k} + \gamma_1 T_i * P_j + \delta_1 T_i * C_j + \epsilon_{ijk}
    \end{equation}
    \item Reduced form: 
    \begin{equation}
        y_{ijk} = c_2 + \alpha_{2j} + \beta_{2k} + \gamma_2 T_i * P_j + \delta_2 T_i * C_j + \nu_{ijk}
    \end{equation}
    \item Second stage:
    \begin{equation}
        y_{ijk} = c + \alpha_{j} + \beta_{k} + b \hat{S}_{ijk} + \delta T_i * C_j + \nu_{ijk}
    \end{equation}
    \item Coefficient of interest:
    \begin{equation}
        \hat{b} = \frac{\hat{\gamma_2}}{\hat{\gamma_1}}
    \end{equation}
\end{itemize}
\end{frame}
%---------------------------------------------------------------------

%---------------------------------------------------------------------
\begin{frame}{Results (I)}
\begin{itemize}
    \item These are the key results from the diff-in-diff strategy
    \item \pause INPRES raises schooling by 0.12 years and wages by 0.026 log points ($\sim 2.6\%$)
\end{itemize}
\begin{figure}
    \centering
    \includegraphics[width=\textwidth]{inputs/Table3a.png}
\end{figure}
\end{frame}
%---------------------------------------------------------------------

%---------------------------------------------------------------------
\begin{frame}{Results (II)}
\begin{itemize}
    \item Do we believe that INPRES \textit{only} affects wages through education?
    \begin{itemize}
        \item \pause If so, these results imply huge returns to education (over 20\%!)
        \item \pause To see this, take the ratio of both effects above: $\frac{2.6\%}{0.12}$
    \end{itemize}
\end{itemize}
\begin{figure}
    \centering
    \includegraphics[width=\textwidth]{inputs/Table3a.png}
\end{figure}
\end{frame}
%---------------------------------------------------------------------

%---------------------------------------------------------------------
\begin{frame}{Results (III)}
\begin{itemize}
\item More formally: within regions, exposure to INPRES can be used as an IV
\begin{itemize}
    \item The first stage of the IV is the left panel of the table below
    \item And the right panel is its reduced form
\end{itemize}
\end{itemize}
\begin{figure}
    \centering
    \includegraphics[width=\textwidth]{inputs/Table3a.png}
\end{figure}
\end{frame}
%---------------------------------------------------------------------

%---------------------------------------------------------------------
\begin{frame}{Results (IV)}
\begin{itemize}
\item But we have an \textbf{IV relevance} problem
\item The effect of INPRES on schooling lacks significance (coef. $\sim$ std. error) 
\begin{itemize}
    \item To address this, need to move towards a more sophisticated estimation strategy that is beyond the scope of today's session but is conceptually similar
\end{itemize}
\end{itemize}
\begin{figure}
    \centering
    \includegraphics[width=\textwidth]{inputs/Table3a.png}
\end{figure}
\end{frame}
%---------------------------------------------------------------------

%---------------------------------------------------------------------
\begin{frame}{Results (V)}
\begin{itemize}
\item Reassuringly, non-exposed cohorts (``old'' and ``very old'') evolve similarly across high/low intensity regions
\item So we can claim that there's no evidence for differential pre-trends 
\end{itemize}
\begin{figure}
    \centering
    \includegraphics[width=\textwidth]{inputs/Table3b.png}
\end{figure}
\end{frame}
%---------------------------------------------------------------------

%---------------------------------------------------------------------
\begin{frame}{Results (VI)}
\begin{itemize}
\item We can extend the logic of the previous table in two ways:
\begin{itemize}
    \item Compare more than two cohorts
    \item Measure INPRES intensity continuously (as schools built per student)
\end{itemize}
\item This leads to more precise estimates of the returns to education, with smaller values that are more in line with the literature
\item The figure below illustrates how this works: we compute the correlation between INPRES intensity and schooling for each cohort
\end{itemize}
\begin{figure}
    \centering
    \includegraphics[width=0.4\textwidth]{inputs/Figure1.png}
\end{figure}
\end{frame}
%---------------------------------------------------------------------

%---------------------------------------------------------------------
\begin{frame}{Results (VII)}
\begin{itemize}
\item Plot of $\hat{\gamma_1}$ and $\hat{\gamma_2}$ for each cohort
\end{itemize}
\begin{figure}
    \centering
    \includegraphics[width=0.4\textwidth]{inputs/Figure3.png}
\end{figure}
\end{frame}
%---------------------------------------------------------------------


%---------------------------------------------------------------------
\begin{frame}{Results (VIII)}
\begin{itemize}
\item Here are the main results of the paper
\item Returns to education around 7\%
\end{itemize}
\begin{figure}
    \centering
    \includegraphics[width=\textwidth]{inputs/Table7.png}
\end{figure}
\end{frame}
%---------------------------------------------------------------------

%---------------------------------------------------------------------
\begin{frame}{Cost-Benefit Analysis}
\begin{itemize}
\item The paper ends by comparing INPRES's impacts to its costs
\item Three big assumptions author needs to make:
\begin{itemize}
    \item \pause How big is the dead-weight burden of taxes? \pause \textbf{Assumes 0.2-0.6 for each unit of tax}
    \item \pause Does schooling increase earnings by increasing productivity or by signalling/rent capture? \pause \textbf{Assumes the former}
    \item \pause Externalities of education? Assumes none
\end{itemize}
\item \pause Benefit of INPRES, in each year, is $\alpha\times GDP \times S\times\ E$
\item $\alpha$ is the labour share of GDP, $S$ is the share of wages earned by cohort that benefits from INPRES and $E$ is the estimated average effect of the program
\item \pause Estimates costs of building and running INPRES schools
\item \pause Finds that INPRES had an internal rate of return between 9\% and 12\%
\begin{itemize}
    \item Higher than the interest rate of Indonesia's sovereign debt at the time
    \item So it's profitable to fund more school building with government debt
\end{itemize}
\end{itemize}
\end{frame}
%---------------------------------------------------------------------

%---------------------------------------------------------------------
\begin{frame}{Conclusion}
\begin{itemize}
\item INPRES leads to more schooling and more earnings
\item If we use exposure to INPRES (within region) as an IV, we obtain returns to education around 5-10\%
\begin{itemize}
    \item In line with a large literature, including the seminal Angrist \& Krueger (1991) paper
\end{itemize}
\item But there are a few problems with this 
\begin{itemize}
    \item INPRES did more than just school building
    \item Poor regions may catch up with rich regions independently of INPRES
    \item Negative spillovers and general equilibrium effects? Impacts on broader labour markets due to stock of educated workers?
\end{itemize}
\end{itemize}
\end{frame}
%---------------------------------------------------------------------

\section*{Problem Set 2}

%---------------------------------------------------------------------
\begin{frame}{Comments}
\begin{itemize}
    \item When discussing spillover effects from an RCT intervention into the control group:
    \begin{itemize}
        \item It's not that the intervention becomes less effective - it could be more effective depending on the type of spillover
        \item Estimates are biased towards zero if we are (incorrectly) assuming that the control group is not exposed to treatment
    \end{itemize}
    \item Creating categorical variables in Stata, generating numeric variables
    \item Important note: for the control group, even though the beneficiary variable is missing, make sure you assign it a value of zero for the indicator mother or father variables. 
\end{itemize}
\end{frame}
%---------------------------------------------------------------------




%---------------------------------------------------------------------
\begin{frame}
\begin{center}{\LARGE See you next time!}\end{center}
\end{frame}
%---------------------------------------------------------------------


\end{document}
