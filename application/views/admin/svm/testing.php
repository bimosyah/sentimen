<?php $this->load->view('admin/includes/header') ?>
<div class="breadcrumbs">
    <div class="col-sm-4">
        <div class="page-header float-left">
            <div class="page-title">
                <h1>Data Testing</h1>
            </div>
        </div>
    </div>
    <div class="col-sm-8">
        <div class="page-header float-right">
            <div class="page-title">
                <ol class="breadcrumb text-right">
                    <li class="active">Data Testing</li>
                </ol>
            </div>
        </div>
    </div>
</div>

<div class="row mt-3">
    <div class="col-md-12">
        <?php if ($this->session->flashdata('message') != "") : ?>
            <div class="alert alert-info">
                <h4>Message</h4>
                <?php echo $this->session->flashdata('message') ?>
            </div>
        <?php endif ?>
        <div class="card mt-3">
            <div class="card-body">
                <?php echo form_open_multipart('SVM/testing_import', ['id' => 'form-import']) ?>
                <div class="form-group row">
                    <label for="" class="col-form-label col-md-2">File</label>
                    <div class="col-md-10">
                        <input type="file" name="excel" class="form-control-file" id="input-file">
                    </div>
                </div>
                <div class="row">
                    <div class="offset-md-2 col-md-10">
                        <button type="submit" class="btn btn-primary"><i class="fa fa-plus"></i> Import</button>
                        <a href="<?php echo base_url("storage/format/import_training.xlsx") ?>" class="btn btn-outline-info" target="_BLANK"><i class="fa fa-download"></i> Download Format</a>

                        <a href="<?php echo base_url("SVM/testing_deleteall") ?>" class="btn btn-danger"><i class="fa fa-trash"></i> Delete All</a>
                    </div>
                </div>
                <?php echo form_close(); ?>
                <table id="clean-datatable" class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Review</th>
                            <th>Klasifikasi</th>
                        </tr>

                    </thead>
                    <tbody>
                        <?php foreach ($testing_data as $key => $value) : ?>
                            <tr>
                                <td><?php echo $key + 1; ?></td>
                                <td><?php echo $value->teks ?></td>
                                <td>
                                    <?php
                                    switch ($value->klasifikasi) {
                                        case 0:
                                            echo '<span class="badge badge-secondary">Netral</a>';
                                            break;
                                        case 1:
                                            echo '<span class="badge badge-primary">Positif</a>';
                                            break;
                                        case -1:
                                            echo '<span class="badge badge-danger">Negatif</a>';
                                            break;
                                    }
                                    ?>
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