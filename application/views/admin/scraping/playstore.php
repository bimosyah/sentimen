<?php $this->load->view('admin/includes/header') ?>
<div class="breadcrumbs">
    <div class="col-sm-4">
        <div class="page-header float-left">
            <div class="page-title">
                <h1>Scraping PlayStore</h1>
            </div>
        </div>
    </div>
    <div class="col-sm-8">
        <div class="page-header float-right">
            <div class="page-title">
                <ol class="breadcrumb text-right">
                    <li class="active">Scraping PlayStore</li>
                </ol>
            </div>
        </div>
    </div>
</div>

<div class="row mt-3">
    <div class="col-md-12">

        <?php if ($this->session->flashdata('message') != "") : ?>
            <div class="alert alert-warning">
                <?php echo $this->session->flashdata('message') ?>
            </div>
        <?php endif ?>
        <a href="<?php echo base_url("storage/format/import_playstore.xlsx") ?>" class="btn btn-primary" target="_BLANK">Download Format</a>
        <div class="card mt-3">
            <div class="card-body">
                <?php echo form_open_multipart('', ['id' => 'form-import']) ?>
                <div class="form-group row">
                    <label for="" class="col-form-label col-md-2">Marketplace</label>
                    <div class="col-md-10">
                        <select name="fk_marketplace" class="form-control">
                            <?php foreach ($this->db->get('marketplace')->result() as $key => $value) : ?>
                                <option value="<?php echo $value->id ?>" <?php echo ($value->id == set_value('fk_marketplace') ? "selected" : "") ?>><?php echo $value->nama ?></option>
                            <?php endforeach ?>
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="" class="col-form-label col-md-2">File</label>
                    <div class="col-md-10">
                        <input type="file" name="excel" class="form-control-file" id="input-file">
                    </div>
                </div>
                <div class="row">
                    <div class="offset-md-2 col-md-10">
                        <button type="submit" class="btn btn-primary">Import</button>
                        <a href="<?php echo base_url("Training") ?>" class="btn btn-dark">Back</a>
                    </div>
                </div>
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>
</div>


<?php if (isset($playstore_data) != 0) : ?>
    <div class="row mt-3">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Result</h4>
                    <h6 class="card-primary mb-3"><?php echo $message ?></h6>
                    <table id="clean-datatable" class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Marketplace</th>
                                <th>tanggal</th>
                                <th>teks</th>
                                <th></th>
                            </tr>

                        </thead>
                        <tbody>
                            <?php foreach ($playstore_data as $key => $value) : ?>
                                <tr>
                                    <td><?php echo $key + 1; ?></td>
                                    <td><?php switch ($value['fk_marketplace']) {
                                            case 1:
                                                echo "shopee";
                                                break;
                                            case 2:
                                                echo "tokopedia";
                                                break;
                                            case 3:
                                                echo "blibli";
                                                break;
                                            case 4:
                                                echo "lazada";
                                                break;
                                            case 5:
                                                echo "bukalapak";
                                                break;
                                        } ?></td>
                                    <td><?php echo $value['tanggal'] ?></td>
                                    <td><?php echo $value['teks'] ?></td>
                                    <td><?php if (isset($value['id'])) : ?>
                                            <span class="badge badge-primary">Inserted</span>
                                        <?php else : ?>
                                            <span class="badge badge-warning">Duplicate</span>
                                        <?php endif ?></td>
                                </tr>
                            <?php endforeach ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
<?php endif ?>

<?php $this->load->view('admin/includes/footer') ?>