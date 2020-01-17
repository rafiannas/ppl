<?php
defined('BASEPATH') or exit('No direct script access allowed');

class admin extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		// cek_login();
	}


	public function index()
	{

		$data['title'] = 'Dashboard';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$data['admin'] = $this->db->query("SELECT COUNT(id_user) AS jumlah FROM user WHERE role=1")->row_array();
		$data['member'] = $this->db->query("SELECT COUNT(id_user) AS jumlah FROM user WHERE role=2")->row_array();

		$data['lab'] = $this->db->query("SELECT COUNT(id_lab) AS jumlah FROM lab")->row_array();

		$data['pinjam'] = $this->db->query("SELECT COUNT(id_peminjaman) AS jumlah FROM peminjaman")->row_array();
		$this->load->view('templates/header', $data);
		$this->load->view('templates/slidebar', $data);
		$this->load->view('templates/topbar', $data);
		$this->load->view('admin/index', $data);
		$this->load->view('templates/footer', $data);
	}

	public function list_admin()
	{

		$data['title'] = 'List Admin';
		$data['title2'] = 'Laboratorium Informatika';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$data['admin'] = $this->db->query("SELECT * FROM user WHERE role=1")->result_array();

		$this->load->view('templates/header', $data);
		$this->load->view('templates/slidebar', $data);
		$this->load->view('templates/topbar', $data);
		$this->load->view('admin/list_admin', $data);
		$this->load->view('templates/footer', $data);
	}
	public function list_member()
	{

		$data['title'] = 'Daftar Anggota';
		$data['title2'] = 'Laboratorium Informatika';

		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$data['member'] = $this->db->query("SELECT * FROM user WHERE role=2")->result_array();

		$this->load->view('templates/header', $data);
		$this->load->view('templates/slidebar', $data);
		$this->load->view('templates/topbar', $data);
		$this->load->view('admin/list_member', $data);
		$this->load->view('templates/footer', $data);
	}
	public function list_lab()
	{

		$data['title'] = 'Daftar Laboratorium Informatika';
		$data['title2'] = 'Universitas Al Azhar Indonesia';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$data['lab'] = $this->db->query("SELECT* FROM lab")->result_array();

		$this->load->view('templates/header', $data);
		$this->load->view('templates/slidebar', $data);
		$this->load->view('templates/topbar', $data);
		$this->load->view('admin/list_lab', $data);
		$this->load->view('templates/footer', $data);
	}
	public function list_peminjaman()
	{

		$data['title'] = 'List Peminjaman Lab Informatika';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$role = $data['user']['role'];


		$flag = ['flag' => 0];
		$this->session->set_userdata($flag);
		$data['s1'] = $this->session->userdata('flag');

		$this->load->view('templates/header', $data);
		$this->load->view('templates/slidebar', $data);
		$this->load->view('templates/topbar', $data);
		$this->load->view('admin/list_peminjaman', $data);
		$this->load->view('templates/footer', $data);
	}
	public function next()
	{

		$this->form_validation->set_rules('awal', 'Awal', 'required');
		$this->form_validation->set_rules('akhir', 'Akhir', 'required|trim');

		$data['title'] = 'List Peminjaman Lab Informatika';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$role = $data['user']['role'];

		$flag = ['flag' => 1];
		$this->session->set_userdata($flag);
		$data['s1'] = $this->session->userdata('flag');

		// 	$q_pinjam = "SELECT peminjaman.* , user.nama_user ,lab.nama_lab 
		// 			FROM peminjaman, lab, user
		// 			WHERE peminjaman.nim_user = user.nim_user AND
		// 			peminjaman.kode_lab = lab.kode_lab AND peminjaman.status <> 'MENUNGGU'
		// ";


		$awall = ($this->input->post('awal'));
		$akhirr = ($this->input->post('akhir'));

		$tgl_dow = ['tgl_awal' => $awall, 'tgl_akhir' => $akhirr];
		$this->session->set_userdata($tgl_dow);
		$data['s2'] = $this->session->userdata('tgl_dow');



		$q_pinjam = "SELECT peminjaman.* , user.email ,lab.nama_lab 
					FROM peminjaman, lab, user
					WHERE peminjaman.email_user = user.email AND
					peminjaman.kode_lab = lab.kode_lab AND peminjaman.status <> 'fas fa-fw fa-clock' AND peminjaman.tanggal_pinjam BETWEEN '$awall' AND '$akhirr' 
		";
		$data['pinjam'] = $this->db->query($q_pinjam)->result_array();

		$this->load->view('templates/header', $data);
		$this->load->view('templates/slidebar', $data);
		$this->load->view('templates/topbar', $data);
		$this->load->view('admin/list_peminjaman', $data);
		$this->load->view('templates/footer', $data);
	}
	//--------------------------------HAPUS------------------------
	public function hapus_admin($id)
	{
		$this->db->set('role', 2);
		$this->db->where('id_user', $id);
		$this->db->update('user');

		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Menghapus Admin </div>');
		redirect('admin/list_admin');
	}
	public function hapus_member($id)
	{
		$this->db->where('id_user', $id);
		$this->db->delete('user');

		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Menghapus Member</div>');
		redirect('admin/list_member');
	}
	public function hapus_lab($id)
	{
		$this->db->where('id_lab', $id);
		$this->db->delete('lab');

		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Menghapus Lab</div>');
		redirect('admin/list_lab');
	}
	public function hapus_pinjam($id)
	{
		$this->db->where('id_peminjaman', $id);
		$this->db->delete('peminjaman');

		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Menghapus Peminjaman</div>');
		redirect('admin/list_peminjaman');
	}
	//---------------------EDIT-----------------------------------------

	public function ubah_admin($id)
	{

		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$data['title'] = 'Ubah Profil ' . $data['user']['email'];
		$data['user2'] = $this->db->get_where('user', ['id_user' => $id])->row_array();

		$this->form_validation->set_rules('nama', 'Nama', 'required|trim');
		$this->form_validation->set_rules('nim', 'NIM', 'required|trim');
		//$this->form_validation->set_rules('id', 'Id', 'required|trim');
		$this->form_validation->set_rules('nope', 'Nope', 'required|trim');

		if ($this->form_validation->run() == false) {
			$this->load->view('templates/header', $data);
			$this->load->view('templates/slidebar', $data);
			$this->load->view('templates/topbar', $data);
			$this->load->view('admin/ubah_admin', $data);
			$this->load->view('templates/footer', $data);
		} else {
			$nama = $this->input->post('nama');
			//$id = $this->input->post('id');
			$nim = $this->input->post('nim');
			$nope = $this->input->post('nope');


			$data = [
				'nama_user' => $nama,
				'nim_user' => $nim,
				'no_hp' => $nope
			];

			$this->db->where('id_user', $id);
			$this->db->update('user', $data);

			if ($data['user2']['role' == 1]) {
				$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Mengubah Profil Admin</div>');
				redirect('admin/list_admin');
			} else {
				$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Mengubah Profil Member</div>');
				redirect('admin/list_member');
			}
		}
	}

	public function ubah_lab($id)
	{
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$data['lab'] = $this->db->get_where('lab', ['id_lab' => $id])->row_array();
		$data['title'] = 'Ubah Lab ' . $data['lab']['nama_lab'];

		$this->form_validation->set_rules('kode', 'Kode', 'required|trim');
		$this->form_validation->set_rules('nama', 'Nama', 'required|trim');

		if ($this->form_validation->run() == false) {
			$this->load->view('templates/header', $data);
			$this->load->view('templates/slidebar', $data);
			$this->load->view('templates/topbar', $data);
			$this->load->view('admin/ubah_lab', $data);
			$this->load->view('templates/footer', $data);
		} else {
			$data = [
				'kode_lab' => htmlspecialchars($this->input->post('kode', true)),
				'nama_lab' => htmlspecialchars($this->input->post('nama', true)),

			];
			$this->db->where('id_lab', $id);
			$this->db->update('lab', $data);


			$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Mengubah Lab</div>');
			redirect('admin/list_lab');
		}
	}

	//----------------------TAMBAH-------------------------------------------
	public function tambah_admin()
	{
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$data['title'] = 'Tambah Admin';


		//$this->form_validation->set_rules('nama', 'Nama', 'required|trim');
		//$this->form_validation->set_rules('nim', 'Nim', 'required|trim|is_unique[user.nim_user]', [
		//	'is_unique' => 'NIM/NIP sudah terdaftar!'
		//]);
		//$this->form_validation->set_rules('Phone_Number', 'Phone Number', 'required|trim');
		$this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email');
		// $this->form_validation->set_rules('password1', 'Password', 'required|trim|min_length[4]|matches[password2]', [
		// 	'matches' => 'password dont match! ',
		// 	'min_length' => 'password too short!'
		// ]);
		//	$this->form_validation->set_rules('password2', 'Password2', 'required|trim|matches[password1]');

		if ($this->form_validation->run() == false) {
			$this->load->view('templates/header', $data);
			$this->load->view('templates/slidebar', $data);
			$this->load->view('templates/topbar', $data);
			$this->load->view('admin/tambah_admin', $data);
			$this->load->view('templates/footer', $data);
		} else {
			$email = htmlspecialchars($this->input->post('email', true));

			$cek = $this->db->get_where('user', ['email' => $email])->row_array();

			if (!$cek) {
				$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Email tidak terdaftar ! </div>');
				redirect('admin/tambah_admin');
			} else if ($cek['role'] == 1) {
				$this->session->set_flashdata('message', '<div class="alert alert-warning" role="alert">Email seudh terdaftar menjadi admin ! </div>');
				redirect('admin/tambah_admin');
			} else {

				$this->db->set('role', 1);
				$this->db->where('email', $email);
				$this->db->update('user');

				$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Menambahkan Admin</div>');
				redirect('admin/list_admin');
			}
		}
	}
	public function tambah_lab()
	{
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$data['title'] = 'Tambah Lab';

		$this->form_validation->set_rules('kode', 'Kode', 'required|trim');
		$this->form_validation->set_rules('nama', 'Nama', 'required|trim');

		if ($this->form_validation->run() == false) {
			$this->load->view('templates/header', $data);
			$this->load->view('templates/slidebar', $data);
			$this->load->view('templates/topbar', $data);
			$this->load->view('admin/tambah_lab', $data);
			$this->load->view('templates/footer', $data);
		} else {
			$data = [
				'kode_lab' => htmlspecialchars($this->input->post('kode', true)),
				'nama_lab' => htmlspecialchars($this->input->post('nama', true)),

			];
			$this->db->insert('lab', $data);

			$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Menambahkan Lab</div>');
			redirect('admin/list_lab');
		}
	}

	public function req()
	{
		$data['title'] = 'Daftar Peminjaman ';
		$data['title2'] = 'Laboratorium Informatika';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();


		$q_req = "SELECT kegiatan.*, peminjaman.* , user.email ,lab.nama_lab 
				FROM peminjaman, lab, user, kegiatan
				WHERE peminjaman.email_user = user.email AND
				peminjaman.kode_lab = lab.kode_lab AND status= 'fas fa-fw fa-clock'
				AND kegiatan.id = peminjaman.id_kegiatan

		";
		$data['pinjam'] = $this->db->query($q_req)->result_array();

		$this->load->view('templates/header', $data);
		$this->load->view('templates/slidebar', $data);
		$this->load->view('templates/topbar', $data);
		$this->load->view('admin/req', $data);
		$this->load->view('templates/footer', $data);
	}
	public function izinkan($id)
	{
		$data = [
			'status' => 'fas fa-fw fa-check'


		];
		$this->db->where('id_peminjaman', $id);
		$this->db->update('peminjaman', $data);


		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Mengizinkan Peminjmana Lab</div>');
		redirect('admin/req');
	}
	public function tolak($id)
	{
		$data = [
			'status' => 'fas fa-fw fa-times'


		];
		$this->db->where('id_peminjaman', $id);
		$this->db->update('peminjaman', $data);


		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Menolak Peminjmana Lab</div>');
		redirect('admin/req');
	}

	public function last()
	{
		$data['title'] = 'Daftar Peminjaman ';
		$data['title2'] = 'Laboratorium Informatika';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

		$query = "SELECT * FROM peminjaman, user, lab, kegiatan
			WHERE peminjaman.email_user = user.email AND
				peminjaman.kode_lab = lab.kode_lab 
				AND kegiatan.id = peminjaman.id_kegiatan
				AND peminjaman.status <> 'fas fa-fw fa-clock'		
		";

		$data['peminjaman'] = $this->db->query($query)->result_array();


		$this->load->view('templates/header', $data);
		$this->load->view('templates/slidebar', $data);
		$this->load->view('templates/topbar', $data);
		$this->load->view('admin/last', $data);
		$this->load->view('templates/footer', $data);
	}
}
