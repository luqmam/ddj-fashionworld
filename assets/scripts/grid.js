function init(){
 
    if ($(".aspGrid").length) {

        var id;
        var img;
        var paging;
        var more;

        var size=0;
        var rows=0;
       

        id = $(".aspGrid td:first-child");
        img = $(".aspGrid img") // $("td:nth-child(4) img") 
        paging = $(".aspGrid a[href*='javascript']");
        more = $(".aspGrid td:last-child a");

        size = img.length;  
        
        $(".aspGrid").remove();

        for (i = 0; i <= (size - 1) ; i += 4) {
            $(".customGrid .grid").append("<div class='line'>" +
                "<div class='unit size1of4'><div class='cell'></div></div>" +
                "<div class='unit size1of4'><div class='cell'></div></div>" +
                "<div class='unit size1of4'><div class='cell'></div></div>" +
                "<div class='unit size1of4 lastUnit'><div class='cell'></div></div>" +
                "</div>");


            $(".customGrid .grid .line:eq(" + rows + ") .cell:eq(0)").append(img[i]);
            $(".customGrid .grid .line:eq(" + rows + ") .cell:eq(1)").append(img[i + 1]);
            $(".customGrid .grid .line:eq(" + rows + ") .cell:eq(2)").append(img[i + 2]);
            $(".customGrid .grid .line:eq(" + rows + ") .cell:eq(3)").append(img[i + 3]);

            $(".customGrid .grid .line:eq(" + rows + ") .cell:eq(0)").append(more[i]);
            $(".customGrid .grid .line:eq(" + rows + ") .cell:eq(1)").append(more[i + 1]);
            $(".customGrid .grid .line:eq(" + rows + ") .cell:eq(2)").append(more[i + 2]);
            $(".customGrid .grid .line:eq(" + rows + ") .cell:eq(3)").append(more[i + 3]);

            $(".customGrid .grid .line:eq(" + rows + ") .cell:eq(0)").append(id[i]);
            $(".customGrid .grid .line:eq(" + rows + ") .cell:eq(1)").append(id[i + 1]);
            $(".customGrid .grid .line:eq(" + rows + ") .cell:eq(2)").append(id[i + 2]);
            $(".customGrid .grid .line:eq(" + rows + ") .cell:eq(3)").append(id[i + 3]);

            rows = rows + 1;
        }

        $(".customGrid .paging").append(paging);
       

    }

}