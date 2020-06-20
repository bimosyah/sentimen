<?php $this->load->view('admin/includes/header') ?>
<div class="breadcrumbs">
    <div class="col-sm-4">
        <div class="page-header float-left">
            <div class="page-title">
                <h1>Kata Tidak Baku</h1>
            </div>
        </div>
    </div>
    <div class="col-sm-8">
        <div class="page-header float-right">
            <div class="page-title">
                <ol class="breadcrumb text-right">
                    <li class="active">Kata Tidak Baku</li>
                </ol>
            </div>
        </div>
    </div>
</div>


<div class="row mt-3">
    <div class="col-md-12">
    <a href="<?php echo base_url("Kata_Tidak_Baku/insert") ?>" class="btn btn-primary"><i class="fa fa-plus"></i> Insert</a>
        
        <div class="card mt-3">
            <div class="card-body">
                <table id="clean-datatable" class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Kata Tidak Baku</th>
                            <th>Kata Baku</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($kata_tidak_baku_data as $key => $value) : ?>
                            <tr>
                                <td><?php echo $key + 1; ?></td>
                                <td><?php echo $value->kata_tidak_baku ?></td>
                                <td><?php echo $value->kata_baku ?></td>
                                <td>
                                    <a href="<?php echo base_url('Kata_Tidak_Baku/update/' . $value->id) ?>" class="btn btn-success">update</a>
                                    <a href="<?php echo base_url('Kata_Tidak_Baku/delete/' . $value->id) ?>" class="btn btn-danger">delete</a>
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