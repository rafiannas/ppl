<?php
defined('BASEPATH') or exit('No direct script access allowed');

class user extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		cek_login();
	}
	

	public function index()
	{
		//$data['ok'] = 1;
		$data['title'] = 'Peminjaman Lab';
		$data['user'] = $this->db->get_where('user', ['nim_user' => $this->session->userdata('nim')])->row_array();
		$data['pilih'] = $this->db->query("SELECT * FROM lab")->result_array();

		// $data['duduk'] = $this->db->query("SELECT * FROM tempat_duduk WHERE id_lab =1")->result_array();
		// $ok = 1;
		// $data['ok'] = $ok;
		// echo $ok;
		$this->form_validation->set_rules('kegiatan', 'k1', 'required|trim');
		$this->form_validation->set_rules('lab', 'k2', 'required|trim');
		$this->form_validation->set_rules('tgl', 'k4', 'required|trim');


		if ($this->form_validation->run() == false) {
			$this->load->view('templates/header', $data);
			$this->load->view('templates/slidebar', $data);
			$this->load->view('templates/topbar', $data);
			$this->load->view('user/index', $data);
			$this->load->view('templates/footer', $data);
		} else {

			$selanjutnya = [
				'keg' => $this->input->post('kegiatan'),
				'lab' => $this->input->post('lab'),
				'tgl' => $this->input->post('tgl')

			];
			$this->session->set_userdata($selanjutnya); //simpen data di session
			redirect('user/next');
		}
	}

	public function next()
	{



		$data['title'] = 'Peminjaman Lab';
		$data['user'] = $this->db->get_where('user', ['nim_user' => $this->session->userdata('nim')])->row_array();
		$data['pilih'] = $this->db->query("SELECT * FROM lab")->result_array();
		$seat = $this->session->userdata('lab');
		$data['gambar'] = $this->db->get_where('lab', ['kode_lab' => $this->session->userdata('lab')])->row_array();
		$data['lab'] = $this->db->query("SELECT * FROM lab WHERE kode_lab = $seat")->row_array();
		$data['tgl'] = $this->session->userdata('tgl');
		$data['duduk'] = $this->db->query("SELECT * FROM tempat_duduk WHERE id_lab =$seat ")->result_array();
		$pjm =  $this->session->userdata('tgl');

		$q_p = "SELECT *
				FROM peminjaman
				WHERE kode_lab = '$seat' AND
				status = 'DI SETUJUI' AND
				tanggal_pinjam = '$pjm'
		";
		$data['pinjam'] = $this->db->query($q_p)->result_array();

		$this->form_validation->set_rules('kursi', 'k3', 'required|trim');
		$this->form_validation->set_rules('mulai', 'k5', 'required|trim');
		$this->form_validation->set_rules('selesai', 'k6', 'required|trim');

		if ($this->form_validation->run() == false) {
			$this->load->view('templates/header', $data);
			$this->load->view('templates/slidebar', $data);
			$this->load->view('templates/topbar', $data);
			$this->load->view('user/test3', $data);
			$this->load->view('templates/footer', $data);
		} else {



			$kegiatan = $this->session->userdata('keg');
			$lab = $this->session->userdata('lab');
			$tgl = $this->session->userdata('tgl');
			$mulai = $this->input->post('mulai');
			$selesai = $this->input->post('selesai');
			$kursi = $this->input->post('kursi');

			// $cek1 = $this->db->query("SELECT * FROM peminjaman WHERE tanggal_pinjam = '$tgl' AND kode_lab = '$lab' AND tempat_duduk = 'SEMUA'  ")->result_array();

			// $cek2 = $this->db->query("SELECT * FROM peminjaman WHERE tanggal_pinjam = '$tgl' AND kode_lab = '$lab' AND tempat_duduk = '$kursi' ")->result_array();

			$cek0 = $this->db->query("SELECT * FROM peminjaman WHERE tanggal_pinjam = '$tgl' AND kode_lab = '$lab'  ")->result_array();

			$flag = False;
			$flag2 = False;
			$flag3 = False;
			$flag4 = False;

			if ($kursi != 'SEMUA') {
				foreach ($cek0 as $ko) {
					if ($ko['tempat_duduk'] == 'SEMUA') {
						if (($mulai >= $ko['jam_mulai'] && $mulai <= $ko['jam_selesai']) || ($selesai >= $ko['jam_mulai'] && $selesai <= $ko['jam_selesai'])) {
							$flag = True;
						} //else if ($selesai >= $ko['jam_mulai'] && $selesai <= $ko['jam_selesai']) {
						//$flag = True;
						//}
					} else {
						if ($ko['tempat_duduk'] == $kursi) {
							if (($mulai >= $ko['jam_mulai'] && $mulai <= $ko['jam_selesai']) || ($selesai >= $ko['jam_mulai'] && $selesai <= $ko['jam_selesai'])) {
								$flag2 = True;
							} //else if ($selesai >= $ko['jam_mulai'] && $selesai <= $ko['jam_selesai']) {
							//$flag2 = True;
							//}
						}
					}
				}
			} else {
				$cek2 = $this->db->query("SELECT * FROM peminjaman WHERE tanggal_pinjam = '$tgl' AND kode_lab = '$lab'  ")->result_array();

				foreach ($cek2 as $ko2) {
					if (($mulai >= $ko2['jam_mulai'] && $mulai <= $ko2['jam_selesai']) || ($selesai >= $ko2['jam_mulai'] && $selesai <= $ko2['jam_selesai'])) {
						$flag3 = True;
					} //else if ($selesai >= $ko2['jam_mulai'] && $selesai <= $ko2['jam_selesai']) {
					// 	$flag3 = True;
					//}
				}
			}



			// foreach ($cek1 as $c1) {
			// 	if ($mulai >= $c1['jam_mulai'] || $mulai <= $c1['jam_selesai']) {
			// 		$flag = True;
			// 	}
			// 	if ($selesai >= $c1['jam_mulai'] || $selesai <= $c1['jam_selesai']) {
			// 		$flag2 = True;
			// 	}
			// }
			// if ($flag == True) {
			// 	$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Tidak bisa memilih tempat, Ruangan sudah di booking</div>');
			// 	redirect('user');
			// 	die;
			// } else {
			// 	$cek2 = $this->db->query("SELECT * FROM peminjaman WHERE tanggal_pinjam = '$tgl' AND kode_lab = '$lab' AND tempat_duduk = '$kursi' ")->result_array();

			// 	foreach ($cek2 as $c2) {
			// 		if ($mulai >= $c2['jam_mulai'] || $mulai <= $c2['jam_selesai']) {
			// 			$flag3 = True;
			// 		}
			// 		if ($selesai >= $c2['jam_mulai'] || $selesai <= $c2['jam_selesai']) {
			// 			$flag4 = True;
			// 		}
			// 	}
			// }

			// if ($flag2 == True) {
			// 	$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Tidak bisa memilih tempat, Ruangan sudah di booking</div>');
			// 	redirect('user');
			// 	die;
			// } else {
			// 	$cek2 = $this->db->query("SELECT * FROM peminjaman WHERE tanggal_pinjam = '$tgl' AND kode_lab = '$lab' AND tempat_duduk = '$kursi' ")->result_array();

			// 	foreach ($cek2 as $c2) {
			// 		if ($mulai >= $c2['jam_mulai'] || $mulai <= $c2['jam_selesai']) {
			// 			$flag3 = True;
			// 		}
			// 		if ($selesai >= $c2['jam_mulai'] || $selesai <= $c2['jam_selesai']) {
			// 			$flag4 = True;
			// 		}
			// 	}
			// }



			// foreach ($cek1 as $c) {
			// 	if ($mulai >= $c['jam_mulai'] && $mulai <= $c['jam_selesai']) {
			// 		$flag = True;
			// 	}
			// 	if ($selesai >= $c['jam_mulai'] && $selesai <= $c['jam_selesai']) {
			// 		$flag2 = True;
			// 	}
			// }
			// foreach ($cek2 as $ce) {
			// 	if ($mulai >= $ce['jam_mulai'] || $mulai <= $ce['jam_selesai']) {
			// 		$flag3 = True;
			// 	}
			// 	if ($selesai >= $ce['jam_mulai'] || $selesai <= $ce['jam_selesai']) {
			// 		$flag4 = True;
			// 	}
			// }
			if ($flag == True) {
				$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Tidak bisa memilih tempat, Ruangan sudah di booking</div>');
				redirect('user');
				die;
			}
			if ($flag2 == True) {
				$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Tidak bisa memilih tempat, Jam Bentrok!</div>');
				redirect('user');
				die;
			}

			if ($flag3 == True) {
				$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Tidak bisa memilih tempat, jam  ada yg make !</div>');
				redirect('user');
				die;
			}
			// if ($flag4 == True) {
			// 	$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Tidak bisa memilih tempat, jam  ada yg make b!</div>');
			// 	redirect('user');
			// 	die;
			// }


			$data = [
				'nim_user' => $this->session->userdata('nim'),
				'kode_lab' => $lab,
				'kegiatan' => $kegiatan,
				'tanggal_pinjam' => $tgl,
				'jam_mulai' => $mulai,
				'tempat_duduk' => $kursi,
				'jam_selesai' => $selesai,
				'status' => 'MENUNGGU'
			];

			$this->db->insert('peminjaman', $data);
			$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil memesan</div>');
			redirect('user');
		}
	}



	public function c_pass()
	{
		$data['title'] = 'Change password';
		$data['user'] = $this->db->get_where('user', ['nim_user' => $this->session->userdata('nim')])->row_array();


		$this->form_validation->set_rules('last_password', 'Last password', 'required|trim');

		$this->form_validation->set_rules('new_password', 'New password', 'required|trim|min_length[6]|matches[con_password]');

		$this->form_validation->set_rules('con_password', 'Con password', 'required|trim|min_length[6]|matches[new_password]');



		if ($this->form_validation->run() == false) {

			$this->load->view('templates/header', $data);
			$this->load->view('templates/slidebar', $data);
			$this->load->view('templates/topbar', $data);
			$this->load->view('user/c_pass', $data);
			$this->load->view('templates/footer', $data);
		} else {
			$last_password = $this->input->post('last_password');
			$new_password = $this->input->post('new_password');
			$con_password = $this->input->post('con_password');


			//password salah sama yg lama
			if (!password_verify($last_password, $data['user']['password'])) {
				$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Wrong last password !</div>');
				redirect('user/c_pass');
			} else {	//password sama sama yg lama
				if ($last_password == $new_password) {
					$this->session->set_flashdata('message', '<div class="alert alert-warning" role="alert">Password cannot be the same as last password !</div>');
					redirect('user/c_pass');
				} else {
					//password ok
					$password_hash = password_hash(($new_password), PASSWORD_DEFAULT);

					$this->db->set('password', $password_hash);
					$this->db->where('email', $this->session->userdata('email'));
					$this->db->update('user');

					$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Password changed !</div>');
					redirect('user/c_pass');
				}
			}
		}
	}
	public function riwayat()
	{
		$data['title'] = 'Riwayat Peminjaman Lab';
		$data['user'] = $this->db->get_where('user', ['nim_user' => $this->session->userdata('nim')])->row_array();
		$nim_u = $this->session->userdata('nim');
		$q_pinjam = "SELECT peminjaman.* ,lab.nama_lab 
		FROM peminjaman, lab
		WHERE peminjaman.kode_lab = lab.kode_lab AND
		nim_user = $nim_u

";

		$data['pinjam'] = $this->db->query($q_pinjam)->result_array();
		$this->load->view('templates/header', $data);
		$this->load->view('templates/slidebar', $data);
		$this->load->view('templates/topbar', $data);
		$this->load->view('user/riwayat', $data);
		$this->load->view('templates/footer', $data);
	}



	public function calendar()
	{


		$data['user'] = $this->db->get_where('user', ['nim_user' => $this->session->userdata('nim')])->row_array();
		$data['lab'] = $this->db->get('lab')->result_array();
		$data['jam'] = $this->db->get('jam')->result_array();

		$this->load->view('templates/header');
		$this->load->view('templates/slidebar');
		$this->load->view('templates/topbar', $data);
		$this->load->view('user/calendar', $data);
		$this->load->view('templates/footer');
	}
}
