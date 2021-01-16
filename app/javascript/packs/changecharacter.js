$(document ).ready(function() {
  characterDetails()
  $('#changecharacter_character_id').change(function() {
    characterDetails()
  });
});

function characterDetails() {
  var character = document.getElementById('changecharacter_character_id').value
  $.ajax({
    url: '/character/getcharacter',
    type: 'GET',
    dataType: 'json',
    data: { 'character_id' : character},
    success: function(data){
      $('#characterlevel').html(data.all_data.character.level)
      document.getElementById('changeCharacterclasstoken').src = '/images/classtoken/'+data.all_data.characterclass.name+'.png'
      document.getElementById('changeCharacterclasstoken').title = data.all_data.characterclass.name;

      if (data.all_data.deity == null) {
        document.getElementById('changeCharacterdeitytoken').style.visibility = 'hidden';
        document.getElementById('changeCharacterdeitytoken').title = '';
      } else {
        document.getElementById('changeCharacterdeitytoken').src = '/images/deitytoken/'+data.all_data.deity.name+'.gif'
        document.getElementById('changeCharacterdeitytoken').style.visibility = 'visible';
        document.getElementById('changeCharacterdeitytoken').title = data.all_data.deity.name;
      }
      
    }
  })
  
}