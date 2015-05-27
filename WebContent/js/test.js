$(function () {
    $('tr > td').each(function (index) {
        var scale = [
            ['poor', 0],
            ['avg', 1],
            ['good', 2],
        ];
        var score = $(this).text();
        for (var i = 0; i < scale.length; i++) {
            if (score <= scale[i][1]) {
                $(this).addClass(scale[i][0]);
            }
        }
    });
});