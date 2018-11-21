ActiveAdmin.register Blog do
  permit_params :content, :category_id, :title
  form do |f|
   f.inputs 'Blog' do
     f.input :title
     f.input :content, as: :froala_editor,
     input_html: {
       data: {
         options: {
           toolbarButtons: ['fullscreen', 'bold', 'italic', 'underline', 'strikeThrough', '|', 'fontFamily', 'fontSize', 'color', 'inlineClass', 'inlineStyle', 'paragraphStyle', 'lineHeight', '|', 'paragraphFormat', 'align', 'formatOL', 'formatUL', 'outdent', 'indent', 'quote', '-', 'insertLink', 'insertImage', 'insertVideo', 'embedly', 'insertFile', 'insertTable', '|', 'emoticons', 'fontAwesome', 'specialCharacters', 'insertHR', 'selectAll', 'clearFormatting', '|', 'print', 'getPDF', 'spellChecker', 'help', 'html', '|', 'undo', 'redo']
           }}}
    f.input :category_id, as: :select, collection: { 'ブログ' => 1, 'ご飯' => 2 }
   end
   f.actions
 end
end
