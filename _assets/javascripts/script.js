$(document).foundation();
$(document).ready(function() {
  $("img").unveil();
  $('#container-index').infinitescroll({
    navSelector   : ".pagination",
    nextSelector  : "a#next",
    itemSelector  : "#container-index .item-masonry",
    debug     : true,
    dataType    : 'html',
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