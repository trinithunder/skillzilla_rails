//= require tinymce

$(document).on('turbolinks:load', function() {
    tinymce.init({
        selector: 'textarea.tinymce',
        height: 400,
        plugins: 'autolink lists link image charmap print preview anchor',
        toolbar: 'undo redo | formatselect | bold italic backcolor | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image'
    });
});

