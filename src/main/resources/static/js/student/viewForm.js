$(document).ready(function () {
    $("input, select").prop('disabled', true);

    $("input#approve, input#notApprove").prop('disabled', false);
})

function getEditPoint(linkTag) {
    let studentID = $('#main-content .main .tab-content #inputStudentID').val();
    let href = $(linkTag).attr('href');
    $(linkTag).prop("href", href + studentID);
}