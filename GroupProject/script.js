function login() {
    let Username = document.getElementById("Username").value;
    let Password = document.getElementById("Password").value;

    fetch(`access.php?username=${username}&password=${password}`)
    .then(response => {
      return response.text();
    })
    .then(data => {
      if (data == "valid") {
        window.location.href = "#";
      } else {
        document.getElementById("Message").innerHTML = "Not Valid";
      }
    });
}