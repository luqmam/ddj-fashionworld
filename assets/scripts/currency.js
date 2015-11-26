function select_currency(n) {
    if (n == 1) {
       
        $("#euro").hide()
        $("#dkk").hide()
      $("#gpb").show()
     }
    else if (n == 2){
      $("#gpb").hide()
      $("#dkk").hide()
        $("#euro").show()
        
     }
    else if (n == 3) {

      $("#gpb").hide()
        $("#euro").hide()
        $("#dkk").show()
     }
 }