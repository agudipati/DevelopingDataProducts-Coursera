library(markdown)
# 
# shinyUI(navbarPage("Navbar!",
#   pageWithSidebar(
#     # Application title
#     headerPanel("Check whether a word or Phrase is a Palindrome!"),
#     sidebarPanel(
#       textInput('word', 'Enter a Word or a Phrase!'),
#       
#       submitButton('Submit')
#     ),
#     mainPanel(
#       h4('Is it a Palindrome?'),
#       verbatimTextOutput("palindrome")
#       
#     )
#  )
# )

library(markdown)

shinyUI(navbarPage("Palindrome Checker Game",
                   tabPanel("Palindrome Checker",
                            sidebarLayout(
                              sidebarPanel(
                                textInput('word', 'Enter a Word!'),        
                                submitButton('Submit')
                              ),
                              mainPanel(
                                h4('Is it a Palindrome?'),
                                verbatimTextOutput("palindrome")        
                              )
                            )
                   ),
                   navbarMenu("Help",
                              tabPanel("About",
                                                includeMarkdown("about.md")
                                         
                                       )
                              )
                   )

  )

