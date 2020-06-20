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

<div class="row mt-3">
    <div class="col-md-12">
        <div class="card">
            <div class="card-body">
                <a href="<?php echo basE_url("SVM/classification") ?>" class="btn btn-primary"><i class="fa fa-plus"></i> Classification</a>
                <?php echo form_open("SVM/classification") ?>
                <div class="form-group">
                    <label for="">Tanggal</label>
                    <input type="date" name="from" value="<?php echo date("Y-m-d") ?>" class="form-control">
                </div>
                <div class="form-group">
                    <label for="">Tanggal</label>
                    <input type="date" name="from" value="<?php echo date("Y-m-d") ?>" class="form-control">
                </div>
                <input type="submit" class="btn btn-primary">
                <?php echo form_close(); ?>
                <table id="bootstrap-data-table-export" class="table table-striped table-bordered">
                    <thead>
                    <tr>
                        <th>No</th>
                        <th>Source</th>
                        <th>Date</th>
                        <th>Review</th>
                        <th>Marketplace</th>
                        <th>Klasifikasi</th>
                    </tr>
                    
                    </thead>    
                <tbody>
                <?php foreach ($result_data as $key => $value) : ?>
                        <tr>
                            <td><?php echo $key + 1; ?></td>
                            <td><?php echo $value->source ?></td>
                            <td><?php echo $value->date ?></td>
                            <td><?php echo $value->review ?></td>
                            <td>
                                <?php echo $value->fk_marketplace ?>
                            </td>
                            <td>
                                <?php echo $value->klasifikasi ?>
                            </td>
                        </tr>
                    <?php endforeach ?>
                </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<?php $this->load->view('admin/includes/footer') ?>