library(shiny)


# Define UI for application that plots random distributions 
shinyUI(pageWithSidebar(
  headerPanel("Book Royalties Calculator"),
  
  # Sidebar with a slider input for number of observations
  sidebarPanel(
    numericInput("book_price", 
                 "Book Price:", 
                 min = 1,
                 max = 100, 
                 value = 30),
    numericInput("books_sold", 
                 "Books Sold:", 
                 min = 1,
                 max = 20000, 
                 value = 2500),
    numericInput("n_authors", 
                 "No. of Authors", 
                 min = 1,
                 max = 10, 
                 value = 2),
    numericInput("royalty_pct", 
                 "Royalty (%):", 
                 min = 0,
                 max = 1, 
                 value = .10),
    actionButton("run",
                 "Run")
  ),

  mainPanel(
    h3("Total Royalties"),
    textOutput("total_royalties"),
    h3("Per Author Royalties"),
    textOutput("per_author_royalties")
  )
))