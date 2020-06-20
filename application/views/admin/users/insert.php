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
        <div class="card">
            <div class="card-body">
                <?php echo form_open_multipart('') ?>
                <div class="row">
                    <label for="" class="col-md-2">
                        <img src="<?php echo base_url('storage/users/default.png') ?>" width="100px" alt="">
                    </label>
                    <div class="col-md-10">

                        <input type="file" name="gambar">
                        <?php echo (isset($error_gambar) ? $error_gambar : "") ?>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="" class="col-form-label col-md-2">Nama</label>
                    <div class="col-md-10">
                        <input type="text" name="nama" class="form-control" placeholder="nama" value="<?php echo set_value('nama') ?>">
                        <?php echo form_error('nama', '', '') ?>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="" class="col-form-label col-md-2">Username</label>
                    <div class="col-md-10">
                        <input type="text" name="username" class="form-control" placeholder="username" value="<?php echo set_value('username') ?>">
                        <?php echo form_error('username', '', '') ?>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="" class="col-form-label col-md-2">Password</label>
                    <div class="col-md-5">
                        <input type="text" name="password" class="form-control" placeholder="password">
                        <?php echo form_error('password', '', '') ?>
                    </div>
                    <div class="col-md-5">
                        <input type="text" name="repassword" class="form-control" placeholder="repassword">
                        <?php echo form_error('repassword', '', '') ?>

                    </div>
                </div>


                <div class="row">
                    <div class="col-md-10 offset-md-2">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </div>






                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
</div>

<?php $this->load->view('admin/includes/footer') ?>