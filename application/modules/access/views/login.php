<?php
echo $title;
echo $error;
echo form_open($action);
echo form_label('Email');
echo form_input('email');
echo form_label('Password');
echo form_password('passwd');
echo form_hidden('origin');
echo form_submit('submit','Login');
echo form_close();
