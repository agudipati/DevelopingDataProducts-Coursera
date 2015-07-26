#output$palindrome <- ''

PalindromeFunc <- function(word)  {
  
  if (toupper(word)==toupper(paste(rev(strsplit(word, NULL)[[1]]), collapse='')))
  {
    cat("Yes, It's a Palindrome!\n")
  }
  else
    
  {
    cat("Sorry, It's NOT a Palindrome!\n")
  }
}

shinyServer(
  function(input, output) {
    output$palindrome <- renderPrint({PalindromeFunc(input$word)})   
  }
)