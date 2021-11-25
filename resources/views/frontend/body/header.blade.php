<!-- ============================================== HEADER ============================================== -->
<header class="header-style-1"> 
  
    <!-- ============================================== TOP MENU ============================================== -->
    <div class="top-bar animate-dropdown">
      <div class="container">
        <div class="header-top-inner">
          <div class="cnt-account">
            <ul class="list-unstyled">
              <li><a href="#"><i class="icon fa fa-user"></i>@if(session()->get('language') == 'hindi') मेरी प्रोफाइल @else My Account @endif</a></li>
              <li><a href="#"><i class="icon fa fa-heart"></i>@if(session()->get('language') == 'hindi') इच्छा-सूची @else Wishlist @endif
              </a></li>
              <li><a href="#"><i class="icon fa fa-shopping-cart"></i>@if(session()->get('language') == 'hindi') मेरी गाड़ी @else My Cart @endif
              </a></li>
              <li><a href="#"><i class="icon fa fa-check"></i>@if(session()->get('language') == 'hindi') चेक आउट @else Checkout @endif
              </a></li>

              @auth
              <li><a href="{{ route('login') }}"><i class="icon fa fa-user"></i>@if(session()->get('language') == 'hindi') उपयोगकर्ता प्रोफ़ाइल @else User Profile @endif
              </a></li>
                @else
              <li><a href="{{ route('login') }}"><i class="icon fa fa-lock"></i>@if(session()->get('language') == 'hindi') लॉग इन/रजिस्टर @else Login/Register @endif
              </a></li> 
              @endauth
            </ul>
          </div>
          <!-- /.cnt-account -->
          
          <div class="cnt-block">
            <ul class="list-unstyled list-inline">
              <li class="dropdown dropdown-small"> <a href="#" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown"><span class="value">USD </span><b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="#">USD</a></li>
                  <li><a href="#">INR</a></li>
                  <li><a href="#">GBP</a></li>
                </ul>
              </li>
              <li class="dropdown dropdown-small"> <a href="#" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown"><span class="value">                  @if(session()->get('language') == 'hindi') भाषा: नहीं @else Language @endif </span><b class="caret"></b></a>
                <ul class="dropdown-menu">
                  @if(session()->get('language') == 'hindi')
                  <li><a href="{{ route('english.language') }}">English</a></li>
                  @else
                  <li><a href="{{ route('hindi.language') }}">हिंदी</a></li>
                  @endif
                </ul>
              </li>
            </ul>
            <!-- /.list-unstyled --> 
          </div>
          <!-- /.cnt-cart -->
          <div class="clearfix"></div>
        </div>
        <!-- /.header-top-inner --> 
      </div>
      <!-- /.container --> 
    </div>
    <!-- /.header-top --> 
    <!-- ============================================== TOP MENU : END ============================================== -->
    <div class="main-header">
      <div class="container">
        <div class="row">
          <div class="col-xs-12 col-sm-12 col-md-3 logo-holder"> 
            <!-- ============================================================= LOGO ============================================================= -->
            <div class="logo"> <a href="{{ url('/') }}"> <img src="{{ asset('frontend/assets/images/logo.png') }}" alt="logo"> </a> </div>
            <!-- /.logo --> 
            <!-- ============================================================= LOGO : END ============================================================= --> </div>
          <!-- /.logo-holder -->
          
          <div class="col-xs-12 col-sm-12 col-md-7 top-search-holder"> 
            <!-- /.contact-row --> 
            <!-- ============================================================= SEARCH AREA ============================================================= -->
            <div class="search-area">
              <form>
                <div class="control-group">
                  <ul class="categories-filter animate-dropdown">
                    <li class="dropdown"> <a class="dropdown-toggle"  data-toggle="dropdown" href="category.html">@if(session()->get('language') == 'hindi') श्रेणियाँ @else Categories @endif
                      <b class="caret"></b></a>
                      <ul class="dropdown-menu" role="menu" >
                        <li class="menu-header">@if(session()->get('language') == 'hindi') संगणक @else Computer @endif
                        </li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="category.html">@if(session()->get('language') == 'hindi') - कपड़े @else - Clothing @endif
                        </a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="category.html">@if(session()->get('language') == 'hindi') - इलेक्ट्रॉनिक्स @else - Electronics @endif
                        </a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="category.html">@if(session()->get('language') == 'hindi') - जूते @else - Shoes @endif
                        </a></li>
                        <li role="presentation"><a role="menuitem" tabindex="-1" href="category.html">@if(session()->get('language') == 'hindi') - घड़ियों @else - Watches @endif
                        </a></li>
                      </ul>
                    </li>
                  </ul>
                  <input class="search-field" placeholder="Search here..." />
                  <a class="search-button" href="#" ></a> </div>
              </form>
            </div>
            <!-- /.search-area --> 
            <!-- ============================================================= SEARCH AREA : END ============================================================= --> </div>
          <!-- /.top-search-holder -->
          
          <div class="col-xs-12 col-sm-12 col-md-2 animate-dropdown top-cart-row"> 
            <!-- ============================================================= SHOPPING CART DROPDOWN ============================================================= -->
            
            <div class="dropdown dropdown-cart"> <a href="#" class="dropdown-toggle lnk-cart" data-toggle="dropdown">
              <div class="items-cart-inner">
                <div class="basket"> <i class="glyphicon glyphicon-shopping-cart"></i> </div>
                <div class="basket-item-count"><span class="count">2</span></div>
                <div class="total-price-basket"> <span class="lbl">@if(session()->get('language') == 'hindi') गाड़ी - @else cart - @endif
                </span> <span class="total-price"> <span class="sign">$</span><span class="value">600.00</span> </span> </div>
              </div>
              </a>
              <ul class="dropdown-menu">
                <li>
                  <div class="cart-item product-summary">
                    <div class="row">
                      <div class="col-xs-4">
                        <div class="image"> <a href="detail.html"><img src="{{ asset('frontend/assets/images/cart.jpg') }}" alt=""></a> </div>
                      </div>
                      <div class="col-xs-7">
                        <h3 class="name"><a href="index.php?page-detail">@if(session()->get('language') == 'hindi') सरल उत्पाद @else Simple Product @endif
                        </a></h3>
                        <div class="price">$600.00</div>
                      </div>
                      <div class="col-xs-1 action"> <a href="#"><i class="fa fa-trash"></i></a> </div>
                    </div>
                  </div>
                  <!-- /.cart-item -->
                  <div class="clearfix"></div>
                  <hr>
                  <div class="clearfix cart-total">
                    <div class="pull-right"> <span class="text">@if(session()->get('language') == 'hindi') उप कुल : @else Sub Total : @endif
                    </span><span class='price'>$600.00</span> </div>
                    <div class="clearfix"></div>
                    <a href="checkout.html" class="btn btn-upper btn-primary btn-block m-t-20">@if(session()->get('language') == 'hindi') चेक आउट @else Checkout @endif
                    </a> </div>
                  <!-- /.cart-total--> 
                  
                </li>
              </ul>
              <!-- /.dropdown-menu--> 
            </div>
            <!-- /.dropdown-cart --> 
            
            <!-- ============================================================= SHOPPING CART DROPDOWN : END============================================================= --> </div>
          <!-- /.top-cart-row --> 
        </div>
        <!-- /.row --> 
        
      </div>
      <!-- /.container --> 
      
    </div>
    <!-- /.main-header --> 
    
    <!-- ============================================== NAVBAR ============================================== -->
    <div class="header-nav animate-dropdown">
      <div class="container">
        <div class="yamm navbar navbar-default" role="navigation">
          <div class="navbar-header">
         <button data-target="#mc-horizontal-menu-collapse" data-toggle="collapse" class="navbar-toggle collapsed" type="button"> 
         <span class="sr-only">@if(session()->get('language') == 'hindi') टॉगल से संचालित करना @else Toggle navigation @endif
        </span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
          </div>
          <div class="nav-bg-class">
            <div class="navbar-collapse collapse" id="mc-horizontal-menu-collapse">
              <div class="nav-outer">
                <ul class="nav navbar-nav">
                  <li class="active dropdown yamm-fw"> <a href="home.html" data-hover="dropdown" class="dropdown-toggle" data-toggle="dropdown">@if(session()->get('language') == 'hindi') घर @else Home @endif
                  </a> </li>
                  <li class="dropdown yamm mega-menu"> <a href="home.html" data-hover="dropdown" class="dropdown-toggle" data-toggle="dropdown">@if(session()->get('language') == 'hindi') कपड़े @else Clothing @endif
                  </a>
                    <ul class="dropdown-menu container">
                      <li>
                        <div class="yamm-content ">
                          <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-2 col-menu">
                              <h2 class="title">@if(session()->get('language') == 'hindi') पुरुषों @else Men @endif
                              </h2>
                              <ul class="links">
                                <li><a href="#">@if(session()->get('language') == 'hindi') कपड़े @else Dresses @endif</a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') जूते @else Shoes @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') जैकेट @else Jackets @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') धूप का चश्मा @else Sunglasses @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') खेल के वस्त्र @else Sport Wear @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') ब्लेजर्स @else Blazers @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') कमीज @else Shirts @endif
                                </a></li>
                              </ul>
                            </div>
                            <!-- /.col -->
                            
                            <div class="col-xs-12 col-sm-6 col-md-2 col-menu">
                              <h2 class="title">@if(session()->get('language') == 'hindi') महिला @else Women @endif
                              </h2>
                              <ul class="links">
                                <li><a href="#">@if(session()->get('language') == 'hindi') हैंडबैग @else Handbags @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') आभूषण @else Jewelry @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') तैराकी पोशाक @else Swimwear @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') सबसे ऊपर @else Tops @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') फ्लैटों @else Flats @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') जूते @else Shoes @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') शीतकालीन पहनें @else Winter Wear @endif
                                </a></li>
                              </ul>
                            </div>
                            <!-- /.col -->
                            
                            <div class="col-xs-12 col-sm-6 col-md-2 col-menu">
                              <h2 class="title">@if(session()->get('language') == 'hindi') लड़के @else Boys @endif
                              </h2>
                              <ul class="links">
                                <li><a href="#">@if(session()->get('language') == 'hindi') खिलौने और खेल @else Toys & Games @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') जीन्स @else Jeans @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') कमीज @else Shirts @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') जूते @else Shoes @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') स्कूल का बस्ता @else School Bags @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') खाने का डिब्बा @else Lunch Box @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') जूते @else Footwear @endif
                                </a></li>
                              </ul>
                            </div>
                            <!-- /.col -->
                            
                            <div class="col-xs-12 col-sm-6 col-md-2 col-menu">
                              <h2 class="title">@if(session()->get('language') == 'hindi') लड़कियाँ @else Girls @endif
                              </h2>
                              <ul class="links">
                                <li><a href="#">@if(session()->get('language') == 'hindi') सैंडल @else Sandals @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') निकर @else Shorts @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') कपड़े @else Dresses @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') आभूषण @else Jewelry @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') बैग @else Bags @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') रात की पोशाक @else Night Dress @endif
                                  s</a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') तैरना पहनें @else Swim Wear @endif
                                </a></li>
                              </ul>
                            </div>
                            <!-- /.col -->
                            
                            <div class="col-xs-12 col-sm-6 col-md-4 col-menu banner-image"> <img class="img-responsive" src="{{ asset('frontend/assets/images/banners/top-menu-banner.jpg') }}" alt=""> </div>
                            <!-- /.yamm-content --> 
                          </div>
                        </div>
                      </li>
                    </ul>
                  </li>
                  <li class="dropdown mega-menu"> 
                  <a href="category.html"  data-hover="dropdown" class="dropdown-toggle" data-toggle="dropdown">@if(session()->get('language') == 'hindi') इलेक्ट्रॉनिक्स हॉट @else Electronics hot @endif
                    <span class="menu-label hot-menu hidden-xs">@if(session()->get('language') == 'hindi') गरम @else hot @endif
                    </span> </a>
                    <ul class="dropdown-menu container">
                      <li>
                        <div class="yamm-content">
                          <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-2 col-menu">
                              <h2 class="title">@if(session()->get('language') == 'hindi') लैपटॉप @else Laptops @endif
                              </h2>
                              <ul class="links">
                                <li><a href="#">@if(session()->get('language') == 'hindi') जुआ @else Gaming @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') लैपटॉप की खाल @else Laptop Skins @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') सेब @else Apple @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') गड्ढा @else Dell @endif
                                </a></li>
                                <li><a href="#">Lenovo  </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') माइक्रोसॉफ्ट @else Microsoft @endif
                                </a></li>
                                <li><a href="#">Asus</a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') एडेप्टर @else Adapters @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') बैटरियों @else Batteries @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') कूलिंग पैड @else Cooling Pads @endif
                                </a></li>
                              </ul>
                            </div>
                            <!-- /.col -->
                            
                            <div class="col-xs-12 col-sm-12 col-md-2 col-menu">
                              <h2 class="title">@if(session()->get('language') == 'hindi') डेस्कटॉप @else Desktops @endif
                              </h2>
                              <ul class="links">
                                <li><a href="#">@if(session()->get('language') == 'hindi') राउटर और मोडेम @else Routers & Modems @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') सीपीयू, प्रोसेसर @else CPUs, Processors @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') पीसी गेमिंग स्टोर @else PC Gaming Store @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') ग्राफिक्स कार्ड @else Graphics Cards @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') अवयव @else Components @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') वेबकैम @else Webcam @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') मेमोरी (रैम) @else Memory (RAM) @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') motherboards @else Motherboards @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') कीबोर्ड @else Keyboards @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') हेडफोन @else Headphones @endif
                                </a></li>
                              </ul>
                            </div>
                            <!-- /.col -->
                            
                            <div class="col-xs-12 col-sm-12 col-md-2 col-menu">
                              <h2 class="title">@if(session()->get('language') == 'hindi') कैमरों @else Cameras @endif
                              </h2>
                              <ul class="links">
                                <li><a href="#">@if(session()->get('language') == 'hindi') सामान @else Accessories @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') दूरबीन @else Binoculars @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') दूरबीन @else Telescopes @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') कैमकोर्डर @else Camcorders @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') डिजिटल @else Digital @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') फिल्म कैमरा @else Film Cameras @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') चमक @else Flashes @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') लेंस @else Lenses @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') निगरानी @else Surveillance @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') ट्राइपॉड @else Tripods @endif
                                </a></li>
                              </ul>
                            </div>
                            <!-- /.col -->
                            <div class="col-xs-12 col-sm-12 col-md-2 col-menu">
                              <h2 class="title">@if(session()->get('language') == 'hindi') मोबाइल फोन @else Mobile Phones @endif
                              </h2>
                              <ul class="links">
                                <li><a href="#">@if(session()->get('language') == 'hindi') सेब @else Apple @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') सैमसंग @else Samsung @endif
                                </a></li>
                                <li><a href="#">Lenovo</a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') मोटोरोला @else Motorola @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') लेईको @else LeEco @endif
                                </a></li>
                                <li><a href="#">Asus</a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') एसर @else Acer @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') सामान @else Accessories @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') हेडफोन @else Headphones @endif
                                </a></li>
                                <li><a href="#">@if(session()->get('language') == 'hindi') मेमोरी कार्ड्स @else Memory Cards @endif
                                </a></li>
                              </ul>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-4 col-menu custom-banner"> <a href="#"><img alt="" src="{{ asset('frontend/assets/images/banners/banner-side.png') }}"></a> </div>
                          </div>
                          <!-- /.row --> 
                        </div>
                        <!-- /.yamm-content --> </li>
                    </ul>
                  </li>
                  <li class="dropdown hidden-sm"> <a href="category.html">@if(session()->get('language') == 'hindi') स्वास्थ्य और सौंदर्य नया @else Health & Beauty new @endif
                    <span class="menu-label new-menu hidden-xs">new</span> </a> </li>
                  <li class="dropdown hidden-sm"> <a href="category.html">@if(session()->get('language') == 'hindi') घड़ियों @else Watches @endif
                  </a> </li>
                  <li class="dropdown"> <a href="contact.html">@if(session()->get('language') == 'hindi') आभूषण @else Jewelry @endif
                  </a> </li>
                  <li class="dropdown"> <a href="contact.html">@if(session()->get('language') == 'hindi') जूते @else Shoes @endif
                  </a> </li>
                  <li class="dropdown"> <a href="contact.html">@if(session()->get('language') == 'hindi') बच्चे और लड़कियां @else Kids & Girls @endif
                  </a> </li>
                  <li class="dropdown"> <a href="#" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">@if(session()->get('language') == 'hindi') पृष्ठों @else Pages @endif
                  </a>
                    <ul class="dropdown-menu pages">
                      <li>
                        <div class="yamm-content">
                          <div class="row">
                            <div class="col-xs-12 col-menu">
                              <ul class="links">
                                <li><a href="home.html">@if(session()->get('language') == 'hindi') घर @else Home @endif
                                </a></li>
                                <li><a href="category.html">@if(session()->get('language') == 'hindi') श्रेणी @else Category @endif
                                </a></li>
                                <li><a href="detail.html">@if(session()->get('language') == 'hindi') विस्तार @else Detail @endif
                                </a></li>
                                <li><a href="shopping-cart.html">@if(session()->get('language') == 'hindi') शॉपिंग कार्ट समरी @else Shopping Cart Summary @endif
                                </a></li>
                                <li><a href="checkout.html">@if(session()->get('language') == 'hindi') चेक आउट @else Checkout @endif
                                </a></li>
                                <li><a href="blog.html">@if(session()->get('language') == 'hindi') ब्लॉग @else Blog @endif
                                </a></li>
                                <li><a href="blog-details.html">@if(session()->get('language') == 'hindi') ब्लॉग विवरण @else Blog Detail @endif
                                </a></li>
                                <li><a href="contact.html">@if(session()->get('language') == 'hindi') संपर्क @else Contact @endif
                                </a></li>
                                <li><a href="sign-in.html">@if(session()->get('language') == 'hindi') साइन इन करें @else Sign In @endif
                                </a></li>
                                <li><a href="my-wishlist.html">@if(session()->get('language') == 'hindi') इच्छा-सूची @else Wishlist @endif
                                </a></li>
                                <li><a href="terms-conditions.html">@if(session()->get('language') == 'hindi') नियम व शर्तें @else Terms and Condition @endif
                                </a></li>
                                <li><a href="track-orders.html">@if(session()->get('language') == 'hindi') ट्रैक ऑर्डर @else Track Orders @endif
                                </a></li>
                                <li><a href="product-comparison.html">Product-Comparison</a></li>
                                <li><a href="faq.html">@if(session()->get('language') == 'hindi') उत्पाद-तुलना @else Product-Comparison @endif
                                </a></li>
                                <li><a href="404.html">404</a></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                      </li>
                    </ul>
                  </li>
                  <li class="dropdown  navbar-right special-menu"> <a href="#">@if(session()->get('language') == 'hindi') आज का ऑफर @else Todays offer @endif 							
                  </a> </li>
                </ul>
                <!-- /.navbar-nav -->
                <div class="clearfix"></div>
              </div>
              <!-- /.nav-outer --> 
            </div>
            <!-- /.navbar-collapse --> 
            
          </div>
          <!-- /.nav-bg-class --> 
        </div>
        <!-- /.navbar-default --> 
      </div>
      <!-- /.container-class --> 
      
    </div>
    <!-- /.header-nav --> 
    <!-- ============================================== NAVBAR : END ============================================== --> 
    
  </header>
  
  <!-- ============================================== HEADER : END ============================================== -->