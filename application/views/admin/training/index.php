<?php $this->load->view('admin/includes/header') ?>
<div class="breadcrumbs">
    <div class="col-sm-4">
        <div class="page-header float-left">
            <div class="page-title">
                <h1>Training</h1>
            </div>
        </div>
    </div>
    <div class="col-sm-8">
        <div class="page-header float-right">
            <div class="page-title">
                <ol class="breadcrumb text-right">
                    <li class="active">Training</li>
                </ol>
            </div>
        </div>
    </div>
</div>

<div class="row mt-3">
    <div class="col-md-12">
        
    <a href="<?php echo base_url("Training/import") ?>" class="btn btn-primary"><i class="fa fa-plus"></i> Import</a>
                <a href="<?php echo base_url("Training/deleteall") ?>" class="btn btn-danger"><i class="fa fa-trash"></i> Delete All</a>
        <div class="card mt-3">
            <div class="card-body">
                <table id="clean-datatable" class="table table-striped table-bordered">
                    <thead>
                    <tr>
                        <th>No</th>
                        <th>Review</th>
                        <th>Klasifikasi</th>
                    </tr>
                    
                    </thead>    
                <tbody>
                <?php foreach ($training_data as $key => $value) : ?>
                        <tr>
                            <td><?php echo $key + 1; ?></td>
                            <td><?php echo $value->teks ?></td>
                            <td>
                                <?php 
                                switch($value->klasifikasi){
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
