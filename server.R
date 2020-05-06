library(shiny)

# Define server logic required to generate and plot a random distribution
shinyServer(function(input, output) {
  
  observeEvent(input$run, {
    total_royalties <- (input$book_price * input$books_sold) * (input$royalty_pct/100)
    per_author_royalties <- (input$book_price * input$books_sold) * ((input$royalty_pct/100) / input$n_authors)
    
    output$total_royalties <- renderText({
      total_royalties
    })
    output$per_author_royalties <- renderText({
      per_author_royalties
    })
  }
  )
  
})