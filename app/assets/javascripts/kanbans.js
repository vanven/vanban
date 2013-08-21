// function dragBlock(block, event) {
//   event.dataTransfer.setData('Block', block.id);
// }

// function dropBlock(target, event) {
//   var block = event.dataTransfer.getData('Block');
//   target.appendChild(document.getElementById(block));
// }

// dragEvent.dataTransfer.setData("text/html", dragEvent.target.textContent+"|"+dragEvent.target.parentNode.id);


// $(function() {
//   $( "ul.droptrue" ).sortable({
//     connectWith: "ul"
//   });

//   $( "ul.dropfalse" ).sortable({
//     connectWith: "ul",
//     dropOnEmpty: false
//   });

//   $( "#sortable1, #sortable2, #sortable3, #sortable4" ).disableSelection();
// });


  // blockcode += '<div class="portlet">'
  // blockcode +=  '<div class="portlet-header">'
  // blockcode +=  '<span class="ui-icon ui-icon-minusthick"></span>'
  // blockcode +=  'Stuff'
  // blockcode +=  '</div>'
  // blockcode +=  '<div class="portlet-content">Content'
  // blockcode +=  '</div>'
  // blockcode += '</div>'


// jQuery UI for sortable with portlets
sortBlocks = $(function() {
    $( ".column" ).sortable({
      connectWith: ".column"
    });

    $( ".portlet" ).addClass( "ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" )
      .find( ".portlet-header" )
        .addClass( "ui-widget-header ui-corner-all" )
        .prepend( "<span class='ui-icon ui-icon-plusthick'></span>")
        .end()
      .find( ".portlet-content" );

    $( ".portlet-header .ui-icon" ).click(function() {
      $( this ).toggleClass( "ui-icon-plusthick" ).toggleClass( "ui-icon-minusthick" );
      $( this ).parents( ".portlet:first" ).find( ".portlet-content" ).toggle();
    });

    $( ".column" ).disableSelection();
  });

var s = sortBlocks;

// My jQuery for dynamically making more blocks/portlets/whatever the boxes!
  var blockcode = '';
  blockcode += '<div class="portlet ui-widget ui-widget-content ui-helper-clearfix ui-corner-all">'
  blockcode +=  '<div class="portlet-header ui-widget-header ui-corner-all">'
  blockcode +=    '<span class="ui-icon ui-icon-plusthick"></span>'
  blockcode +=    'Stuff'
  blockcode +=  '</div>'
  blockcode +=  '<div class="portlet-content">Content'
  blockcode +=  '</div>'
  blockcode += '</div>'

  $('#add_todo').click(function() {
    $('#to-do').append(blockcode)
    .trigger(sortBlocks);
    console.log(sortBlocks);
  });

  $('#add_today').click(function() {
    $('#today').append(blockcode);
    console.log(blockcode);
  });

  $('#add_wip').click(function() {
    $('#wip').append(blockcode);
    console.log(blockcode);
  });

  $('#add_done').click(function() {
    $('#done').append(blockcode);
    console.log(blockcode);
  });


