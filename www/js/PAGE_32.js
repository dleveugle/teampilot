/**
 * Javascript function called by remove action button 
 * on each player affected in the team
 * see pck_pages_32.get_team_player_table
 */
function removePlayerFromTeamCollection (pLink) {
    var theLink = $(pLink);
    var dataTeam = theLink.attr("tp-team");
    var dataSeqId = theLink.attr("tp-seq_id");
    callAjaxRouter(
        {
            x01: "RemovePlayerFromTeamCollection", 
            x02: dataTeam,
            x03: dataSeqId
        },
        {dataType: "json"},
        ['teamPlayers', 'P32_AVAILABLEPLAYERS' ]
    );
}

/**
 * Javascript function called by Affect button action
 * 
 */
function addPlayerToTeamCollection(teamId, playerId, playerRole) {
    callAjaxRouter( 
        {
            x01: "AddPlayerToTeamCollection",
            x02: teamId,
            x03: playerId,
            x04: playerRole
        },
        {dataType: "json"},
        ['teamPlayers', 'P32_AVAILABLEPLAYERS' ]
    );
}