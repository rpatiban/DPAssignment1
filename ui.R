shinyUI(pageWithSidebar(
  headerPanel("ShinyCalculator"),
  sidebarPanel(
    textInput(inputId="name1", label="Your name please :"),
 
    numericInput("num1", "Enter 1st number(0 - 100) :", 0, min=0, max=100, step=1),
    numericInput("num2", "Enter 2nd number(0 - 100) :", 0, min=0, max=100, step=1),
    
    radioButtons("op1", "Enter Operation :", c("+" = "1",
                          "-" = "2",
                          "/" = "3",
                          "*" = "4",
                          "sqr" = "5",
                          "sqrt" = "6") , selected = "NONE"),
 
    actionButton("goButton","Go!")
    
    ),
  mainPanel(
        h2("Shiny Calculator output "), textOutput("oName1"),
        p(),
        p("1st number entered"), textOutput("onum1"),
        p("2nd number entered"), textOutput("onum2"),

        p("Result"), textOutput("orslt"),
        br(""), br(""), br(""),br(""),
        h4("Please Note"),
        br("sqr and sqrt functions can occur only on the 1st number"),
        br("The difference is modified to show the absolute difference, i.e., no negative result"),
        br("Result is rounded to 2 digits after the decimal point")
     )
))