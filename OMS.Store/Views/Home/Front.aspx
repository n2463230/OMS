<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" MasterPageFile="~/Views/Shared/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    File Uploader Test
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script src="<%:ConfigurationManager.AppSettings["URL"]%>Scripts/Uploader/dropzone.js"
        type="text/javascript"></script>
    <script type="text/javascript" language="javascript">
        //        var Dropzone = require("dropzone");
        Dropzone.autoDiscover = false;
        $(function () {
            // Now that the DOM is fully loaded, create the dropzone, and setup the 
            // event listeners


            $("#some-dropzone").dropzone({
                /* config here */
                init: function () {
                    // Hack: Add the dropzone class to the element
                    $(this.element).addClass("dropzone");
                },
                url: 'Home/UploadFile',
                paramName: "files", // The name that will be used to transfer the file
                maxFilesize: 102, // MB
            });
        });

function Save() {

    Dropzone.options.someDropzone = {
        accept: function (file, done) {
            // Test if the file is valid
           if (file.name == "Tulips.jpg") {
                    done("Naha, you don't.");
                }

            else {
                done(); // All good
            }
        },
        init: function () {
            // Setup event listeners if necessary, example:
            this.on("success", function () { alert("Thank you for uploading a file."); });
        }
    };

//            $("#myId").dropzone({
//                url: 'Home/UploadFile',
//                maxFiles: 1,
//                maxfilesexceeded: function (file) {
//                    this.removeAllFiles();
//                    this.addFile(file);
//                },
//                accept: function (file, done) {
//                if (file.name == "justinbieber.jpg") {
//                    done("Naha, you don't.");
//                }
//                else {
////                    window.Dropzone($("#myId"), { url: "Home/UploadFile" })
////                    console.log("uploaded");
//this.addFile(file);
//                    done();
//                }

//            },
//            })
//            var myDropzone = $("#myId");

//            myDropzone.on("sending", function (file, xhr, formData) {
//                formData.append("filesize"); // Will send the filesize along with the file as POST data.
//                //    formData.append("filesize", file.size); // Will send the filesize along with the file as POST data.
//                
//            });

//            myDropzone.on("addedfile", function (file) {
//                /* Maybe display some more file information on your page */
//            });

//            myDropzone.on("complete", function (file) {
//                myDropzone.removeFile(file);
//            });

//           
//        Dropzone.options.myAwesomeDropzone = {
//            maxFiles: 1,
//            paramName: "file", // The name that will be used to transfer the file
//            maxFilesize: 2, // MB
//            accept: function (file, done) {
//                if (file.name == "justinbieber.jpg") {
//                    done("Naha, you don't.");
//                }
//                else {
//                    window.Dropzone($("#myId"), { url: "Home/UploadFile" })
//                    console.log("uploaded");
//                    done();
//                }

//            },
//            init: function () {
//                this.on("maxfilesexceeded", function (file) {
//                    alert("No moar files please!");
//                });
//            }
//        };
////            console.log(window.Dropzone);
//            window.Dropzone($("#myId"), { url: "Home/UploadFile" })
////            var myDropzone = new Dropzone("div#myId", { url: "Home/UploadFile/post" });
        }
    </script>
    <div style="background: #fff; width: 982px; height: 100px;" id="some-dropzone">
        <form action="Home/UploadFile" class="dropzone" id="my-awesome-dropzone">
        <%--<input type="file" name="file" id="myId" />
        <a href="#" onclick="return Save();" class="button add">Add</a>--%>
        </form>
    </div>
    <!-- Begin Main -->
    <div id="main" style="display: none;">
        <!-- Begin Slider -->
        <div id="slider">
            <!-- Begin Slider Items -->
            <div class="slider-items">
                <ul>
                    <li>
                        <img src="Content/images/slide-img1.jpg" alt="First Slide Image" />
                        <div class="slide-entry">
                            <h2>
                                Donec ac lorem ac</h2>
                            <h3>
                                Donec ac lorem ac ligula</h3>
                            <p>
                                Vivamus in enim eros, ut mattis nibh. Nullam orci urna, tristique ut vulputate at,
                                accumsan nec nibh. Nunc accumsan nulla vitae mauris suscipit consequat. Aliquam
                                erat volutpat. Sed pretium consequat erat porttitor scelerisque. Morbi vitae felis
                                elit. Quisque sed pharetra sem.</p>
                            <a href="#" class="more" title="Learn More">Learn More</a>
                        </div>
                    </li>
                    <li>
                        <img src="Content/images/slide-img1.jpg" alt="Second Slide Image" />
                        <div class="slide-entry">
                            <h2>
                                Donec ac lorem ac</h2>
                            <h3>
                                Donec ac lorem ac ligula</h3>
                            <p>
                                Vivamus in enim eros, ut mattis nibh. Nullam orci urna, tristique ut vulputate at,
                                accumsan nec nibh. Nunc accumsan nulla vitae mauris suscipit consequat. Aliquam
                                erat volutpat. Sed pretium consequat erat porttitor scelerisque. Morbi vitae felis
                                elit. Quisque sed pharetra sem.</p>
                            <a href="#" class="more" title="Learn More">Learn More</a>
                        </div>
                    </li>
                    <li>
                        <img src="Content/images/slide-img1.jpg" alt="Third Slide Image" />
                        <div class="slide-entry">
                            <h2>
                                Donec ac lorem ac</h2>
                            <h3>
                                Donec ac lorem ac ligula</h3>
                            <p>
                                Vivamus in enim eros, ut mattis nibh. Nullam orci urna, tristique ut vulputate at,
                                accumsan nec nibh. Nunc accumsan nulla vitae mauris suscipit consequat. Aliquam
                                erat volutpat. Sed pretium consequat erat porttitor scelerisque. Morbi vitae felis
                                elit. Quisque sed pharetra sem.</p>
                            <a href="#" class="more" title="Learn More">Learn More</a>
                        </div>
                    </li>
                </ul>
                <div class="cl">
                    &nbsp;</div>
            </div>
            <!-- End Slider Items -->
            <!-- Begin Slider Nav -->
            <div class="slider-nav">
                <ul>
                    <li class="first"><a href="#" title="First Slide"><span>
                        <img src="Content/images/slide-nav-img1.jpg" alt="First Slide Image" /></span> </a>
                        <span class="slide-sep">&nbsp;</span> </li>
                    <li><a href="#" title="Second Slide"><span>
                        <img src="Content/images/slide-nav-img2.jpg" alt="Second Slide Image" /></span>
                    </a><span class="slide-sep">&nbsp;</span> </li>
                    <li class="last"><a href="#" title="Third Slide"><span>
                        <img src="Content/images/slide-nav-img3.jpg" alt="Third Slide Image" /></span> </a>
                    </li>
                </ul>
                <div class="cl">
                    &nbsp;</div>
            </div>
            <!-- End Slider Nav -->
        </div>
        <!-- End Slider -->
        <!-- Begin Content -->
        <div id="content">
            <div class="top">
            </div>
            <!-- Begin Inner -->
            <div class="inner">
                <div id="products">
                    <h2>
                        Newest Models</h2>
                    <!-- Begin Row -->
                    <div class="row">
                        <div class="product">
                            <div class="img-box">
                                <div class="box-frame">
                                    &nbsp;</div>
                                <img src="Content/images/product-img1.jpg" alt="Product Image" />
                                <a href="#" class="more" title="View More">View More</a>
                            </div>
                            <div class="pr-entry">
                                <h4>
                                    Model name</h4>
                                <span class="pr-number">Product: 12</span>
                                <p>
                                    Nunc et eros felis. Donec ullamcorper faucibus lectus, dictum eleifend justo eleif-end
                                    non. Mauris venenatis lorem tincidunt neque imperdiet molestie sit amet dictum purus.</p>
                                <span class="pr-price"><span>$</span>1999<sup>.99</sup></span>
                            </div>
                        </div>
                        <div class="product">
                            <div class="img-box">
                                <div class="box-frame">
                                    &nbsp;</div>
                                <img src="Content/images/product-img2.jpg" alt="Product Image" />
                                <a href="#" class="more" title="View More">View More</a>
                            </div>
                            <div class="pr-entry">
                                <h4>
                                    Model name</h4>
                                <span class="pr-number">Product: 24</span>
                                <p>
                                    Nunc et eros felis. Donec ullamcorper faucibus lectus, dictum eleifend justo eleif-end
                                    non. Mauris venenatis lorem tincidunt neque imperdiet molestie sit amet dictum purus.</p>
                                <span class="pr-price"><span>$</span>1399<sup>.99</sup></span>
                            </div>
                        </div>
                        <div class="product pr-last">
                            <div class="img-box">
                                <div class="box-frame">
                                    &nbsp;</div>
                                <img src="Content/images/product-img3.jpg" alt="Product Image" />
                                <a href="#" class="more" title="View More">View More</a>
                            </div>
                            <div class="pr-entry">
                                <h4>
                                    Model name</h4>
                                <span class="pr-number">Product: 33</span>
                                <p>
                                    Nunc et eros felis. Donec ullamcorper faucibus lectus, dictum eleifend justo eleif-end
                                    non. Mauris venenatis lorem tincidunt neque imperdiet molestie sit amet dictum purus.</p>
                                <span class="pr-price"><span>$</span>1299<sup>.99</sup></span>
                            </div>
                        </div>
                        <div class="cl">
                            &nbsp;</div>
                    </div>
                    <!-- End Row -->
                    <!-- Begin Row -->
                    <div class="row last">
                        <div class="product">
                            <div class="img-box">
                                <div class="box-frame">
                                    &nbsp;</div>
                                <img src="Content/images/product-img4.jpg" alt="Product Image" />
                                <a href="#" class="more" title="View More">View More</a>
                            </div>
                            <div class="pr-entry">
                                <h4>
                                    Model name</h4>
                                <span class="pr-number">Product: 41</span>
                                <p>
                                    Nunc et eros felis. Donec ullamcorper faucibus lectus, dictum eleifend justo eleif-end
                                    non. Mauris venenatis lorem tincidunt neque imperdiet molestie sit amet dictum purus.</p>
                                <span class="pr-price"><span>$</span>2999<sup>.99</sup></span>
                            </div>
                        </div>
                        <div class="product">
                            <div class="img-box">
                                <div class="box-frame">
                                    &nbsp;</div>
                                <img src="Content/images/product-img5.jpg" alt="Product Image" />
                                <a href="#" class="more" title="View More">View More</a>
                            </div>
                            <div class="pr-entry">
                                <h4>
                                    Model name</h4>
                                <span class="pr-number">Product: 2</span>
                                <p>
                                    Nunc et eros felis. Donec ullamcorper faucibus lectus, dictum eleifend justo eleif-end
                                    non. Mauris venenatis lorem tincidunt neque imperdiet molestie sit amet dictum purus.</p>
                                <span class="pr-price"><span>$</span>3999<sup>.99</sup></span>
                            </div>
                        </div>
                        <div class="product pr-last">
                            <div class="img-box">
                                <div class="box-frame">
                                    &nbsp;</div>
                                <img src="Content/images/product-img6.jpg" alt="Product Image" />
                                <a href="#" class="more" title="View More">View More</a>
                            </div>
                            <div class="pr-entry">
                                <h4>
                                    Model name</h4>
                                <span class="pr-number">Product: 9</span>
                                <p>
                                    Nunc et eros felis. Donec ullamcorper faucibus lectus, dictum eleifend justo eleif-end
                                    non. Mauris venenatis lorem tincidunt neque imperdiet molestie sit amet dictum purus.</p>
                                <span class="pr-price"><span>$</span>1599<sup>.99</sup></span>
                            </div>
                        </div>
                        <div class="cl">
                            &nbsp;</div>
                    </div>
                    <!-- End Row -->
                </div>
            </div>
            <!-- End Inner -->
        </div>
        <!-- End Content -->
    </div>
    <!-- End Main -->
</asp:Content>
