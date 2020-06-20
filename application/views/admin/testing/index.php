<?php $this->load->view('admin/includes/header') ?>
<div class="breadcrumbs">
    <div class="col-sm-4">
        <div class="page-header float-left">
            <div class="page-title">
                <h1>Testing</h1>
            </div>
        </div>
    </div>
    <div class="col-sm-8">
        <div class="page-header float-right">
            <div class="page-title">
                <ol class="breadcrumb text-right">
                    <li class="active">Testing</li>
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
                        <div class="stat-text">Dataset</div>
                        <div class="stat-digit"><?php echo $count_dataset ?></div>
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
                <?php echo form_open("Testing/svm"); ?>
                <div class="form-group row">
                    <label for="" class="col-form-label col-md-2">pi</label>
                    <div class="col-md-10">
                        <input type="number" name="pi" class="form-control" value="<?php echo $pi ?>">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="" class="col-form-label col-md-2">lamda</label>
                    <div class="col-md-10">
                        <input type="number" name="lamda" class="form-control" value="<?php echo $lamda ?>">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="" class="col-form-label col-md-2">c</label>
                    <div class="col-md-10">
                        <input type="number" name="c" class="form-control" value="<?php echo $c ?>">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="" class="col-form-label col-md-2">gamma</label>
                    <div class="col-md-10">
                        <input type="number" name="gamma" class="form-control" value="<?php echo $gamma ?>">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="" class="col-form-label col-md-2">max_iteration</label>
                    <div class="col-md-10">
                        <input type="number" name="max_iteration" class="form-control" value="<?php echo $max_iteration ?>">
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-10 offset-md-2">
                        <button type="submit" class="btn btn-primary">SVM</button>
                    </div>
                </div>
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
</div>


<?php $this->load->view('admin/includes/footer') ?>