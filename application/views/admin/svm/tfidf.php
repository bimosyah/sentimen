<?php $this->load->view('admin/includes/header') ?>
<style>
    .th-sticky-check {
        position: sticky !important;
        left: 0px !important;
        background: #505050 !important;
        z-index: 1000 !important;
        color: #fff;
        border-color: #505050 !important;
    }
</style>
<div class="breadcrumbs">
    <div class="col-sm-4">
        <div class="page-header float-left">
            <div class="page-title">
                <h1>TF-IDF</h1>
            </div>
        </div>
    </div>
    <div class="col-sm-8">
        <div class="page-header float-right">
            <div class="page-title">
                <ol class="breadcrumb text-right">
                    <li class="active">TF-IDF</li>
                </ol>
            </div>
        </div>
    </div>
</div>

<div class="row mt-3">
    <div class="col-md-12">
        <div class="card mt-3">
            <div class="card-body">
                <div style="width:1000px">
                    <table class="table table-bordered table-hover" id="preprocessing-datatable" width="100%" style="width:100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th class="th-sticky-check">word</th>
                                <?php foreach ($keyDoc as $key => $value) : ?>
                                    <th><?php echo $value ?></th>
                                <?php endforeach ?>
                                <th>DF</th>
                                <th>IDF</th>
                                <th>IDF+1</th>
                                <?php foreach ($keyDoc as $key => $value) : ?>
                                    <th><?php echo $value ?></th>
                                <?php endforeach ?>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($word as $key => $value) : ?>
                                <tr>
                                    <td><?php echo $key + 1 ?></td>
                                    <td class="th-sticky-check"><?php echo $value ?></td>
                                    <?php foreach ($keyDoc as $k => $v) : ?>
                                        <td><?php echo $tf[$key][$k] ?></td>
                                    <?php endforeach ?>
                                    <td><?php echo $df[$key] ?></td>
                                    <td><?php echo $idf[$key] ?></td>
                                    <td><?php echo $idfplus1[$key] ?></td>
                                    <?php foreach ($keyDoc as $k => $v) : ?>
                                        <td><?php echo $tfidf[$key][$k] ?></td>
                                    <?php endforeach ?>
                                </tr>
                            <?php endforeach ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<?php $this->load->view('admin/includes/footer') ?>
<script>
    var cname_url = "<?php echo base_url("SVM") ?>";
    (function($) {
        $('#preprocessing-datatable').DataTable({
            dom: "t",
            scrollX: '100%',
            scrollY: '50vh',
            scrollCollapse: true,
            paging: false,
        });


    })(jQuery);
</script>