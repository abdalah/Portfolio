
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output, session) {
   
   output$image <- renderImage({
      if(is.null(input$tabs))
         return(NULL)
      if(input$tabs == "Home"){
         return(list(
            src = "me.JPG",
            contentType = "image/png",
            alt = "Face"
         ))}
      else if(input$tabs == "Contact Me")
         return(list(
            src = "courses.jpg",
            contentType = "image/png",
            alt = "Face"
         ))
      else if(input$tabs == "Education"){
         return(list(
            src = "education.jpg",
            contentType = "image/png",
            alt = "Face"
         ))}
      else if(input$tabs == "Job Experience"){
         return(list(
            src = "job.jpg",
            contentType = "image/png",
            alt = "Face"
         ))}
      else if(input$tabs == "Resume" | input$tabs == "Projects"){
         return(list(
            src = "resume.jpg",
            contentType = "image/png",
            alt = "Face"
         ))}
   }, deleteFile = FALSE)
   
})