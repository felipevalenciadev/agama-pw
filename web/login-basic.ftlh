[#ftl output_format="HTML"]
<!DOCTYPE html>
<html lang="en">
<head><meta charset="UTF-8"><meta http-equiv="X-UA-Compatible" content="IE=edge"><meta name="viewport" content="width=device-width, initial-scale=1.0"><title>SSO IRISMail
	</title><link rel="stylesheet" href="style.css"></head>
<body>

  
	
	
	
	
	
  
  
	<!-- HEADER: logo grande (independiente del form) -->
	<header class="w-full flex justify-center pt-6 pb-4 logo-hero">
	  <img src="https://www.rediris.es/assets/wbb5/mm/carrusel-1.svg" alt="RedIRIS" class="logo-img">
	</header>
	<!-- MAIN: el formulario queda centrado dentro del espacio restante -->
	<main class="flex-1 main-area">
	  <div class="bg-white shadow-2xl rounded-2xl p-10 w-full max-w-lg text-center loginCard">
		<h2 class="text-3xl font-bold mb-10 tracking-wide title-shadow" id="ig8am">
		  <span class="underline-title">SSO IRISMail</span>
		</h2>
		[#if errorMessage??]
		<div role="alert" class="p-3 mb-3 text-sm text-red-800 bg-red-50 rounded-lg border border-red-200">
		  ${errorMessage}
		</div>
		[/#if]
		[#if lockMessage??]
		<div role="alert" class="p-3 mb-3 text-sm text-yellow-800 bg-yellow-50 rounded-lg border border-yellow-200">
		  ${lockMessage}
		</div>
		[/#if]
		<form method="post" class="space-y-8 mt-6">
		  <!-- Campo Email -->
		  <div class="relative floating-group">
			<input type="text" id="username" name="username" value="${uid!''}" placeholder=" " class="floating-input peer">
			<label for="username" class="floating-label">Email</label>
		  </div>
		  <!-- Campo Password -->
		  <div class="relative floating-group">
			<input type="password" id="password" name="password" placeholder=" " class="floating-input peer">
			<label for="password" class="floating-label">Password</label>
		  </div>
		  <button type="submit" class="w-full py-3 px-4 text-white font-semibold rounded-md login-btn text-lg">
			Iniciar Sesión
		  </button>
		</form>
		<!-- Texto inferior -->
		<p class="text-sm text-gray-600 mt-10">
		  Soportado por:
		  <a href="https://quersystem.com" target="_blank" class="text--006072- font-semibold hover:underline">
			Quersystem
		  </a>
		</p>
	  </div>
	</main>
  
  
</body>

<script>
	window.onload = function () {
	  var form = document.querySelector("form");
	  form.onsubmit = function () {
		var u = document.getElementById('username').value.trim();
		var p = document.getElementById('password').value.trim();
		if (!u) {
		  alert('Username is required');
		  return false;
		}
		if (!p) {
		  alert('Password is required');
		  return false;
		}
		return true;
	  }
	};
  </script>
</html>