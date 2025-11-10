[#ftl output_format="HTML"]
<!DOCTYPE html>
<html lang="en">
<head><meta charset="UTF-8"><meta http-equiv="X-UA-Compatible" content="IE=edge"><meta name="viewport" content="width=device-width, initial-scale=1.0"><title>SSO IRISMail
	</title><link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2/dist/tailwind.min.css"><link rel="stylesheet" href="style.css"></head>
<body>

  
	
	
	
	
	
	
  


  <!-- HEADER: logo grande (independiente del form) -->
  <header class="w-full flex justify-center pt-6 pb-4 logo-hero">
    <img src="https://www.rediris.es/assets/wbb5/mm/carrusel-1.svg" alt="RedIRIS" class="logo-img">
  </header>

  <!-- MAIN: el formulario queda centrado dentro del espacio restante -->
  <main class="flex-1 main-area">
    <div class="bg-white shadow-2xl rounded-2xl p-8 w-full max-w-md text-center loginCard">

      <h2 class="text-3xl font-bold mb-6 tracking-wide title-shadow" style="color:#006072">
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

      <form method="post" class="space-y-4 mt-4">
        <div class="text-left">
          <label for="username" class="block text-gray-700 font-medium mb-1">Email</label>
          <input id="username" name="username" value="${uid!''}" type="text" class="w-full px-3 py-2 border border-gray-300 rounded-md input-field">
        </div>

        <div class="text-left">
          <label for="password" class="block text-gray-700 font-medium mb-1">Password</label>
          <input id="password" name="password" type="password" class="w-full px-3 py-2 border border-gray-300 rounded-md input-field">
        </div>

        <button type="submit" class="w-full py-2 px-4 text-white font-semibold rounded-md login-btn">
          Iniciar Sesión
        </button>
      </form>
    </div>
  </main>

  

</body>

<script>
    window.onload = function () {
      var form = document.querySelector("form");
      form.onsubmit = function () {
        var u = document.getElementById('username').value.trim();
        var p = document.getElementById('password').value.trim();
        if (!u) { alert('Username is required'); return false; }
        if (!p) { alert('Password is required'); return false; }
        return true;
      }
    };
  </script>
</html>