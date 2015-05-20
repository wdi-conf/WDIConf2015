$(document).ready(function() {

	$('.join-event-modal').click(function() {
		var event_id = $(this).data("event-id");
		$('#user_event_id').val(event_id)
		$('#join-event-modal').show();

	});

	$('.close-modal').on('click', function() {
		$('.modal-background').hide();
	});

	$('.login-modal').click(function() {
		$('#login-modal').show();
	});

});
