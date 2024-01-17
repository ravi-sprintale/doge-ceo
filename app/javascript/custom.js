$(document).ready(function() {
  $("#dogForm").submit(function(e) {
    e.preventDefault();

    var dogBreed = $('#breedInput').val().trim();
    if (dogBreed !== '') {
      $('#loadingSymbol').show();
      $.ajax({
        type: "GET", 
        url: "/dogs/fetch_breed", 
        dataType: 'script',
        data: { dog_breed: dogBreed },
        success: function(response) {
          console.log(response);
          $('#loadingSymbol').hide();
        },
        error: function(error) {
          console.error(error);
        }
      });
    }
  });
});