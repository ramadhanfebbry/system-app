<?php /* Smarty version 2.6.26, created on 2014-11-26 04:13:34
         compiled from C:%5Cxampp%5Chtdocs%5Csystem//templates/common/commentform.tpl */ ?>
		<?php echo $this->_tpl_vars['mode']; ?>

                <?php echo $this->_tpl_vars['g_lang_email_note_to_authors']; ?>

		<form name="author_note_form"
			<?php if ($this->_tpl_vars['mode'] == 'root'): ?>
			 action="<?php echo $_SERVER['PHP_SELF']; ?>
?mode=root" method="POST">
			<?php else: ?>
			 action="<?php echo $_SERVER['PHP_SELF']; ?>
" method="POST">
                        <?php endif; ?>
		<table name="author_note_table">
		<tr>
		<td><?php echo $this->_tpl_vars['g_lang_email_to']; ?>
</td>
		<td>
                    <input type="text" name="to" value="Author(s)" size='15' <?php echo $this->_tpl_vars['access_mode']; ?>
>
                </td>
		</tr>
                <tr>
                    <td><?php echo $this->_tpl_vars['g_lang_email_subject']; ?>
</td>
                    <td>
                        <input type="text" name="subject" size=50 value="" size='30' <?php echo $this->_tpl_vars['access_mode']; ?>
></td>
                </tr>
                <tr>
                    <td><?php echo $this->_tpl_vars['g_lang_email_custom_comment']; ?>
</td>
                    <td><textarea name="comments" cols=45 rows=7 size='220' <?php echo $this->_tpl_vars['access_mode']; ?>
></textarea></td>
                </tr>
		</table>
		<br />&nbsp&nbsp
                    

			<tr><input type="hidden" name="checkbox" value="<?php $_from = $this->_tpl_vars['checkbox']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['id']):
?><?php echo $this->_tpl_vars['id']; ?>
 <?php endforeach; endif; unset($_from); ?>" /></tr>
			<table border="0">
			<tr>
                            <td><?php echo $this->_tpl_vars['g_lang_email_email_all_users']; ?>
</td>
                            <td>
                                <input type="checkbox" name="send_to_all" onchange="send_to_dept.disabled = !send_to_dept.disabled; author_note_form.elements['send_to_users[]'].disabled = !author_note_form.elements['send_to_users[]'].disabled;"></td>
                        </tr>
			<tr>
                            <td><?php echo $this->_tpl_vars['g_lang_email_email_whole_department']; ?>
</td>
                            <td>
                                <input type="checkbox" name="send_to_dept" onchange="check(this.form.elements['send_to_users[]'], this, send_to_all);"></td>
                        </tr>
			<tr>
                            <td valign="top"><?php echo $this->_tpl_vars['g_lang_email_email_these_users']; ?>
:</td>
                            <td>
                                <select name="send_to_users[]" multiple onchange="check(this, send_to_dept, send_to_all);">
                                    <option value="0">no one</option>
                                    <option value="owner" selected="selected">file owners</option>
                                    <?php $_from = $this->_tpl_vars['user_info']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['user']):
?>
                                    <option value="<?php echo $this->_tpl_vars['user']['id']; ?>
"><?php echo $this->_tpl_vars['user']['last_name']; ?>
, <?php echo $this->_tpl_vars['user']['first_name']; ?>
</option>
                                    <?php endforeach; endif; unset($_from); ?>

                                    
			</select></td></tr></table>
			<br />
                         <div class="buttons">
                            <button class="positive" type="submit" name="submit" value="<?php echo $this->_tpl_vars['submit_value']; ?>
"><?php echo $this->_tpl_vars['submit_value']; ?>
</button>
                            <button class="negative" type="submit" name="submit" value="Cancel"><?php echo $this->_tpl_vars['g_lang_button_cancel']; ?>
</button>
                         </div><br /><br />

		</form>
                <?php echo '
                <script type="text/javascript">
		function check(select, send_dept, send_all)
		{
			if(send_dept.checked || select.options[select.selectedIndex].value != "0")
				send_all.disabled = true;
			else
			{
				send_all.disabled = false;
				for(var i = 1; i < select.options.length; i++)
					select.options[i].selected = false;
			}
		}

	</script>
                '; ?>