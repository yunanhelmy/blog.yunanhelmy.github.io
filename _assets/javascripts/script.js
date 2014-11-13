$(document).foundation();
$(document).ready(function() {
  $("img").unveil();
  $('#container-index').infinitescroll({
    navSelector   : ".pagination",
    nextSelector  : "a#next",
    itemSelector  : "#container-index .item-masonry",
    animate       : true,
    loadingImg    : "/images/ajax-loader.gif", 
    loadingText   : "Loading another awesomeness ...", 
    donetext      : "Oops. Sorry its end of line ..." ,
    debug         : true,
    dataType      : 'html',
    path: function(index) {
      return "/articles/" + index + "/index.html";
    }
    }, function(newElements, data, url){
      var $newElems = $( newElements );
      $('#container-index').masonry( 'appended', $newElems );
      
  });
  var share = new Share(".share-button", {
    networks: {
      facebook: {
        app_id: "1554273238119418",
      }
    }
  });
});