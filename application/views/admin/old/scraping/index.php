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
                <?php echo form_open("Scraping/scraping"); ?>
                <div class="form-group row">
                    <label for="" class="col-form-label col-md-2">Source</label>
                    <div class="col-md-10">
                        <select name="source" class="form-control">
                            <option value="1">Tweet</option>
                            <option value="2">Marketplace Web (under contruction)</option>
                            <option value="3">Playstore Review (under contruction)</option>
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="" class="col-form-label col-md-2">Marketplace</label>
                    <div class="col-md-10">
                        <select name="fk_marketplace" class="form-control">
                            <?php foreach($this->db->get('marketplace')->result() as $key => $value): ?>
                                <option value="<?php echo $value->id_marketplace ?>"><?php echo $value->nama ?></option>
                            <?php endforeach ?>
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="" class="col-form-label col-md-2">Tanggal</label>
                    <div class="col-md-5">
                        <input type="date" name="date_from" class="form-control" value="<?php echo date('Y-m-d') ?>">
                    </div>
                    <div class="col-md-5">
                        <input type="date" name="date_to" class="form-control" value="<?php echo date('Y-m-d') ?>">
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