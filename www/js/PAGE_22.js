/**
 * toggle a letter filter 
 */
function toggleLetterFilter(source, letter){
    if ($("#letter_filter a.u-hot").length > 0)
        $("#letter_filter a.u-hot").removeClass("u-hot");

    if ($v('P22_LETTER') == letter) {
        $s('P22_LETTER', null);
    }
    else {
        source.classList.add("u-hot");
        $s('P22_LETTER', letter);
    }
}

function initLetter(letter){
    if($("#letter_"+letter).length > 0)
        $("#letter_"+letter).addClass("u-hot");
}
