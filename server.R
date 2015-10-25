library(shiny)

shinyServer(
  function(input,output){
  
    output$oName1 <- renderText({paste("Thank you ", input$name1, " , for using this calculator")})
    
    
    output$onum1 <- renderText({input$num1})
    output$onum2 <- renderText({input$num2})
    
    output$orslt <- renderText({
      if (input$goButton>=1){
  
        if(input$op1 ==1) isolate(paste("Sum  :" , isolate(input$num1 + input$num2)))
        else if(input$op1 ==2) isolate(paste("Difference :" , isolate(abs(input$num1 - input$num2))))
        else if(input$op1 ==3) isolate(paste("Division  :" , isolate(round(input$num1/input$num2,2))))
        else if(input$op1 ==4) isolate(paste("Product  :" , isolate(input$num1* input$num2)))
        else if(input$op1 ==5) isolate(paste("Square of 1st number  :" , isolate(input$num1 * input$num1)))
        else if(input$op1 ==6) isolate(paste("Sqr root of 1st number  :" , isolate(round(sqrt(input$num1), 2))))
      }
      #else if (input$goButton==1) "You have pressed it once"
      #else if (input$goButton==2) "You have pressed it twice"
      #else "OK quit pressing it"
      # isolate(paste(input$text1, input$text2))
      
      })

    })
