function handlePhotoHomePageCheckbox(target) {
  var playerId = $(target).data('team_player_id');
  var url = $(target).data('update_team_photo');
  var homePage = target.checked;

  $.ajax({
    method: 'PUT',
    url: url,
    data: {player_id: playerId, player_photo: {home_page: homePage} },
    dataType: 'json',
  })
  .done(function(response, status, xhr) {
    console.log(response);
  })
  .fail(function(xhr, status, error) {
    console.log(error);
  });
}

function handlePhotoProfileCheckbox(target) {
  var playerId = $(target).data('team_player_id');
  var url = $(target).data('update_team_photo');
  var profilePage = target.checked;

  $.ajax({
    method: 'PUT',
    url: url,
    data: {player_id: playerId, player_photo: {profile: profilePage} },
    dataType: 'json',
  })
  .done(function(response, status, xhr) {
    console.log(response);
  })
  .fail(function(xhr, status, error) {
    console.log(error);
  });
}

$(function() {
  console.log("loaded")
;})
