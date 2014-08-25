/*
 * 播放音频
 */

;(function($){

  function Audio(){
    ready();
  };

  Audio.prototype.play = function(str){
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
  function ready(){
    var html = "<audio id ='0' src ='/sounds/0.wav'></audio>"
              +"<audio id ='1' src ='/sounds/1.wav'></audio>"
              +"<audio id ='2' src ='/sounds/2.wav'></audio>"
              +"<audio id ='3' src ='/sounds/3.wav'></audio>"
              +"<audio id ='4' src ='/sounds/4.wav'></audio>"
              +"<audio id ='6' src ='/sounds/5.wav'></audio>"
              +"<audio id ='7' src ='/sounds/7.wav'></audio>"
              +"<audio id ='8' src ='/sounds/8.wav'></audio>"
              +"<audio id ='9' src ='/sounds/9.wav'></audio>";
    $('body').append(html);       
  }; 
  window.Audio = Audio;
})(jQuery);

$(function(){
  var audio = new Audio();
  $('#play').click(function(){
    audio.play('3572');
  });	
});