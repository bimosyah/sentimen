<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Parason Software - Home</title>
  <link rel="icon" href="img/Fevicon.png" type="image/png">

  <link rel="stylesheet" href="<?php echo base_url("assets_home/") ?>vendors/bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="<?php echo base_url("assets_home/") ?>vendors/fontawesome/css/all.min.css">
  <link rel="stylesheet" href="<?php echo base_url("assets_home/") ?>vendors/themify-icons/themify-icons.css">
  <link rel="stylesheet" href="<?php echo base_url("assets_home/") ?>vendors/linericon/style.css">
  <link rel="stylesheet" href="<?php echo base_url("assets_home/") ?>vendors/owl-carousel/owl.theme.default.min.css">
  <link rel="stylesheet" href="<?php echo base_url("assets_home/") ?>vendors/owl-carousel/owl.carousel.min.css">

  <link rel="stylesheet" href="<?php echo base_url("assets_home/") ?>css/style.css">
  <link rel="stylesheet" href="<?php echo base_url('assets/') ?>vendors/datatables.net-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="<?php echo base_url('assets/') ?>vendors/datatables.net-buttons-bs4/css/buttons.bootstrap4.min.css">
</head>

<body>
  <!--================Header Menu Area =================-->
  <header class="header_area">
    <div class="main_menu">
      <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container box_1620">
          <!-- Brand and toggle get grouped for better mobile display -->
          <a class="navbar-brand logo_h" href="index.html"><img src="<?php echo base_url("assets_home/") ?>img/logo.png" alt=""></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
            <ul class="nav navbar-nav menu_nav justify-content-end">
              <!-- <li class="nav-item active"><a class="nav-link" href="index.html">Home</a></li>
              <li class="nav-item"><a class="nav-link" href="feature.html">Feature</a></li>
              <li class="nav-item"><a class="nav-link" href="pricing.html">Price</a>
              <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="blog.html">Blog</a></li>
                  <li class="nav-item"><a class="nav-link" href="blog-details.html">Blog Details</a></li>
                </ul>
              </li>
              <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
            </ul> -->

            <ul class="navbar-right">
              <li class="nav-item">
                <?php if (user_allow([], false)) : ?>
                  <a class="button button-header bg" href="<?php echo base_url("Dashboard") ?>">Dashboard</a>
                <?php else : ?>

                  <a class="button button-header bg" href="<?php echo base_url("Login") ?>">Login</a>
                <?php endif ?>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </div>
  </header>
  <!--================Header Menu Area =================-->


  <main class="side-main">
    <!--================ Hero sm Banner start =================-->
    <section class="hero-banner mb-30px">
      <div class="container">
        <div class="row">
          <div class="col-lg-7">
            <div class="hero-banner__img">
              <img class="img-fluid" src="<?php echo base_url("assets_home/") ?>img/banner/hero-banner.png" alt="">
            </div>
          </div>
          <div class="col-lg-5 pt-5">
            <div class="hero-banner__content">
              <h1>Analisis Sentimen Online Marketplace di Indonesia</h1>
              <p>Online review dapat menjadi alat promosi yang ampuh untuk komunikasi pemasaran.</p>


             
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--================ Hero sm Banner end =================-->

    <!--================ Feature section start =================-->
    <section class="section-margin">
      <div class="">
        <div class="text-center" style="width: 70%;margin: 0 auto;">
          <h2 class="section-intro__title">Label Review</h2>
          <!-- <p class="section-intro__subtitle">Vel aliquam quis, nulla pede mi commodo tristique nam hac. Luctus torquent velit felis commodo pellentesque nulla cras. Tincidunt hacvel alivquam quis nulla pede mi commodo tristique nam hac luctus torquent</p> -->
          <div class="col-md-12">
            <table class="table table-striped table-bordered class-datatable">
              <thead>
                <tr>
                  <th>No</th>
                  <th>Tanggal</th>
                  <th>Sumber</th>
                  <th>Teks</th>
                  <th>Marketplace</th>
                  <th>Klasifikasi</th>
                </tr>

              </thead>
              <tbody>
                <?php foreach ($dataset_data as $key => $value) : ?>
                  <tr>
                    <td><?php echo $key + 1; ?></td>
                    <td><?php echo $value->tanggal ?></td>
                    <td><?php echo $value->sumber ?></td>
                    <td><?php echo $value->teks ?></td>
                    <td>
                      <?php echo $value->nama_marketplace ?>
                    </td>
                    <td>
                      <?php switch ($value->temp_klasifikasi) {
                        case 1:
                          echo '<span class="badge badge-primary">Positif</span>';
                          break;
                        case -1:
                          echo '<span class="badge badge-danger">Negatif</span>';
                          break;
                        case 0:
                          echo '<span class="badge badge-secondary">Netral</span>';
                          break;
                      } ?>
                    </td>
                  </tr>
                <?php endforeach ?>
              </tbody>
            </table>
          </div>
          <br><br>
          <div class="row">
            <div class="col-md-4">
              <div class="card text-white bg-primary">
               <div class="card-body">

                <h5 class="card-title text-white">Positif</h5>
                <h1 class="text-white"><?php echo number_format(($percentage_positif*100),0) . "%"?></h1>
               </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card text-white bg-secondary">
                <div class="card-body">

                <h5 class="card-title text-white">Netral</h5>
                <h1 class="text-white"><?php echo number_format(($percentage_netral*100),0) . "%"?></h1>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card text-white bg-danger">
                <div class="card-body">

                <h5 class="card-title text-white">Negatif</h5>
                <h1 class="text-white"><?php echo number_format(($percentage_negatif*100),0) . "%"?></h1>
                </div>
              </div>
            </div>
      </div>
    </section>
    <!--================ Feature section end =================-->

    <!--================ about section start =================-->
    <section class="section-padding--small bg-magnolia">
      <div class="container">
        <div class="row no-gutters align-items-center">
          <div class="col-md-5 mb-5 mb-md-0">
            <div class="about__content">
              <h2>Grafik Ranking Online Marketplace</h2>
              <p>Ukuran grafik menunjukkan tingkat rekomendasi pada suatu online marketplace</p>
              <!-- <a class="button button-light" href="#">Know More</a> -->
            </div>
          </div>
          <div class="col-md-12 pl-5">
            <div class="card">
              <div class="card-body">
                <h4 class="mb-3">Ranking Marketplace</h4>
                <canvas id="barChart"></canvas>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--================ about section end =================-->
    <!--================ Solution section start =================-->
    <!-- <section class="section-padding--small bg-magnolia">
      <div class="container">
        <div class="row align-items-center pt-xl-3 pb-xl-5">
          <div class="col-lg-6">
            <div class="solution__img text-center text-lg-left mb-4 mb-lg-0">
              <img class="img-fluid" src="<?php echo base_url("assets_home/") ?>img/home/solution.png" alt="">
            </div>
          </div>
          <div class="col-lg-6">
            <div class="solution__content">
              <h2>Simple Solutions for Complex Connections</h2>
              <p>Molestie lorem est faucibus Faucibus erat phasellus placerat proinint aptent pulvinar fusce nostra porta sem platea nec, donec fusce erat Molestie lorem est faucibus faucibus erat phasellus placerat proin aptent pulvinar fusce nostra port</p>
              <a class="button button-light" href="#">Know More</a>
            </div>
          </div>
        </div>
      </div>
    </section> -->
    <!--================ Solution section end =================-->

    <!--================ Pricing section start =================-->
    <!-- <section class="section-margin">
      <div class="container">
        <div class="section-intro pb-85px text-center">
          <h2 class="section-intro__title">Choose Your Plan</h2>
          <p class="section-intro__subtitle">Vel aliquam quis, nulla pede mi commodo tristique nam hac. Luctus torquent velit felis commodo pellentesque nulla cras. Tincidunt hacvel alivquam quis nulla pede mi commodo tristique nam hac luctus torquent</p>
        </div>

        <div class="row">
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="card text-center card-pricing">
              <div class="card-pricing__header">
                <h4>Normal</h4>
                <p>Attend only first day</p>
                <h1 class="card-pricing__price"><span>$</span>45.00</h1>
              </div>
              <ul class="card-pricing__list">
                <li><i class="ti-check"></i>Unlimited Entrance</li>
                <li><i class="ti-check"></i>Comfortable Seat</li>
                <li><i class="ti-check"></i>Paid Certificate</li>
                <li class="unvalid"><i class="ti-close"></i>Day One Workshop</li>
                <li class="unvalid"><i class="ti-close"></i>One Certificate</li>
              </ul>
              <div class="card-pricing__footer">
                <button class="button button-light">Buy Now</button>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="card text-center card-pricing">
              <div class="card-pricing__header">
                <h4>Advanced</h4>
                <p>Attend only first day</p>
                <h1 class="card-pricing__price"><span>$</span>55.00</h1>
              </div>
              <ul class="card-pricing__list">
                <li><i class="ti-check"></i>Unlimited Entrance</li>
                <li><i class="ti-check"></i>Comfortable Seat</li>
                <li><i class="ti-check"></i>Paid Certificate</li>
                <li class="unvalid"><i class="ti-close"></i>Day One Workshop</li>
                <li class="unvalid"><i class="ti-close"></i>One Certificate</li>
              </ul>
              <div class="card-pricing__footer">
                <button class="button button-light">Buy Now</button>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="card text-center card-pricing">
              <div class="card-pricing__header">
                <h4>Ultimate</h4>
                <p>Attend only first day</p>
                <h1 class="card-pricing__price"><span>$</span>65.00</h1>
              </div>
              <ul class="card-pricing__list">
                <li><i class="ti-check"></i>Unlimited Entrance</li>
                <li><i class="ti-check"></i>Comfortable Seat</li>
                <li><i class="ti-check"></i>Paid Certificate</li>
                <li class="unvalid"><i class="ti-close"></i>Day One Workshop</li>
                <li class="unvalid"><i class="ti-close"></i>One Certificate</li>
              </ul>
              <div class="card-pricing__footer">
                <button class="button button-light">Buy Now</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section> -->
    <!--================ Pricing section end =================-->

    <!--================ Testimonial section start =================-->
    <!-- <section class="section-padding bg-magnolia">
      <div class="container">
        <div class="section-intro pb-5 text-center">
          <h2 class="section-intro__title">Client Says Me</h2>
          <p class="section-intro__subtitle">Vel aliquam quis, nulla pede mi commodo tristique nam hac. Luctus torquent velit felis commodo pellentesque nulla cras. Tincidunt hacvel alivquam </p>
        </div>

        <div class="owl-carousel owl-theme testimonial">
          <div class="testimonial__item text-center">
            <div class="testimonial__img">
              <img src="<?php echo base_url("assets_home/") ?>img/testimonial/testimonial1.png" alt="">
            </div>
            <div class="testimonial__content">
              <h3>Stephen Mcmilan</h3>
              <p>Executive, ACI Group</p>
              <p class="testimonial__i">Also made from. Give may saying meat there from heaven it lights face had is gathered god earth light for life may itself shall whales made they're blessed whales also made from give may saying meat. There from heaven it lights face had also made from. Give may saying meat there from heaven</p>
            </div>
          </div>
          <div class="testimonial__item text-center">
            <div class="testimonial__img">
              <img src="<?php echo base_url("assets_home/") ?>img/testimonial/testimonial1.png" alt="">
            </div>
            <div class="testimonial__content">
              <h3>Stephen Mcmilan</h3>
              <p>Executive, ACI Group</p>
              <p class="testimonial__i">Also made from. Give may saying meat there from heaven it lights face had is gathered god earth light for life may itself shall whales made they're blessed whales also made from give may saying meat. There from heaven it lights face had also made from. Give may saying meat there from heaven</p>
            </div>
          </div>
          <div class="testimonial__item text-center">
            <div class="testimonial__img">
              <img src="<?php echo base_url("assets_home/") ?>img/testimonial/testimonial1.png" alt="">
            </div>
            <div class="testimonial__content">
              <h3>Stephen Mcmilan</h3>
              <p>Executive, ACI Group</p>
              <p class="testimonial__i">Also made from. Give may saying meat there from heaven it lights face had is gathered god earth light for life may itself shall whales made they're blessed whales also made from give may saying meat. There from heaven it lights face had also made from. Give may saying meat there from heaven</p>
            </div>
          </div>
        </div>
      </div>
    </section> -->
    <!--================ Testimonial section end =================-->


    <!--================ Start Clients Logo Area =================-->
    <!-- <section class="clients_logo_area section-padding">
      <div class="container">
        <div class="clients_slider owl-carousel">
          <div class="item">
            <img src="<?php echo base_url("assets_home/") ?>img/clients-logo/c-logo-1.png" alt="">
          </div>
          <div class="item">
            <img src="<?php echo base_url("assets_home/") ?>img/clients-logo/c-logo-2.png" alt="">
          </div>
          <div class="item">
            <img src="<?php echo base_url("assets_home/") ?>img/clients-logo/c-logo-3.png" alt="">
          </div>
          <div class="item">
            <img src="<?php echo base_url("assets_home/") ?>img/clients-logo/c-logo-4.png" alt="">
          </div>
          <div class="item">
            <img src="<?php echo base_url("assets_home/") ?>img/clients-logo/c-logo-5.png" alt="">
          </div>
        </div>
      </div>
    </section> -->
    <!--================ End Clients Logo Area =================-->
  </main>


  <!-- ================ start footer Area ================= -->
  <!-- <footer class="footer-area section-gap">
    <div class="container">
      <div class="row">
        <div class="col-xl-2 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
          <h4>Top Products</h4>
           <ul>
            <li><a href="#">Managed Website</a></li>
            <li><a href="#">Manage Reputation</a></li>
            <li><a href="#">Power Tools</a></li>
            <li><a href="#">Marketing Service</a></li>
          </ul>
        </div>
        <div class="col-xl-2 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
          <h4>Quick Links</h4>
          <ul>
            <li><a href="#">Jobs</a></li>
            <li><a href="#">Brand Assets</a></li>
            <li><a href="#">Investor Relations</a></li>
            <li><a href="#">Terms of Service</a></li>
          </ul>
        </div> -->
        <!-- <div class="col-xl-2 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
          <h4>Features</h4>
          <ul>
            <li><a href="#">Jobs</a></li>
            <li><a href="#">Brand Assets</a></li>
            <li><a href="#">Investor Relations</a></li>
            <li><a href="#">Terms of Service</a></li>
          </ul>
        </div>
        <div class="col-xl-2 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
          <h4>Resources</h4>
          <ul>
            <li><a href="#">Guides</a></li>
            <li><a href="#">Research</a></li>
            <li><a href="#">Experts</a></li>
            <li><a href="#">Agencies</a></li>
          </ul>
        </div>
        <div class="col-xl-4 col-md-8 mb-4 mb-xl-0 single-footer-widget">
          <h4>Newsletter</h4>
          <p>You can trust us. we only send promo offers,</p>
          <div class="form-wrap" id="mc_embed_signup">
            <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="form-inline">
              <input class="form-control" name="EMAIL" placeholder="Your Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address '" required="" type="email">
              <button class="click-btn btn btn-default">subscribe</button>
              <div style="position: absolute; left: -5000px;">
                <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
              </div>

              <div class="info"></div>
            </form>
          </div>
        </div>
      </div> -->
      <div class="footer-bottom row align-items-center text-center text-lg-left">
        <p class="footer-text m-0 col-lg-8 col-md-12">
          <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
          Copyright &copy;<script>
            document.write(new Date().getFullYear());
          </script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
          <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
        </p>
        <!-- <div class="col-lg-4 col-md-12 text-center text-lg-right footer-social">
          <a href="#"><i class="fab fa-facebook-f"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-dribbble"></i></a>
          <a href="#"><i class="fab fa-behance"></i></a>
        </div> -->
      </div>
    </div>
  </footer>
  <!-- ================ End footer Area ================= -->

  <script src="<?php echo base_url("assets_home/") ?>vendors/jquery/jquery-3.2.1.min.js"></script>
  <script src="<?php echo base_url("assets_home/") ?>vendors/bootstrap/bootstrap.bundle.min.js"></script>
  <script src="<?php echo base_url("assets_home/") ?>vendors/owl-carousel/owl.carousel.min.js"></script>
  <script src="<?php echo base_url("assets_home/") ?>js/jquery.ajaxchimp.min.js"></script>
  <script src="<?php echo base_url("assets_home/") ?>js/mail-script.js"></script>
  <script src="<?php echo base_url("assets_home/") ?>js/main.js"></script>

  <script src="<?php echo base_url('assets/') ?>vendors/datatables.net/js/jquery.dataTables.min.js"></script>
  <script src="<?php echo base_url('assets/') ?>vendors/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
  <script src="<?php echo base_url('assets/') ?>vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
  <script src="<?php echo base_url('assets/') ?>vendors/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js"></script>
  <script src="<?php echo base_url('assets/') ?>vendors/jszip/dist/jszip.min.js"></script>
  <script src="<?php echo base_url('assets/') ?>vendors/pdfmake/build/pdfmake.min.js"></script>
  <script src="<?php echo base_url('assets/') ?>vendors/pdfmake/build/vfs_fonts.js"></script>
  <script src="<?php echo base_url('assets/') ?>vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
  <script src="<?php echo base_url('assets/') ?>vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
  <script src="<?php echo base_url('assets/') ?>vendors/datatables.net-buttons/js/buttons.colVis.min.js"></script>
  <script src="<?php echo base_url('assets/') ?>assets/js/init-scripts/data-table/datatables-init.js"></script>

  <script src="<?php echo base_url("assets/") ?>vendors/chart.js/dist/Chart.bundle.min.js"></script>
  <script>
    var ctx = document.getElementById("barChart");
    ctx.height = 100;
    var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
        labels: <?php echo json_encode($chart_ranking['label']) ?>,
        datasets: [{
          label: "Score",
          data: <?php echo json_encode($chart_ranking['data']) ?>,
          borderWidth: "0",
          backgroundColor: ["#ff8c8c", "#0f0", "#5ebfff", "#ff9f21", "#de3a2f"]
        }, ]
      },
      options: {
        scales: {
          yAxes: [{
            ticks: {
              beginAtZero: true
            }
          }]
        }
      }
    });
  </script>
</body>

</html>