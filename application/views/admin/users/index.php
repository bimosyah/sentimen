<?php $this->load->view('admin/includes/header') ?>
<div class="breadcrumbs">
    <div class="col-sm-4">
        <div class="page-header float-left">
            <div class="page-title">
                <h1>Users</h1>
            </div>
        </div>
    </div>
    <div class="col-sm-8">
        <div class="page-header float-right">
            <div class="page-title">
                <ol class="breadcrumb text-right">
                    <li class="active">Users</li>
                </ol>
            </div>
        </div>
    </div>
</div>

<div class="row mt-3">
    <div class="col-md-12">
        <a href="<?php echo base_url("Users/insert") ?>" class="btn btn-primary"><i class="fa fa-plus"></i> Insert</a>
        <div class="card mt-3">
            <div class="card-body">
                <table class="table table-bordered table-striped mt-3" cellpadding="10px" style="width:100%" id="clean-datatable">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama</th>
                            <th>Username</th>
                            <th>Gambar</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($users_data as $key => $value) : ?>
                            <tr>
                                <td><?php echo $key + 1; ?></td>
                                <td><?php echo $value->nama ?></td>
                                <td><?php echo $value->username ?></td>
                                <td><img src="<?php echo base_url('storage/users/' . $value->gambar) ?>" width="100px" alt=""></td>
                                <td>
                                    <a href="<?php echo base_url("Users/update/" . $value->id) ?>" class="btn btn-success btn-sm">Update</a>
                                    <a href="<?php echo base_url("Users/delete/" . $value->id) ?>" class="btn btn-danger btn-sm">Delete</a>
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