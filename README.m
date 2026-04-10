<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sanwal Portfolio</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">

<style>
*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Poppins;
scroll-behavior:smooth;
}

body{
background:#0a0a0a;
color:white;
}

/* glowing background */
body::before{
content:"";
position:fixed;
width:500px;
height:500px;
background:rgba(0,255,255,0.2);
filter:blur(150px);
top:-100px;
left:-100px;
z-index:-1;
}

/* navbar */
nav{
display:flex;
justify-content:space-between;
padding:20px 8%;
background:rgba(255,255,255,0.03);
backdrop-filter:blur(10px);
position:sticky;
top:0;
}

nav h2{
color:#00ffff;
text-shadow:0 0 15px #00ffff;
}

nav ul{
display:flex;
gap:20px;
list-style:none;
}

.menu-btn{
display:none;
font-size:25px;
}

/* hero */
.hero{
display:flex;
justify-content:space-between;
align-items:center;
padding:80px 8%;
flex-wrap:wrap;
}

.hero img{
width:320px;
border-radius:20px;
box-shadow:0 0 30px #00ffff;
animation:float 4s ease-in-out infinite;
}

@keyframes float{
0%{transform:translateY(0)}
50%{transform:translateY(-20px)}
100%{transform:translateY(0)}
}

.hero span{
color:#00ffff;
text-shadow:0 0 10px #00ffff;
}

button{
padding:12px 30px;
background:#00ffff;
border:none;
border-radius:30px;
cursor:pointer;
box-shadow:0 0 15px #00ffff;
}

/* section */
section{
padding:70px 8%;
}

.title{
text-align:center;
margin-bottom:40px;
}

.title h2{
text-shadow:0 0 15px #00ffff;
}

/* cards */
.skills{
display:grid;
grid-template-columns:repeat(auto-fit,minmax(200px,1fr));
gap:20px;
}

.card{
background:rgba(255,255,255,0.03);
padding:20px;
border-radius:15px;
text-align:center;
transition:0.4s;
border:1px solid rgba(0,255,255,0.2);
}

.card:hover{
transform:translateY(-10px);
box-shadow:0 0 20px #00ffff;
}

/* portfolio */
.portfolio{
display:grid;
grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
gap:20px;
}

.portfolio img{
width:100%;
border-radius:15px;
transition:0.4s;
}

.portfolio img:hover{
transform:scale(1.05);
box-shadow:0 0 20px #00ffff;
}

/* mobile */
@media(max-width:768px){
nav ul{
display:none;
flex-direction:column;
background:#111;
position:absolute;
top:70px;
right:20px;
padding:20px;
}

nav ul.active{
display:flex;
}

.menu-btn{
display:block;
}
}

/* fade animation */
.fade{
opacity:0;
transform:translateY(40px);
transition:1s;
}

.fade.show{
opacity:1;
transform:translateY(0);
}

footer{
text-align:center;
padding:20px;
opacity:0.7;
}
</style>
</head>

<body>

<nav>
<h2>Sanwal</h2>
<div class="menu-btn" onclick="toggleMenu()">☰</div>
<ul id="menu">
<li>Home</li>
<li>Skills</li>
<li>Work</li>
<li>Contact</li>
</ul>
</nav>

<div class="hero fade">
<div>
<h1>Hi I'm <span>Sanwal</span></h1>
<p>Website Developer & UI Designer</p>
<br>
<button>Hire Me</button>
</div>
<img src="images/profile.jpg">
</div>

<section class="fade">
<div class="title"><h2>Skills</h2></div>
<div class="skills">
<div class="card">UI Design</div>
<div class="card">Figma</div>
<div class="card">Web Development</div>
<div class="card">Responsive Design</div>
</div>
</section>

<section class="fade">
<div class="title"><h2>Figma Designs</h2></div>
<div class="portfolio">
<img src="images/figma1.png">
<img src="images/figma2.png">
<img src="images/figma3.png">
</div>
</section>

<section class="fade">
<div class="title"><h2>Website Projects</h2></div>
<div class="portfolio">
<img src="images/web1.png">
<img src="images/web2.png">
<img src="images/web3.png">
</div>
</section>

<section class="fade">
<div class="title"><h2>Contact</h2></div>
<p>Email: your@email.com</p>
<p>WhatsApp: +44XXXXXXXX</p>
</section>

<footer>
© 2026 Sanwal Portfolio
</footer>

<script>
function toggleMenu(){
document.getElementById("menu").classList.toggle("active");
}

window.addEventListener("scroll", function(){
var fades=document.querySelectorAll(".fade");
fades.forEach(function(f){
var top=f.getBoundingClientRect().top;
if(top<window.innerHeight-100){
f.classList.add("show");
}
});
});
</script>

</body>
</html>
