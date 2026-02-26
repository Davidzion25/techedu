function register(e){
  e.preventDefault();
  localStorage.setItem("student","registered");
  document.getElementById("msg").innerHTML="Registration successful!";
}

function login(e){
  e.preventDefault();
  let user = localStorage.getItem("student");
  if(user){
    window.location.href="index.html";
  }else{
    document.getElementById("msg").innerHTML="Please register first.";
  }
}

function showQuestion(){
  document.getElementById("question").style.display="block";
}

function checkAnswer(ans){
  let r=document.getElementById("result");
  if(ans==="B"){
    r.innerHTML="Correct ✔";
  }else{
    r.innerHTML="Wrong ❌ Try again";
  }
}
