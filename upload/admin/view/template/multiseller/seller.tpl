<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="success"><?php echo $success; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/customer.png" alt="" /> <?php echo $ms_catalog_sellers_heading; ?></h1>
    </div>
    <div class="content">
		<?php echo $total_balance; ?><br /><br />
      <form action="" method="post" enctype="multipart/form-data" id="form">
        <table class="list">
          <thead>
            <tr>
              	<!--<td width="1" style="text-align: center;"><input type="checkbox" onclick="$('input[name*=\'selected\']').attr('checked', this.checked);" /></td>-->
				<td><?php echo $ms_seller; ?></td>
				<td><?php echo $ms_catalog_sellers_email; ?></td>
				<td><?php echo $ms_catalog_sellers_total_products; ?></td>
				<td><?php echo $ms_catalog_sellers_total_sales; ?></td>
				<td><?php echo $ms_catalog_sellers_total_earnings; ?></td>
				<td><?php echo $ms_catalog_sellers_current_balance; ?></td>												
				<td><?php echo $ms_catalog_sellers_status; ?></td>
				<td><?php echo $ms_catalog_sellers_date_created; ?></td>
				<td><?php echo $ms_action; ?></td>
            </tr>
          </thead>
          <tbody>
            <?php if (isset($sellers) and $sellers) { ?>
            <?php foreach ($sellers as $seller) { ?>
            <tr>
              <!--
              <td style="text-align: center;">
                <input type="checkbox" name="selected[]" value="<?php echo $seller['seller_id']; ?>" />
              </td>
              -->
              <td><a href="<?php echo $seller['customer_link']; ?>"><?php echo $seller['c.name'] . ' (' . $seller['ms.nickname'] . ')'; ?></a></td>
              <td><?php echo $seller['c.email']; ?></td>
              <td><?php echo $seller['total_products']; ?></td>
              <td><?php echo $seller['total_sales']; ?></td>
              <td><?php echo $seller['earnings']; ?></td>
              <td><?php echo $seller['current_balance']; ?></td>
              <td><?php echo $seller['status']; ?></td>
              <td><?php echo $seller['ms.date_created']; ?></td>
              <td class="left"><?php foreach ($seller['actions'] as $action) { ?>
                [ <a href="<?php echo $action['href']; ?>"><?php echo $action['text']; ?></a> ]
                <?php } ?></td>                            
            </tr>
            <?php } ?>
            <?php } else { ?>
            <tr>
              <td class="center" colspan="9"><?php echo $text_no_results; ?></td>
            </tr>
            <?php } ?>
          </tbody>
        </table>
      </form>
      <div class="pagination"><?php echo $pagination; ?></div>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('#date').datepicker({dateFormat: 'yy-mm-dd'});
});
//--></script>
<?php echo $footer; ?> 