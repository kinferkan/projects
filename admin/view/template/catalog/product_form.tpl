<?php if ($error_warning) { ?>
<div class="alert alert-error"><?php echo $error_warning; ?><a class="close" data-dismiss="alert">×</a></div>
<?php } ?>
<div class="box">
    <div class="heading">
        <h2><?php echo $heading_title; ?></h2>
        <div class="buttons"><a onclick="$('#form').submit();" class="btn btn-primary"><span><?php echo $button_save; ?></span></a> <a onclick="location = '<?php echo $cancel; ?>';" class="btn"><span><?php echo $button_cancel; ?></span></a></div>
    </div>
    <div class="content">
        <div id="tabs" class="htabs"><a href="#tab-general"><?php echo $tab_general; ?></a><a href="#tab-image"><?php echo $tab_image; ?></a></div>
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
            <div id="tab-general">
                <?php foreach ($languages as $language) { ?>
                <div id="language<?php echo $language['language_id']; ?>">
                    <table class="form">
                        <tr>
                            <td><span class="required">*</span> <?php echo $entry_name; ?></td>
                            <td><input type="text" name="product_description[<?php echo $language['language_id']; ?>][name]" size="100" value="<?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['name'] : ''; ?>" />
                                <?php if (isset($error_name[$language['language_id']])) { ?>
                                <span class="error"><?php echo $error_name[$language['language_id']]; ?></span>
                                <?php } ?></td>
                        </tr>
                        <tr>
                            <td><span class="required">*</span> <?php echo $entry_reason; ?></td>
                            <td><input type="text" name="product_description[<?php echo $language['language_id']; ?>][reason]" size="100" value="<?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['reason'] : ''; ?>" />
                                <?php if (isset($error_reason[$language['language_id']])) { ?>
                                <span class="error"><?php echo $error_reason[$language['language_id']]; ?></span>
                                <?php } ?></td>
                        </tr>
                        <tr>
                            <td><span class="required">*</span><?php echo $entry_description; ?></td>
                            <td>
                                <?php if (isset($error_description[$language['language_id']])) { ?>
                                <span class="error"><?php echo $error_description[$language['language_id']]; ?></span>
                                <?php } ?>
                                <textarea name="product_description[<?php echo $language['language_id']; ?>][description]" id="description<?php echo $language['language_id']; ?>"><?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['description'] : ''; ?></textarea>
                            </td>
                        </tr>
                    </table>
                </div>
                <?php } ?>
                <table class="form">
                    <tr>
                        <td><?php echo $entry_image; ?></td>
                        <td><input type="hidden" name="image" value="<?php echo $image; ?>" id="image" />
                            <img src="<?php echo $preview; ?>" alt="" id="preview" class="image" onclick="image_upload('image', 'preview');" /></td>
                    </tr>

                    <tr>
                        <td><?php echo $entry_status; ?></td>
                        <td><select name="status">
                                <?php if ($status) { ?>
                                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                <option value="0"><?php echo $text_disabled; ?></option>
                                <?php } else { ?>
                                <option value="1"><?php echo $text_enabled; ?></option>
                                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                <?php } ?>
                            </select></td>
                    </tr>
                    <tr>
                        <td><?php echo $entry_category; ?></td>
                        <td><div>
                                <select name="product_category">
                                <?php foreach ($categories as $category) { ?>
                                    
                                    <?php if (in_array($category['category_id'], $product_category)) { ?>
                                    <option selected="selected" value="<?php echo $category['category_id']; ?>">
                                    <?php echo $category['name']; ?>
                                    </option>
                                    <?php } else { ?>
                                    <option value="<?php echo $category['category_id']; ?>">
                                    <?php echo $category['name']; ?>
                                    </option>
                                    <?php } ?>
                                    
                                <?php } ?>
                                </select>
                            </div>
                    </tr>
                    <tr>
                        <td><?php echo $entry_sort_order; ?></td>
                        <td>
                            <input type="text" name="sort_order" size="100" value="<?php echo isset($sort_order) ? $sort_order : '0'; ?>" />
                        </td>
                    </tr>
                </table>
            </div>
            <div id="tab-image">
                <table id="images" class="list">
                    <thead>
                        <tr>
                            <td class="left"><?php echo $entry_image; ?></td>
                            <td></td>
                        </tr>

                    </thead>
                    <?php $image_row = 0; ?>
                    <?php foreach ($product_images as $product_image) { ?>
                    <tbody id="image-row<?php echo $image_row; ?>">
                        <tr>
                            <td class="left"><img src="<?php echo $product_image['preview']; ?>" alt="" id="preview<?php echo $image_row; ?>" class="image" onclick="image_upload('image<?php echo $image_row; ?>', 'preview<?php echo $image_row; ?>');" />
                                <input type="hidden" name="product_image[<?php echo $image_row; ?>]" value="<?php echo $product_image['image']; ?>" id="image<?php echo $image_row; ?>"  /></td>
                            <td class="left"><a onclick="$('#image-row<?php echo $image_row; ?>').remove();" class="button"><span><?php echo $button_remove; ?></span></a></td>
                        </tr>
                    </tbody>
                    <?php $image_row++; ?>
                    <?php } ?>
                    <tfoot>
                        <tr>
                            <td></td>
                            <td class="left"><a onclick="addImage();" class="button"><span><?php echo $button_add_image; ?></span></a></td>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </form>
    </div>
</div>

<script type="text/javascript" src="view/javascript/ckeditor/ckeditor.js"></script>
<script type="text/javascript"><!--
<?php foreach ($languages as $language) {?>
            CKEDITOR.replace('description<?php echo $language['language_id']; ?>', {
    filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
            filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
            filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
            filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
            filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
            filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
            });
            <?php } ?>
//--></script>

<script type="text/javascript"><!--

      $('#tabs a').tabs();
//--></script>
<script type="text/javascript"><!--
var image_row = <?php echo $image_row; ?> ;
            function addImage() {
            html = '<tbody id="image-row' + image_row + '">';
                    html += '  <tr>';
                    html += '    <td class="left"><input type="hidden" name="product_image[' + image_row + ']" value="" id="image' + image_row + '" /><img src="<?php echo $no_image; ?>" alt="" id="preview' + image_row + '" class="image" onclick="image_upload(\'image' + image_row + '\', \'preview' + image_row + '\');" /></td>';
                    html += '    <td class="left"><a onclick="$(\'#image-row' + image_row + '\').remove();" class="button"><span><?php echo $button_remove; ?></span></a></td>';
                    html += '  </tr>';
                    html += '</tbody>';
                    $('#images tfoot').before(html);
                    image_row++;
            }
//--></script>


<script type="text/javascript" src="view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script>
<script type="text/javascript" src="view/javascript/jquery/ui/i18n/jquery-ui-i18n.js"></script>
<script type="text/javascript"><!--
$('.date').datepicker({dateFormat: 'yy-mm-dd'});
            $('.datetime').datetimepicker({
    dateFormat: 'yy-mm-dd',
            timeFormat: 'h:m'
    });
            $('.time').timepicker({timeFormat: 'h:m'});
//--></script>
