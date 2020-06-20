<?php $this->load->view('admin/includes/header') ?>
<div class="breadcrumbs">
    <div class="col-sm-4">
        <div class="page-header float-left">
            <div class="page-title">
                <h1>Dataset</h1>
            </div>
        </div>
    </div>
    <div class="col-sm-8">
        <div class="page-header float-right">
            <div class="page-title">
                <ol class="breadcrumb text-right">
                    <li class="active">Dataset</li>
                </ol>
            </div>
        </div>
    </div>
</div>

<div class="row mt-3">
    <div class="col-md-12">
        
    <a href="<?php echo base_url("Dataset/delete_all") ?>" class="btn btn-danger" onclick="return confirm('Are you sure?');"><i class="fa fa-plus"></i> Delete ALL</a>
        <div class="card mt-3">
            <div class="card-body">
                <table id="export-datatable" class="table table-striped table-bordered">
                    <thead>
                    <tr>
                        <th>No</th>
                        <th>Tanggal</th>
                        <th>Sumber</th>
                        <th>Teks</th>
                        <th>Marketplace</th>
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
                        </tr>
                    <?php endforeach ?>
                </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<?php $this->load->view('admin/includes/footer') ?>
