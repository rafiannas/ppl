<?php
class Laporanpdf extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->library('pdf');
    }

    function index()
    {
        $pdf = new FPDF('l', 'mm', 'A4');
        // membuat halaman baru
        $pdf->AddPage();
        // setting jenis font yang akan digunakan
        $pdf->SetFont('Arial', 'B', 12);
        // mencetak string 
        $pdf->Cell(190, 7, 'LAPORAN PEMINJAMAN LAB', 0, 1, 'C');
        $pdf->SetFont('Arial', 'B', 12);
        $pdf->Cell(190, 7, 'INFORMATIKA UAI', 0, 1, 'C');
        // Memberikan space kebawah agar tidak terlalu rapat
        $pdf->Cell(10, 8, '', 0, 1);
        $pdf->SetFont('Arial', 'B', 10);
        
        $pdf->Cell(45, 6, 'Email User', 1, 0);
        $pdf->Cell(34, 6, 'Lab', 1, 0);
        $pdf->Cell(37, 6, 'Tanggal', 1, 0);
        $pdf->Cell(28, 6, 'Jam Mulai', 1, 0);
        $pdf->Cell(29, 6, 'Jam Selesai', 1, 0);
        $pdf->Cell(30, 6, 'tempat duduk', 1, 0);
        $pdf->Cell(31, 6, 'Kegiatan', 1, 1);

        $pdf->SetFont('Arial', '', 9);
            $this->form_validation->set_rules('awal', 'Awal', 'required');
        $this->form_validation->set_rules('akhir', 'Akhir', 'required|trim');

            $awall = $this->session->userdata('tgl_awal');
            $akhirr = $this->session->userdata('tgl_akhir');
        $q = " SELECT peminjaman.* , lab.nama_lab, user.email
              FROM peminjaman,lab,user
              WHERE peminjaman.kode_lab = lab.kode_lab AND
              peminjaman.email_user = user.email AND
              peminjaman.status <> 'fas fa-fw fa-clock' AND peminjaman.tanggal_pinjam BETWEEN '$awall' AND '$akhirr' 
        
        ";
        $mahasiswa = $this->db->query($q)->result();
        foreach ($mahasiswa as $row) {
           
            $pdf->Cell(45, 6, $row->email_user, 1, 0);
            $pdf->Cell(34, 6, $row->nama_lab, 1, 0);
            $pdf->Cell(37, 6, $row->tanggal_pinjam, 1, 0);
            $pdf->Cell(28, 6, $row->jam_mulai, 1, 0);
            $pdf->Cell(29, 6, $row->jam_selesai, 1, 0);
            $pdf->Cell(30, 6, $row->tempat_duduk, 1, 0);
            $pdf->Cell(31, 6, $row->kegiatan, 1, 1);
        }
        $pdf->Output();
    }
}
