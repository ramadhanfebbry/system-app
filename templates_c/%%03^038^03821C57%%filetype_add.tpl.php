<?php /* Smarty version 2.6.26, created on 2014-11-27 05:43:14
         compiled from C:%5Cxampp%5Chtdocs%5Csystem//templates/common/filetype_add.tpl */ ?>
    <table>
        <thead>
            <tr>
                <th>
                    <?php echo $this->_tpl_vars['g_lang_label_add']; ?>
&nbsp;<?php echo $this->_tpl_vars['g_lang_label_filetype']; ?>

                </th>

            </tr>
        </thead
        <tbody>
            <tr>
                <td>
                    <form action="filetypes.php" method="POST" enctype="multipart/form-data">
            <input type="hidden" name="Submit" value="add" />
            ex.: application/pdf<br />
            <input type="text" name="filetype" />
                    </td>
                <td>
                        <div class="buttons"><button class="positive" type="submit" name="submit" value="AddNewSave"><?php echo $this->_tpl_vars['g_lang_button_save']; ?>
</button>
                    </td>
                    <td >
                        <div class="buttons">
                            <button class="negative" type="Submit" name="submit" value="Cancel"><?php echo $this->_tpl_vars['g_lang_button_cancel']; ?>
</button>
                        </div>
                     </td>
        </tr>
    </tbody>
    </table>