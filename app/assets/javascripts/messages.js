// dom ready shortcut // 
$(function() {
  $('.btn-delete-message').click(function() {
    if (!confirm("Are you sure")) {
      return false;
    }
    
    var deleteButton = $(this);
    
    deleteButton.parents('tr').remove(); //this line removes the record in the browser. The record in db is already deleted, so if we comment this line out, the data will not be syned as the data is deleted and the record is still being shown on browser.
    //below is the request to delete the data record from database
    // Asycronize call
    $.ajax({
      url: $(this).attr('href'),
      method: "Delete",
      dataType: "JSON"
    }).success(function(result){ //if the request is success
      alert("Done");
    }).error(function(data){
      alert("ERROR: " + data.status);
      console.error("ERROR: ", data);
    });

    return false;
  });
});