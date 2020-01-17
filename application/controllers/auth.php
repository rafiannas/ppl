<?php
defined('BASEPATH') or exit('No direct script access allowed');

class auth extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
        #cek_login();
    }

    public function index()
    {
        require_once 'vendor\autoload.php';
        $clientID = '389805386096-ket0geqa5o07ef9s47hmikihlak487u2.apps.googleusercontent.com';
        $clientSecret = '390UMy1eQrIDppsO2fTkhB6D';
        $redirectUri = 'http://localhost/labInformatikaUAI/';

        //create client request to access Google API

        $client = new Google_Client();
        $client->setClientId($clientID);
        $client->setclientSecret($clientSecret);
        $client->setRedirectUri($redirectUri);

        //set the scopes required for
        $client->addScope("email");
        $client->addScope("profile");

        //authenticate cpde from Google OAuth Flow


        if (isset($_GET['code'])) {
            $token = $client->fetchAccessTokenWithAuthCode($_GET['code']);

            $client->setAccessToken($token['access_token']);

            //get profile info
            $google_oauth = new Google_Service_Oauth2($client);
            $google_account_info = $google_oauth->userinfo->get();
            $email = $google_account_info->email;
            $name = $google_account_info->name;
            $domain = $google_account_info->hd;

            echo $name;
            echo $email;
            echo $domain;

            $if = "if.uai.ac.id";
            if ($domain != $if) {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Harus Pakai Akun Gmail IF</div>');
                redirect('auth');
            } else {
                $cekuser = $this->db->get_where('user', ['email' => $email])->row_array();
                if (!$cekuser)
                {
                    $insert= [ 'email'=> $email,
                                'role' => 2
                    ];
                     $this->db->insert('user', $insert);
                }
                $user = $this->db->get_where('user', ['email' => $email])->row_array();

                $data = [
                    'email' => $user['email'],
                    'role' => $user['role']

                ];
                $this->session->set_userdata($data); //simpen data di session

                if ($user['role'] == 1) {
                    redirect('admin');
                } 
                else if( $user['role'] == 2) {
                    redirect('user');
                }
            }
        } else {
        	 echo "<div class= 'row justify-content-center'>

        	 	

        	 </div>";









            // echo "<a class= \"btn  \"  style=\"margin-left:47%; margin-top: 20%\" href = " . $client->createAuthUrl() . "><i class=\"fab fa-google fa-3x\"></i></a>";
        }
        $data['google'] = $client->createAuthUrl();

        $this->form_validation->set_rules('nim', 'Nim', 'required|trim');
        $this->form_validation->set_rules('password', 'Password', 'required|trim');

        if ($this->form_validation->run() == false) {
            $data['title'] = 'Login Page';
            $this->load->view('templates/auth_header', $data);
            $this->load->view('auth/login');
            $this->load->view('templates/auth_footer');
        } else {
            $this->_login();
        }
    }




    private function _login()
    {
        $nim = $this->input->post('nim');
        $password = $this->input->post('password');


        $user = $this->db->get_where('user', ['email' => $nim])->row_array();
        //jika usernya ada
        if ($user) {

            //cek password
            if (password_verify($password, $user['password'])) {
                $data = [
                    'email' => $user['email'],

                    'role' => $user['role']

                ];
                $this->session->set_userdata($data); //simpen data di session
                if ($user['role'] == 1) {
                    redirect('admin');
                } else {
                    redirect('user');
                }

                redirect('user'); //kontroler user
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Password Salah</div>');
                redirect('auth');
            }
        } else {
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">NIM tidak terdaftar!</div>');
            redirect('auth');
        }
    }




    // public function registration()
    // {
    //     if ($this->session->userdata('nim')) {
    //         redirect('user');
    //     }


    //     $this->form_validation->set_rules('nama', 'Nama', 'required|trim');
    //     $this->form_validation->set_rules('nim', 'Nim', 'required|trim|is_unique[user.nim_user]', [
    //         'is_unique' => 'NIM/NIP sudah terdaftar!'
    //     ]);
    //     $this->form_validation->set_rules('Phone_Number', 'Phone Number', 'required|trim');
    //     $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email|is_unique[user.email]', [
    //         'is_unique' => 'Email has been registered!'
    //     ]);
    //     $this->form_validation->set_rules('password1', 'Password', 'required|trim|min_length[4]|matches[password2]', [
    //         'matches' => 'password dont match! ',
    //         'min_length' => 'password too short!'
    //     ]);
    //     $this->form_validation->set_rules('password2', 'Password', 'required|trim|matches[password1]');


    //     if ($this->form_validation->run() == false) {
    //         $title['title'] = 'User Registration';
    //         $this->load->view('templates/auth_header', $title);
    //         $this->load->view('auth/registration');
    //         $this->load->view('templates/auth_footer');
    //     } else {
    //         $cek_email = $this->input->post('email');
    //         $q_c = $this->db->get_where('email_infor', ['email_if' => $cek_email])->row_array();
    //         if ($q_c) {
    //             $data = [
    //                 'nama_user' => htmlspecialchars($this->input->post('nama', true)),
    //                 'nim_user' => htmlspecialchars($this->input->post('nim', true)),
    //                 'email' => htmlspecialchars($this->input->post('email', true)),
    //                 'password' => password_hash($this->input->post('password1'), PASSWORD_DEFAULT),
    //                 'no_hp' => htmlspecialchars($this->input->post('Phone_Number', true)),
    //                 'role' => 2,
    //             ];
    //             $this->db->insert('user', $data);

    //             //$this->_sendEmail();

    //             $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Daftar</div>');
    //             redirect('auth');
    //         } else {
    //             $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Harus Pakai Email Informatika ! </div>');
    //             redirect('auth/registration');
    //         }
    //     }
    // }




    public function logout()
    {
        $this->session->unset_userdata('email');
        $this->session->unset_userdata('role');

        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Keluar !</div>');
        redirect('auth');
    }

    public function blocked()
    {
        $this->load->view('auth/blocked');
    }
}
