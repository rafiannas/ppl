<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Welcome extends CI_Controller
{

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		require_once 'vendor\autoload.php';
		$clientID = '915208029243-tp7v2c1kcvuj4eaghbpoa39s40mlpprc.apps.googleusercontent.com';
		$clientSecret = 'EyKG9FvuVfbwJ0kPT5WXCzCW';
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
			var_dump($google_account_info);
		} else {
			echo "<a href = '" . $client->createAuthUrl() . "'>Google Login</a>";
		}
	}
}
