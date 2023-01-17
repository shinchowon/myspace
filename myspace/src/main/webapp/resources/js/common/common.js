$(function(){
});
function alertMsg(val, msg) {
    if(val == null || val == ""){
        return popup("alert", msg);
    }else{
        return true;
    }
}

function popup(type, msg) {
   var popBg = $(".popBg");
  if(popBg.length === 0){

  }
    var popup = "";
    popup = "<div class=popBg>"
    popup += "<div class='pop'>";
    popup += "<h2 class='popHead'> 알림 </h2>";
    popup += "<div class='popBox'>";
    popup += msg;
    popup += "</div>";
    if(type == "alert"){
      popup += "<div class='btn btn1' onclick='popClose()'>확인</div>"
    }
    popup += "</div> </div>";
    $("body").append(popup);
    
}
function popClose(){
    $('.popBg').remove();
    return true;
}
