<%@ Page Title="Traditional Indian Clothing | Pakistani Clothes | DDJ-FashionWorld" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
<title>Traditional Indian Pakistani Clothing | DDJ-FashionWorld</title>


     <link rel="stylesheet" type="text/css" href="assets/css/jflow.style.css" /> 
    <script type="text/javascript" src="assets/scripts/jflow.plus.js"></script>
   
    <script type="text/javascript">

        $(document).ready(function () {

            $("#myController").jFlow({

                controller: ".jFlowControl", // must be class, use . sign

                slideWrapper: "#jFlowSlider", // must be id, use # sign

                slides: "#mySlides",  // the div where all your sliding divs are nested in

                selectedWrapper: "jFlowSelected",  // just pure text, no sign

                effect: "flow", //this is the slide effect (rewind or flow)

                width: "843px",  // this is the width for the content-slider

                height: "300px",  // this is the height for the content-slider

                duration: 400,  // time in milliseconds to transition one slide

                pause: 5000, //time between transitions

                prev: ".jFlowPrev", // must be class, use . sign

                next: ".jFlowNext", // must be class, use . sign

                auto: true
            });

        });
    </script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    
   <h2></h2>
    <div id="sliderContainer">
        <div id="mySlides">
            <div id="slide1" class="slide">
                <img src="assets/images/home/scroll/nr.1.jpg"
                    alt="Slide 1 jFlow Plus" />
                <div class="slideContent">
                    <h3>
                        You Asked, jFlow Delivered</h3>
                    <p>
                        It's all about giving back to the development community.</p>
                </div>
            </div>
            <div id="slide2" class="slide">
                <img src="assets/images/home/scroll/nr.2.jpg"
                    alt="Slide 2 jFlow Plus" />
                <div class="slideContent">
                    <h3>
                        W3C Valid</h3>
                    <p>
                        Are you a stickler for writing valid code? So is jFlow.</p>
                </div>
            </div>
            <div id="slide3" class="slide">
                <img src="assets/images/home/scroll/nr.3.jpg"
                    alt="Slide 3 jFlow Plus" />
                <div class="slideContent">
                    <h3>
                        Frequent Code Updates</h3>
                    <p>
                        This slider is actively developed and used by thousands of websites</p>
                </div>
            </div>
            <div id="slide4" class="slide">
                <img src="assets/images/home/scroll/nr.4.jpg"
                    alt="Slide 4 jFlow Plus" />
                <div class="slideContent">
                    <h3>
                        Notice the Pagination?</h3>
                    <p>
                        Click on the paging buttons below to navigate.</p>
                </div>
            </div>
            <div id="slide5" class="slide">
                <img src="assets/images/home/scroll/nr.5.jpg"
                    alt="Slide 5 jFlow Plus" />
                <div class="slideContent">
                    <h3>
                        Notice the Pagination?</h3>
                    <p>
                        Click on the paging buttons below to navigate.</p>
                </div>
            </div>
            <div id="slide6" class="slide">
                <img src="assets/images/home/scroll/nr.6.jpg"
                    alt="Slide 6 jFlow Plus" />
                <div class="slideContent">
                    <h3>
                        Notice the Pagination?</h3>
                    <p>
                        Click on the paging buttons below to navigate.</p>
                </div>
            </div>
            <div id="slide7" class="slide">
                <img src="assets/images/home/scroll/nr.7.jpg"
                    alt="Slide 7 jFlow Plus" />
                <div class="slideContent">
                    <h3>
                        Notice the Pagination?</h3>
                    <p>
                        Click on the paging buttons below to navigate.</p>
                </div>
            </div>
        </div>
        <div id="myController">
            <span class="jFlowControl"></span>
            <span class="jFlowControl"></span>
            <span class="jFlowControl"></span> 
            <span class="jFlowControl"></span>
            <span class="jFlowControl"></span>
             <span class="jFlowControl"></span>
             <span class="jFlowControl"></span>
        </div>
        <div class="jFlowPrev">
        </div>
        <div class="jFlowNext">
        </div>
    </div>
</asp:Content>
