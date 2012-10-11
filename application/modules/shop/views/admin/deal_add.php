<h2><? echo $title; ?></h2>

<? echo form_open('shop/admin/deal_save'); ?>

<? echo form_hidden('deal_id', $this->session->userdata('userID')); ?>

<? echo form_label('Deal Title'); ?>
<? echo form_input('deal_title',''); ?>

<? echo form_label('Deal Price'); ?>
<? echo form_input('deal_price',''); ?>

<? echo form_label('Deal Discount'); ?>
<? echo form_input('deal_discount',''); ?>

<? echo form_label('Deal Expired Date'); ?>
<? echo form_input('deal_expired_date',''); ?>

<? echo form_label('Deal Description'); ?>
<? echo form_textarea('deal_desc','Deal Description'); ?>

<? echo form_submit('submit','Save Deal'); ?>

<? echo form_close(); ?>

