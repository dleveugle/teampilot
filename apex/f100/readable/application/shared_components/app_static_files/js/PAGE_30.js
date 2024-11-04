/**
 * Function that display the ellipsis menu of each team card
 */
function showTeamEllipsisMenu (pLink) {
    var theLink = $(pLink);
    var dataKey = theLink.attr("tp-key");
    callAjaxRouter(
        {
            x01: "GetTeamEllipsisMenu", 
            x02: $v('P0_USER_ID'),
            x03: dataKey
        },
        {dataType: "json"},
        [ ]
    ).then(function(result) {
        $('div#reportMenu').remove();
        var html = '<div id="reportMenu"  ></div>';
        $(theLink).after(html);
        $('#reportMenu').menu({
            items: result.menu
        }).menu("toggle",theLink);
        $('div#reportMenu div.a-Menu-inner').each(function() {
            $(this).addClass('need_cards_refresh');
        });
        $('div#reportMenu a').each(function() {
            $(this).addClass('need_cards_refresh');
        });
        $('div#reportMenu .a-Menu-statusCol').each(function() {
            $(this).addClass('need_cards_refresh');
        });
        $('div#reportMenu .a-Menu-item').each(function() {
            $(this).addClass('need_cards_refresh');
        });
    });
}

/**
 * function that process the up button on each team
 */
function moveTeamPosition(team_id, direction) {
    callAjaxRouter(
        {
            x01: "MoveTeamPosition", 
            x02: team_id,
            x03: direction
        },
        {dataType: "json"},
        [ 'teamsCard']
    )
}