<?php $this->load->view('admin/includes/header') ?>
<div class="breadcrumbs">
    <div class="col-sm-4">
        <div class="page-header float-left">
            <div class="page-title">
                <h1>Marketplace</h1>
            </div>
        </div>
    </div>
    <div class="col-sm-8">
        <div class="page-header float-right">
            <div class="page-title">
                <ol class="breadcrumb text-right">
                    <li class="active">Marketplace</li>
                </ol>
            </div>
        </div>
    </div>
</div>


<div class="row mt-3">
    <div class="col-md-12">
        <div class="card mt-3">
            <div class="card-body">
                <?php echo form_open("Marketplace/update"); ?>
                <table id="clean-datatable" class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama</th>
                            <th>Twitter</th>
                            <th>Website</th>
                            <th>Playstore</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($marketplace_data as $key => $value) : ?>
                            <tr>
                                <td><?php echo $key + 1; ?></td>
                                <td><?php echo $value->nama ?></td>
                                <td>
                                    <input type="text" name="twitter[<?php echo $value->id ?>]" class="form-control" value="<?php echo $value->twitter ?>">
                                </td>
                                <td>
                                    <input type="text" name="website[<?php echo $value->id ?>]" class="form-control" value="<?php echo $value->website ?>">
                                </td>
                                <td>
                                    <input type="text" name="playstore[<?php echo $value->id ?>]" class="form-control" value="<?php echo $value->playstore ?>">
                                </td>
                                <td></td>
                            </tr>
                        <?php endforeach ?>
                    </tbody>
                </table>
                <button class="btn btn-primary">Submit</button>
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
</div>

<?php $this->load->view('admin/includes/footer') ?>