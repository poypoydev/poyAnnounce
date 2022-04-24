addEventListener('message', function(event) {
    var dat1 = event.data
    if (dat1.type == 'announce'){
        $('.mainte').html(dat1.text)
        $('.maincon').fadeIn();
        setTimeout(announcefade, dat1.time)
    }
});


function announcefade() {
    $('.maincon').fadeOut();
}