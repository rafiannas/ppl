<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">

    <!-- Main Content -->
    <div id="content">
        <!-- outer row -->
        <div class="row">
            <div class="container-fluid">

                <div class="row">
                    <!-- Detail Pengajar -->
                    <div class="col-xl-12 col-md-12 mb-12">
                        <?php $hari = date("D");
                        switch ($hari) {
                            case 'Sun':
                                $hari_ini = "Minggu";
                                break;

                            case 'Mon':
                                $hari_ini = "Senin";
                                break;

                            case 'Tue':
                                $hari_ini = "Selasa";
                                break;

                            case 'Wed':
                                $hari_ini = "Rabu";
                                break;

                            case 'Thu':
                                $hari_ini = "Kamis";
                                break;

                            case 'Fri':
                                $hari_ini = "Jumat";
                                break;

                            case 'Sat':
                                $hari_ini = "Sabtu";
                                break;

                            default:
                                $hari_ini = "Tidak di ketahui";
                                break;
                        }

                        echo $hari_ini . ", ";
                        echo date('d M Y');

                        ?>
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>x</th>
                                        <?php foreach ($lab as $a) : ?>
                                            <th><?= $a['nama_lab']; ?> </th>
                                        <?php endforeach; ?>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($jam as $j) : ?>
                                        <tr>
                                            <td><?= $j['jam']; ?></td>
                                        </tr>

                                    <?php endforeach; ?>

                                </tbody>
                            </table>

                    </div>
                </div>



            </div>
        </div>


        </form>
    </div>
</div>
</div>
<!-- outer row end    -->
<!-- /.container-fluid -->
</div>
<!-- End of Main Content -->
</div>
</div>