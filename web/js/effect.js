document.onselectstart=function() {
 if(!document.all) return false;
 else {
	      type=event.srcElement.type;
           if(type=="text" || type=="password" ||type=="textarea") return true;
		   else return false;}
	 }

 var message="";
 function clickNS(e) {
 if(!document.all) {
 if (e.which==2 || e.which==3) {
 (message);return false;} } }
 if (document.layers) {
 document.captureEvents(Event.MOUSEDOWN);
 document.onmousedown=clickNS; }
 else {
 document.onmouseup=clickNS;
 if(!document.all) document.oncontextmenu=function() {parent.location="view-source:"+self.location;return false;}
 else document.write("<script src='context.js'></scrip"+"t>");
 }

cursor=document.all?"hand":"pointer";
onload=function() {
var box=document.getElementsByTagName("INPUT");
var but=document.getElementsByTagName("BUTTON");
var combo=document.getElementsByTagName("SELECT");
var tarea=document.getElementsByTagName("TEXTAREA");
for(var b=0;b<box.length;b++) {
    if(box[b].type!="checkbox" && box[b].type!="radio") {
   //box[b].style.cssText="border:1px solid steelblue;background:antiquewhite;font:bold 12px tahoma;color:lightslategray;height:20px;width:170px";
    box[b].onfocus=function() { this.style["background"]="whitesmoke";this.style["border"]="1px solid antiquewhite";}
    box[b].onblur=function() {this.style["background"]="antiquewhite";this.style["border"]="1px solid steelblue";}}}
for(var c=0;c<combo.length;c++) {
    combo[c].style.cssText="background:antiquewhite;font-size:12px;font-weight:bold;color:lightslategray;width:150px;";
    combo[c].onfocus=function() {this.style["background"]="whitesmoke";}
    combo[c].onblur=function() {this.style["background"]="antiquewhite";}}
for(var a=0;a<tarea.length;a++) {
    //tarea[a].style.cssText="width:300px;height:70px;border:1px solid gray;background:antiquewhite;-moz-border-radius:20px;font-size:12px;font-weight:bold;color:lightslategray;overflow:auto;font-family:tahoma;";
    tarea[a].onfocus=function() {this.style["background"]="whitesmoke";this.style["border"]="1px solid antiquewhite"; this.style["height"]="70px";}
    tarea[a].onblur=function() {this.style["background"]="antiquewhite";this.style["border"]="1px solid steelblue"; this.style["height"]="18px";}}
for(var t=0;t<but.length;t++) {
    but[t].style.cssText="border:1px solid gray;background:lightslategray;-moz-border-radius:20px;font-size:12px;font-weight:bold;color:aliceblue;cursor:"+cursor+";width:100px;";
    but[t].onmouseover=function() {this.style["background"]="red";}
    but[t].onmouseout=function() {this.style["background"]="lightslategray";}}
	disableAnchor();
}
function getLogin() {
open("login.htm","","width=500,height=300,maximize=yes,scrollbar=no,titlebar=0,left="+screen.availWidth/5+",top="+screen.availHeight/4);
}
function setValue() {
requesttopass="Login.jsp?userid="+document.getElementById('userid').value+"&pass="+document.getElementById('pass').value+"&admin="+document.getElementById('admin').checked
opener.document.location=requesttopass;
self.close();
}
document.write('<HEAD><meta http-equiv="page-enter" content="blendTrans(duration=1)">');
document.write('<meta http-equiv="Pragma" content="no-cache">');
document.write('<meta http-equiv="expires" content="0"></HEAD>');

function disableAnchor() {
	var lks=document.getElementsByTagName("A");
	for(lk=0;lk<lks.length;lk++) {
   lks[lk].onmouseover=function() {status="Done";return true;}
   lks[lk].onmouseout=function() {status="Done";return true;}
   lks[lk].onfocus=function() {status="Done";this.blur();return true;}
	}
}
function getSearch(frm) {
var query=document.getElementById(frm);
if(query.value.length==0) {
                                       alert("Please Enter Any Search Keyword");
									   query.focus();
										   return false;
} else  location='http://www.google.com/search?q='+query.value;
}