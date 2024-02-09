// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import { Editor } from 'tinymce';

document.addEventListener('turbo:load', () => {
    const textareas = document.querySelectorAll('textarea.tinymce');
    textareas.forEach((textarea) => {
        Editor.create({
            target: textarea,
            height: 400,
            plugins: 'autolink lists link image charmap print preview anchor',
            toolbar: 'undo redo | formatselect | bold italic backcolor | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image'
        });
    });
});



import "trix"
import "@rails/actiontext"
