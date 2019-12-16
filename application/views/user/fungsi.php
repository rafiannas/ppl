
<?php 
$koneksi=mysqli_connect("localhost","root","","mart");

function cari($data)
{
	global $koneksi;
	$loc=htmlspecialchars($data["location"]);

	echo "$loc";
	$query=query("SELECT * FROM vendor");
	
	foreach ($query as $v ) {
		echo $v["nama_vendor"];
	}

}

function query($query)
{
	global $koneksi;
	$result=mysqli_query($koneksi, $query);
	$wadah=[];
	while ($isi=mysqli_fetch_assoc($result))
	{
		$wadah[]=$isi;
	}
	return $wadah;

}

 ?>








