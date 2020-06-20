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
                <a href="Users/insert" class="btn btn-primary"><i class="fa fa-plus"></i> Insert</a>
                <table id="bootstrap-data-table-export" class="table table-striped table-bordered">
                    <thead>
                    <tr>
                        <th>No</th>
                        <th>Source</th>
                        <th>Date</th>
                        <th>Review</th>
                        <th>Marketplace</th>
                        <th>Klasifikasi</th>
                    </tr>
                    
                    </thead>    
                <tbody>
                <?php foreach ($data_data as $key => $value) : ?>
                        <tr>
                            <td><?php echo $key + 1; ?></td>
                            <td><?php echo $value->source ?></td>
                            <td><?php echo $value->date ?></td>
                            <td><?php echo $value->review ?></td>
                            <td>
                                <?php echo $value->fk_marketplace ?>
                            </td>
                            <td>
                                <?php echo $value->klasifikasi ?>
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
