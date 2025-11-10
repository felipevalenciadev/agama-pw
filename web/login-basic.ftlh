[#ftl output_format="HTML"]
<!DOCTYPE html>
<html lang="en">
<head><meta charset="UTF-8"><meta http-equiv="X-UA-Compatible" content="IE=edge"><meta name="viewport" content="width=device-width, initial-scale=1.0"><title>SSO IRISMail</title><link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2/dist/tailwind.min.css"><link rel="stylesheet" href="style.css"></head>
<body>


  
  
  
  
  
  



  <!-- LOGO -->
  <div class="w-full flex justify-center mb-8">
    <img src="https://www.rediris.es/assets/wbb5/mm/carrusel-1.svg" alt="RedIRIS Logo" class="max-w-[80%] h-auto object-contain">
  </div>

  <!-- FORM -->
  <div class="bg-white shadow-2xl rounded-2xl p-10 w-full max-w-md text-center z-10 relative loginCard">
    <h2 class="text-3xl font-bold text-[#006072] mb-6 tracking-wide title-shadow">
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

    <form method="post" class="space-y-4 mt-6">
      <div class="text-left">
        <label for="username" class="block text-gray-600 font-medium mb-1">Email</label>
        <input type="text" id="username" name="username" value="${uid!''}" class="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-[#006072]">
      </div>
      <div class="text-left">
        <label for="password" class="block text-gray-600 font-medium mb-1">Password</label>
        <input type="password" id="password" name="password" class="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-[#006072]">
      </div>
      <button type="submit" class="w-full py-2 px-4 text-white font-semibold rounded-md transition-all duration-300 login-btn">
        Iniciar Sesión
      </button>
    </form>
  </div>

  <!-- WAVE DE FONDO -->
  <div class="wave"></div>

  

</body>

<script>
    window.onload = function() {
      var form = document.querySelector("form");
      form.onsubmit = function() {
        var username = document.getElementById('username').value;
        var password = document.getElementById('password').value;
        if (username === '') { alert('Username is required'); return false; }
        if (password === '') { alert('Password is required'); return false; }
        return true;
      }
    };
  </script>
</html>