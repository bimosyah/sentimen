<?php $this->load->view('admin/includes/header') ?>
<div class="breadcrumbs">
    <div class="col-sm-4">
        <div class="page-header float-left">
            <div class="page-title">
                <h1>Dashboard</h1>
            </div>
        </div>
    </div>
    <div class="col-sm-8">
        <div class="page-header float-right">
            <div class="page-title">
                <ol class="breadcrumb text-right">
                    <li class="active">Dashboard</li>
                </ol>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <h4 class="mb-3">Jumlah </h4>
                <canvas id="barChart2"></canvas>
            </div>
        </div>
    </div>
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <h4 class="mb-3">Ranking </h4>
                <canvas id="barChart"></canvas>
            </div>
        </div>
    </div>

</div>

<?php $this->load->view('admin/includes/footer') ?>

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
    var ctx = document.getElementById("barChart2");
       ctx.height = 100;
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: <?php echo json_encode($chart_ranking['label']) ?>,
            datasets: [{
                label: "Positive",
                data: <?php echo json_encode($chart_jumlah['data']['positif']) ?>,
                borderWidth: "0",
                backgroundColor: "#279ff5",
            }, {
                label: "Netral",
                data: <?php echo json_encode($chart_jumlah['data']['netral']) ?>,
                borderWidth: "0",
                backgroundColor: "#787878",
            }, {
                label: "Negatif",
                data: <?php echo json_encode($chart_jumlah['data']['negatif']) ?>,
                borderWidth: "0",
                backgroundColor: "#d43535"
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