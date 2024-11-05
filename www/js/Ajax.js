/**
 * Generic function to call ajax callback
 * This function assumes that an ajax callback named "AjaxRouter" exists for the current page
 * variableJSON => must contain the route on the first parameter and additional parameter up to 10
 * optionsJSON => options for ajax process (datatype, ...)
 * refreshList => array of region / item on to be refreshed automatically after success
 *  callAjaxRouter(
        {
            x01: "RemovePlayerFromTeamCollection", 
            x02: dataTeam,
            x03: dataSeqId
        },
        {dataType: "json"},
        ['teamPlayers', 'P32_AVAILABLEPLAYERS' ]
    );
 */
function callAjaxRouter ( variableJSON, optionsJSON, refreshList) {
    return apex.server.process ( "AjaxRouter", variableJSON, optionsJSON)
        .then(function(result){
            if (result.status == "error") {
                // First clear the errors
                apex.message.clearErrors();
                // Now show new errors
                apex.message.showErrors(result.errors);
            }
            refreshList.forEach((element) => {
                if(apex.region.isRegion(element)) {
                    apex.region(element).refresh();
                }
                else if (apex.item.isItem(element)) {
                    apex.item(element).refresh();
                } 
            });
            return result;
        });
}