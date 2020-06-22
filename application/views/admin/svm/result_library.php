<?php $this->load->view('admin/includes/header') ?>
<div class="breadcrumbs">
    <div class="col-sm-4">
        <div class="page-header float-left">
            <div class="page-title">
                <h1>Result</h1>
            </div>
        </div>
    </div>
    <div class="col-sm-8">
        <div class="page-header float-right">
            <div class="page-title">
                <ol class="breadcrumb text-right">
                    <li class="active">Result</li>
                </ol>
            </div>
        </div>
    </div>
</div>

<div class="row mt-3">
    <div class="col-xl-3 col-lg-6">
        <div class="card">
            <div class="card-body">
                <div class="stat-widget-one">
                    <div class="stat-icon dib"><i class="ti-layout-grid2 text-warning border-warning"></i></div>
                    <div class="stat-content dib">
                        <div class="stat-text">Training</div>
                        <div class="stat-digit"><?php echo $count_training ?></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-6">
        <div class="card">
            <div class="card-body">
                <div class="stat-widget-one">
                    <div class="stat-icon dib"><i class="ti-layout-grid2 text-warning border-warning"></i></div>
                    <div class="stat-content dib">
                        <div class="stat-text">Testing</div>
                        <div class="stat-digit"><?php echo  $count_testing_null . "/" . $count_testing ?></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-body">
                <div class="">
                    <button type="button" class="btn btn-primary float-right btn-recalculate"><i class="fa fa-spin fa-refresh" style="display: none;"></i> Recalculate SVM <span class="status"></span></button>
                </div>
                <table id="clean-datatable" class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Teks</th>
                            <th>Label</th>
                            <th>Predict</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($result as $key => $value) : ?>
                            <tr>
                                <td><?php echo $key + 1 ?></td>
                                <td><?php echo $value->teks ?></td>
                                <td>
                                    <?php switch ($value->klasifikasi) {
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
                                <td>
                                    <?php switch ($value->svm_klasifikasi) {
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
        </div>
    </div>
</div>
<div class="row mt-3">

    <div class="col-xl-3 col-lg-6">
        <div class="card">
            <div class="card-body">
                <div class="stat-widget-one">
                    <div class="stat-icon dib"><i class="ti-layout-grid2 text-warning border-warning"></i></div>
                    <div class="stat-content dib">
                        <div class="stat-text">Presisi</div>
                        <div class="stat-digit"><?php echo $presisi ?></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-6">
        <div class="card">
            <div class="card-body">
                <div class="stat-widget-one">
                    <div class="stat-icon dib"><i class="ti-layout-grid2 text-warning border-warning"></i></div>
                    <div class="stat-content dib">
                        <div class="stat-text">Recall</div>
                        <div class="stat-digit"><?php echo $recall ?></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-6">
        <div class="card">
            <div class="card-body">
                <div class="stat-widget-one">
                    <div class="stat-icon dib"><i class="ti-layout-grid2 text-warning border-warning"></i></div>
                    <div class="stat-content dib">
                        <div class="stat-text">Akurasi</div>
                        <div class="stat-digit"><?php echo $akurasi ?></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-6">
        <div class="card">
            <div class="card-body">
                <div class="stat-widget-one">
                    <div class="stat-icon dib"><i class="ti-layout-grid2 text-warning border-warning"></i></div>
                    <div class="stat-content dib">
                        <div class="stat-text">F-Measure</div>
                        <div class="stat-digit"><?php echo $fmeasure ?></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<?php $this->load->view('admin/includes/footer') ?>
<script>
    var cname_url = "<?php echo base_url("SVM") ?>";
    $('.btn-recalculate').click(function() {
        $(this).attr('disabled', true);
        $(this).find('.fa').fadeIn();
        $.ajax({
            'url': cname_url + "/clean_svm_klasifikasi",
            'success': (data) => {
                do_svm();
            }
        });
    });

    var total = 0;
    var current = 0;
    var do_svm = () => {
        $.ajax({
            url: cname_url + "/calculate_svm_lib",
            dataType: "JSON",
            success: (data) => {
                if (data.has_next) {
                    total = data.total;
                    current += data.complete;
                    $('.btn-recalculate').find('.status').text("(" + current + "/" + total + ")");
                    do_svm();
                } else {
                    window.location.href = cname_url + "/result_library";
                }
            }
        });
    }
</script>