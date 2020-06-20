<?php $this->load->view('admin/includes/header') ?>
<div class="breadcrumbs">
    <div class="col-sm-4">
        <div class="page-header float-left">
            <div class="page-title">
                <h1>Training</h1>
            </div>
        </div>
    </div>
    <div class="col-sm-8">
        <div class="page-header float-right">
            <div class="page-title">
                <ol class="breadcrumb text-right">
                    <li class="active">Training</li>
                </ol>
            </div>
        </div>
    </div>
</div>

<div class="row mt-3">
    <div class="col-md-12">
        <a href="<?php echo base_url("storage/format/import_training.xlsx") ?>" class="btn btn-primary" target="_BLANK"><i class="fa fa-download"></i> Download Format</a>
        <div class="card mt-3">
            <div class="card-body">
                <?php echo form_open_multipart('', ['id' => 'form-import']) ?>
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

<?php $this->load->view('admin/includes/footer') ?>
<script>
    $(document).ready(function() {
        $("form#form-import").submit(function(e) {
            e.preventDefault();

            let elementForm = $(this);
            let formData = new FormData(this);

            $.ajax({
                url: elementForm.attr('action'),
                type: 'POST',
                data: formData,
                dataType: 'JSON',
                success: function(data) {

                    Swal.fire({
                        title: data.title,
                        text: data.text,
                        icon: data.type,
                    })

                    $("#input-file").val(null);
                },
                cache: false,
                contentType: false,
                processData: false
            });
        });
    });
</script>