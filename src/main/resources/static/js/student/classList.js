let searchInputID = ["studentIdFilter", "studentNameFilter", "pointFilter", "rankFilter", "evaluationFormDetailFilter"]

$(document).ready(function () {
    $('.table.table-striped thead tr').clone(true).appendTo('.table.table-striped thead');
    $('.table.table-striped thead tr:eq(1) th').each(function (i) {
        var title = $(this).text();
        $(this).html('<input id=' + searchInputID[i] + ' type="text" placeholder="Tìm ' + title + '" />');

        $('input', this).on('keyup change', function () {
            if (table.column(i).search() !== this.value) {
                table.column(i).search(this.value).draw();
            }
        });
    });
    $("#evaluationFormDetailFilter").remove();

    var table = $('.table.table-striped').DataTable({
        orderCellsTop: true,
        fixedHeader: true,
        stateSave: true
    });
    $("#evaluationFormDetailHeader").attr("class", "");
});
