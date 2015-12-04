
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(shinythemes)

shinyUI(bootstrapPage(
   
   theme = shinytheme("flatly"),
   
   HTML('<font color=#e6e6e8 padding-left:20px>'),
   h2("Abdalah El-Barrad", style="padding-left:20px"),
   hr(),
   
   tags$style("
  html{height: 100%;}
  body{min-height:100%;}
body {
              background: -webkit-linear-gradient(top, #122A60, #566EA4); /*Safari 5.1-6*/
              background: -o-linear-gradient(bottom, #122A60, #566EA4); /*Opera 11.1-12*/
              background: -moz-linear-gradient(bottom, #122A60, #566EA4); /*Fx 3.6-15*/
              background: linear-gradient(to bottom, #122A60, #566EA4); /*Standard*/
              }"),
   
   sidebarPanel(
      tags$head(tags$style(
         type="text/css",
         "#image img {max-width: 100%; width: 100%; height: 100%}"
      )),
      imageOutput("image", height = "auto"),
      HTML('<font color=#39528D>
            <p>Phone: <a style="color:#e6e6e8" href="tel:+16145586663">(614) 558-6663</a></p>
           <p>Email: <a style="color:#e6e6e8" href="mailto:ae738513@ohio.edu">ae738513@ohio.edu</a></p>'),
      p("November 2015"),
      HTML('<font color=#e6e6e8>')
   ),
   
   mainPanel(
      HTML('<style type="text/css">
        .row-fluid { width: 50%; }  
           .well { background-color: #000000; }
           .shiny-html-output { font-size: 20px; line-height: 21px; }
           </style>'),
      tags$head(
         tags$style(type = "text/css", "a{color: #e6e6e8;} a:hover{color: #122A60;}")
      ),
      tabsetPanel(id="tabs",
                  tabPanel("Home",
                           
                           h4(strong("About Me")),
                           p("I am currently a junior at Ohio University. I am a dual major in economics and applied mathematics with a minor in computer science. I also work at the Ohio University’s Voinovich School in which I work as a data analyst/research assistant where I evaluate public policy. I enjoy many extra curriculars including the OU math club, OU ACM, the Economics Society, and different multimedia groups. I also enjoy working on different projects on my own such as creating shiny apps and independent research projects. I love learning and I love research. I hope to someday work in a field of research either with the government or in academia.")
                           
                  ),
                  tabPanel("Education",
                           
                           h4(strong("Ohio University")),
                           p("I enjoy learning about a plethora of topics including optimization, complex systems, predictive analytics, machine learning, data science, and much more. As a junior at Ohio University, I am on track to graduate with a dual major in economics and applied mathematics and minoring in computer science by May 2017. I plan on going to graduate school for either mathematics or economics. Below you will find a list of relavent courses that I have taken including this fall semster (2015)."),
                           hr(),
                           tabsetPanel(
                              tabPanel("Computer Science",
                                       p(strong("Data Structures"), em("- Various data structures, algorithms associated with data structures, and analysis of algorithms are explored. Topics include analysis of algorithms, dynamic arrays, tree structures, heaps, balanced trees, dictionaries, graphs and graph algorithms, and the complexity of sorting. Graph algorithms for depth first and breadth first search, shortest path, minimum cost spanning trees, and others are covered. Coverage of built in data structures and algorithms in modern programming languages included.")),
                                       
                                       p(strong("Programming in C++"), em("- Design of software and advanced features of C++. Topics include design of software using UML, generic programming (templates), linked lists, stacks, queues, container classes and iterators, inheritance, derived classes, virtual functions, tree data structures, and recursion"))
                              ),
                              tabPanel("Economics",
                                       p(strong("Economic Statistics"), em("- Statistical methods are developed within an economic context. Fundamental statistical topics include descriptive statistics, basic probability theory, random variables, sampling, estimation, and hypothesis testing.")),
                                       p(strong("Cost Benefit Analysis"), em("- A systematic treatment of all the concepts underlying benefit cost analysis combined with hands on experience in using cost benefit analysis to evaluate actual public projects.")),
                                       
                                       p(strong("Games and Economic Behavior"), em("- Game Theory studies interactions between mutually interdependent players who are aware of this interdependence.")),
                                       
                                       p(strong("Intermediate Macroeconomics"), em("- Factors determining level of nation’s economic activity and responsible for growth and stability in nation’s economy. Part of course devoted to measures of national income while remainder consists of analysis of interrelationships among production, price levels, relative prices, employment, and capital formation.")),
                                       
                                       p(strong("Intermediate Microeconomics"), em("- Price system as allocative mechanism. Price and production policies of individual firms and consumers under alternative market conditions and analysis of these policies on social efficiency of resource allocation.")),
                                       
                                       p(strong("Industrial Orgaization"), em("- Market structures, market conduct, and socialperformance of industries. Emphasis upon firms’ strategic behavior in price and nonprice competition. Topics include oligopolistic pricing, strategic entry deterrence, location strategies, product quality, advertising, and research and development. Economic welfare implications of firms’ behavior examined."))
                              ),
                              tabPanel("Mathematics",
                                       
                                       p(strong("Linear and Nonlinear Optimization"), em("- Solution methods, theory and applications of linear and nonlinear optimization problems. The focus is on the mathematics of efficient optimization algorithms, such as Simplex method and steepest ascent. Applications include production planning, financial models, network problems, game theory.")),
                                       
                                       p(strong("Probability"), em("- A mathematical introduction to univariate probability theory with some applications, particularly to statistics. Topics will include the basic rules of probability, conditional probability, independent events, the Law of total probability, Bayes' Theorem, univariate random variables, discrete and continuous distributions and the density function, expectation, variance, higher moments, and special discrete and continuous distributions such as Bernoulli, binomial, Poisson, uniform, exponential, gamma and normal.")),
                                       
                                       p(strong("Number Theory"), em("- Investigation of properties of the natural numbers. Topics include mathematical induction, factorization, Euclidean algorithm, Diophantine equations, congruences, divisibility, multiplicative functions, and applications to cryptography.")),
                                       
                                       p(strong("Differential Equations"), em("- Ordinary differential equations and their use as models for applications with an emphasis on exact solution methods for linear equations and systems including Laplace transform methods.")),
                                       
                                       p(strong("Linear Algebra"), em("- Practical and theoretical aspects of linear algebra and including both computational and proof-oriented exercises. Topic covered will include: Solutions to linear systems, matrices and matrix algebra, determinants, n-dimensional real vector spaces and subspaces, bases and dimension, linear mappings, matrices of linear mappings, eigenvalues and eigenvectors, diagonalization, inner product spaces, orthogonality and applications.")),
                                       
                                       p(strong("Calculus III"), em("- Third course in calculus and analytic geometry with applications in the sciences and engineering. Includes partial differentiation, multiple integrals, line and surface integrals, and the integral theorems of vector calculus.")),
                                       
                                       p(strong("Discrete Structures"), em("- Discrete mathematics and its application to computer science explored. Foundational mathematical techniques used in computer science are explored in depth: propositional logic, number theory and proofs, sequences and mathematical induction, set theory, counting and combinatorics, discrete probability, functions, recursion, simple analysis of algorithms, and orderings and relations. Applications of these structures to various areas of computer science also covered."))
                              ),
                              tabPanel("Other Courses",

                                       p(strong("Statistical Methods"), em("- Descriptive Statistics in R. Topics include scientific method, hypothesis testing, and design of experiments; sampling, data analysis, regression and correlation, analysis of variance, and parametric and nonparametric statistics."))
                                       
                              ))),
                  tabPanel("Job Experience",
                           
                           h4(strong("Ohio Association of Child Care Agencies")),
                           p("After a month of volunteering at the Voinovich School, I was hired to work on foster care data
                             for the Ohio Association of child Care Agencies. There I generated
                             reports using R and LaTeX. The reports are for the Outcomes Data Project of Ohio foster care agencies"),
                           
                           h4(strong("Voinovich School of Leadership and Public Affairs")),
                           p("Since February 2015, I have been working with a professor at the Voinovich Center on data visualization
                             projects to show data from the Ohio Department of Education's teacher evaluation data and create a shiny
                             app to show different types of graphs and figures. I have also been promoted to be a Voinovich Scholar to
                             work on more research at the Voinovich School"),
                           
                           h4(strong("Center for Electrochemical Engineering Research (CEER)")),
                           p("Towards the end of my freshman year, I spent a month working at the Center for
                             Electrochemical Engineering and Research (CEER). At CEER, I was able to use my skills
                             of web development to update and make improvements to the",
                             a("CEProTECH website", href = "http://ceprotech.com/", target="_blank", style="color:#e6e6e8"), ". I was able
                             to apply what I learned on my own about HTML and CSS and also extend my knowledge to further
                             improve the website.  I learned how to develop and design WordPress websites such as this.
                             I also was the secretary at the front desk were I was in charge of accommodating guests and
                             answering the phone.  I was also assigned to organizing the office and taking photos of
                             different parts of the building, so I can put them on the site. Part of my job is also
                             to create posters for the advisory board meeting and creating blurbs for each employee and some of the equipment.")
                           
                  ),
                  # tabPanel("Projects",
                  #    tabPanel("Ohio Minority App",
                  #       h4("This is where I will describe an app then link it here.")
                  #    )
                  # ),
                  tabPanel("Resume",
                           HTML('<style>
                                #myFrame { width:100%; height:500px; }
                                </style>
                                <iframe src=\"https://drive.google.com/file/d/0B_7Lz1-70I7qOTZveFU0LUZMNE0/preview\" 
                                id="myFrame"></iframe>')
                  ), type = "tabs"
      )
   )
))