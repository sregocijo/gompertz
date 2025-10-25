x <- NULL

shinyServer(function(input, output, session) {
  require(grofit, quietly=TRUE)
  
  output$uiResults <- renderPlot({
    if(!is.null(input$action))
      if(input$action==0)
        return("")
    else {
      t <- c()
      e <- c()
      if(!is.null(input$t1))
        if(!is.null(input$e1)){
          t <- c(t, input$t1)
          e <- c(e, input$e1)
        }
      if(!is.null(input$t2))
        if(!is.null(input$e2)){
          t <- c(t, input$t2)
          e <- c(e, input$e2)
        }
      if(!is.null(input$t3))
        if(!is.null(input$e3)){
          t <- c(t, input$t3)
          e <- c(e, input$e3)
        }
      if(!is.null(input$t4))
        if(!is.null(input$e4)){
          t <- c(t, input$t4)
          e <- c(e, input$e4)
        }
      if(!is.null(input$t5))
        if(!is.null(input$e5)){
          t <- c(t, input$t5)
          e <- c(e, input$e5)
        }
      if(!is.null(input$t6))
        if(!is.null(input$e6)){
          t <- c(t, input$t6)
          e <- c(e, input$e6)
        }
      if(!is.null(input$t7))
        if(!is.null(input$e7)){
          t <- c(t, input$t7)
          e <- c(e, input$e7)
        }
      if(!is.null(input$t8))
        if(!is.null(input$e8)){
          t <- c(t, input$t8)
          e <- c(e, input$e8)
        }
      if(!is.null(input$t9))
        if(!is.null(input$e9)){
          t <- c(t, input$t9)
          e <- c(e, input$e9)
        }
      if(!is.null(input$t10))
        if(!is.null(input$e10)){
          t <- c(t, input$t10)
          e <- c(e, input$e10)
        }
    }
    ctrl <- grofit.control(suppress.messages=TRUE, model.type=c("gompertz"))
    x <- gcFitModel(t, e, control=ctrl)
#     list(
#       h4()),
#       h4(paste0("Rate = ", round(x$parameters$mu[1], 3))),
#       h4(paste0("Max = ", round(x$parameters$A[1], 3))),
#       if(x[10]=="TRUE")
#         h4("The fit is good.")
#       else 
#         h4("The fit is bad."))
    plot(x)
    text(40,8,paste0("Lag = ", round(x$parameters$lambda[1],3)))
    text(40,7,paste0("Rate = ", round(x$parameters$mu[1], 3)))
    text(40,6,paste0("Max = ", round(x$parameters$A[1], 3)))
  })
})
