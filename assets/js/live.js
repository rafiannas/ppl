//ambil elemen2 yang dibutuhkan dengan //pakaiDOM

var cari=document.getElementById('cari');
var tombol_cari = document.getElementById('tombol_cari');
var container = document.getElementById('container');

//pakai triger= sebuah aksi yg kita lakukan untuk jalankan ajax (tekan tombol/ganti input,element/load ha;aman=>klo dijs namnya event)

//tombol_cari.addEventListener('')	//click=> ketika di clik, double clik, mouseover

//tambahkan event ketika cari ditulis
cari.addEventListener('keyup', function()
{
	//buat objek ajax
	var xhr = new XMLHttpRequest();

	//cek kesiapan ajax
	xhr.onreadystatechange=function()
	{
		if(xhr.readyState == 4 && xhr.status == 200)
		{
			// console.log(xhr.responseText);
			container.innerHTML = xhr.responseText;
		}
	}

	//eksekusi ajax
	//parameter 1= methode, 2=sumberdata darimana, 3= mau sikronus
	xhr.open('GET', '../ajax/isi.php?cari='+cari.value, true)
	xhr.send();

});