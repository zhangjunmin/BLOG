/*
 * 播放音频
 */


;$(function(){ 
  function play_sound(str){

  	function next(n){
  		console.log(n);
  	  var index = str.indexOf(n);
  	  if(index !=str.length-1){
        audio = document.getElementById(n);
        audio.onended = function(){
          next(str[index+1]);
        };
        audio.play();        
  	  }else{
        audio = document.getElementById(n);
        audio.play();
  	  };
    }
    next(str[0]);
  };
  $('#play').click(function(){
    play_sound('3572');
  });	
});