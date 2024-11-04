/**
 * change some classes when clicking on right button
 */
async function initQuickMenu() {

    $(document).on('click', '#tpQuickMenuRightButton', async function(){
    // hide left button, seperator
        $("#tpQuickMenuLeftButton").addClass('tp-quickMenuHidden');
        $("#tpQuickMenuSeparator").addClass('tp-quickMenuHidden');
        // update quick menu position to avoid covering the nav tabs
        let navHeight = $('.t-NavTabs').height();
        $("#tpQuickMenu").offset({bottom:navHeight});
        await new Promise(r => setTimeout(r, 100));
        // show blurred div
        $("#tpQuickMenuBlurredDiv").addClass('tp-blurredDialogVisible');
    });

    /*$("#tpQuickMenuRightButton").on("click", async function() {
        
    });*/

    /**
     * change some classes when clicking on blurred menu
     */
     $(document).on('click', '#tpQuickMenuBlurredDiv', function(){
        // make all normal
        $("#tpQuickMenuBlurredDiv").removeClass('tp-blurredDialogVisible');
        $("#tpQuickMenuLeftButton").removeClass ('tp-quickMenuHidden');
        $("#tpQuickMenuRightButton").removeClass ('tp-quickMenuLeftButtonHidden');
        $("#tpQuickMenuSeparator").removeClass ('tp-quickMenuHidden');
        
    });
}