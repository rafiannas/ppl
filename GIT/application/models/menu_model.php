<?php
defined('BASEPATH') or exit('No direct script access allowed');


class menu_model extends CI_Model
{
	public function getsubmenu()
	{
		$query = "SELECT `user_sub_menu`.*, `user_menu`.`menu`
				 FROM `user_sub_menu`JOIN `user_menu`
				 ON `user_sub_menu`.`menu_id` = `user_menu`.`id`
				";
		return $this->db->query($query)->result_array();
	}

	function addvendor()
	{
		$query = "SELECT `vendor`.*, `vendor_list`.`Vendor`
				FROM `vendor` JOIN `vendor_list`
				ON `vendor`.`Id_vendor_list`=`vendor_list`.Id_Vendor_List`
		";
		return $this->db->query($query)->result_array();
	}
}
