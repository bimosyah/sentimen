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
        <div class="card">
            <div class="card-body">
                <?php echo form_open_multipart('') ?>

                <div class="form-group row">
                    <label for="" class="col-form-label col-md-2">kata_tidak_baku</label>
                    <div class="col-md-10">
                        <input type="text" name="kata_tidak_baku" class="form-control" placeholder="kata_tidak_baku" value="<?php echo $kata_tidak_baku_data->kata_tidak_baku ?>">
                        <?php echo form_error('kata_tidak_baku', '', '') ?>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="" class="col-form-label col-md-2">kata_baku</label>
                    <div class="col-md-10">
                        <select name="fk_kata_baku" class="form-control">
                            <?php foreach ($this->db->get('kata_baku')->result() as $key => $value) : ?>
                                <option value="<?php echo $value->id ?>" <?php echo ($kata_tidak_baku_data->fk_kata_baku == $value->id ? "selected" : "") ?>><?php echo $value->kata_baku ?></option>
                            <?php endforeach ?></select>
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