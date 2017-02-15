$(document).on('submit', "#chat_form", getResponse);
function getResponse(event){
  event.preventDefault();
  //Getting question from input field on the form
  var inputText = $('#question').val();
  console.log(inputText);

  //Ajax request to the back-end to get the response from api.ai
  $.ajax('/chatbot/show', {
    data: {
      question: inputText
    }
  }).done(function (response) {
    //oooh, thats a long way to get the response, but thats how api.ai works ... :|
    var message = response.result.fulfillment.messages[0].speech;
    //Appending the question and clear the input field
    var $question = $('<div/>');
    $question.text(inputText);
    $(".wrapper").append($question);
    $('#question').val('');

    //Appending to the same page.
    var $response = $('<div/>');
    $response.text(message);
    $(".wrapper").append($response);
  });

  return false;
}
