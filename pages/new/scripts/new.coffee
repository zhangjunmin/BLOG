;$( ->
  $('#upload').click(->
    $.ajax(
      type :'post'
      url  :'/upload'
      success:(res) ->
        console.log res
      error : ->
        alert('error')
    )	
  );
  );