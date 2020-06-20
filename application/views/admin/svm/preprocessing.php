<?php $this->load->view('admin/includes/header') ?>
<div class="breadcrumbs">
    <div class="col-sm-4">
        <div class="page-header float-left">
            <div class="page-title">
                <h1>Preprocessing</h1>
            </div>
        </div>
    </div>
    <div class="col-sm-8">
        <div class="page-header float-right">
            <div class="page-title">
                <ol class="breadcrumb text-right">
                    <li class="active">Preprocessing</li>
                </ol>
            </div>
        </div>
    </div>
</div>

<div class="row mt-3">
    <div class="col-md-12">
        <div class="card mt-3">
            <div class="card-body">
                <table id="preprocessing-datatable" class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Plain</th>
                            <th>Lower</th>
                            <th>Filter</th>
                            <th>Stem</th>
                            <th>Token</th>
                            <th>Stopword</th>
                            <th>Kata Baku</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach($data as $key => $value): ?>
                            <tr>
                                <td><?php echo $key+1 ?></td>
                                <td><?php echo $value['plain'] ?></td>
                                <td><?php echo $value['lower'] ?></td>
                                <td><?php echo $value['filter'] ?></td>
                                <td><?php echo $value['stem'] ?></td>
                                <td><?php echo $value['token'] ?></td>
                                <td><?php echo $value['stopword'] ?></td>
                                <td><?php echo $value['kata_baku'] ?></td>
                            </tr>
                        <?php endforeach ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<?php $this->load->view('admin/includes/footer') ?>
<script>
    var cname_url = "<?php echo base_url("SVM") ?>";
    (function($) {
        $('#preprocessing-datatable').DataTable();


    })(jQuery);
</script>