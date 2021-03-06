const BENCHMARK_1 = 30;
const BENCHMARK_2 = 25;
const BENCHMARK_3 = 0;
const BENCHMARK_4 = 15;
const BENCHMARK_5 = 0;

function isPositiveInteger(str) {
    var n = Math.floor(Number(str));
    if (n !== Infinity && String(n) === str && n >= 0) {
        return true;
    } else {
        return false;
    }
}

function getStudentID(id) {
    if ($('#' + id).on('change')) {
        console.log($('#' + id).val());
    }
}

function clickAndMinusTwo(id) {
    if (document.getElementById(id).checked) {
        $('#' + id.replace("input", "evaluate")).html("-2");
        return -3;
    } else {
        $('#' + id.replace("input", "evaluate")).html("0");
        return 0;
    }
}

function clickAndMinusThree(id) {
    if (document.getElementById(id).checked) {
        $('#' + id.replace("input", "evaluate")).html("-3");
        return -3;
    } else {
        $('#' + id.replace("input", "evaluate")).html("0");
        return 0;
    }
}

function clickAndMinusFive(id) {
    if (document.getElementById(id).checked) {
        $('#' + id.replace("input", "evaluate")).html("-5");
        return -5;
    } else {
        document.getElementById(id.replace("input", "evaluate")).innerHTML = "0";
        return 0;
    }
}

function clickAndPlusFive(id) {
    if (document.getElementById(id).checked) {
        $('#' + id.replace("input", "evaluate")).html("5");
        return -5;
    } else {
        $('#' + id.replace("input", "evaluate")).html("0");
        return 0;
    }
}

function clickAndPlusTen(id) {
    if (document.getElementById(id).checked) {
        $('#' + id.replace("input", "evaluate")).html("10");
        return -5;
    } else {
        $('#' + id.replace("input", "evaluate")).html("0");
        return 0;
    }
}

function plusTwoPerTime(id) {
    if ($('#' + id).on('change')) {
        if (isPositiveInteger($('#' + id).val()) == true) {
            let number = $('#' + id).val() * 2;
            $('#' + id.replace("input", "evaluate")).html(number);
            return number;
        } else if ($('#' + id).val().trim() == '') {
            $('#' + id.replace("input", "evaluate")).html(0);
            alert('B???n ch??a ??i???n ' + $('#' + id).attr("placeholder"));
        } else {
            alert("S??? l???n ph???i > 0");
        }
    }
}

function minusTwoPerTime(id) {
    if ($('#' + id).on('change')) {
        if (isPositiveInteger($('#' + id).val()) == true) {
            let number = $('#' + id).val() * (-2);
            $('#' + id.replace("input", "evaluate")).html(number);
            return number;
        } else if ($('#' + id).val().trim() == '') {
            $('#' + id.replace("input", "evaluate")).html(0);
            alert('B???n ch??a ??i???n ' + $('#' + id).attr("placeholder"));
        } else {
            alert("S??? l???n ph???i > 0");
        }
    }
}

function minusFivePerTime(id) {
    if ($('#' + id).on('change')) {
        if (isPositiveInteger($('#' + id).val()) == true) {
            let number = $('#' + id).val() * (-5);
            $('#' + id.replace("input", "evaluate")).html(number);
            return number;
        } else if ($('#' + id).val().trim() == '') {
            $('#' + id.replace("input", "evaluate")).html(0);
            alert('B???n ch??a ??i???n ' + $('#' + id).attr("placeholder"));
        } else {
            alert("S??? l???n ph???i > 0");
        }
    }
}

function minusTenPerTime(id) {
    if ($('#' + id).on('change')) {
        if (isPositiveInteger($('#' + id).val()) == true) {
            let number = $('#' + id).val() * (-10);
            $('#' + id.replace("input", "evaluate")).html(number);
            return number;
        } else if ($('#' + id).val().trim() == '') {
            $('#' + id.replace("input", "evaluate")).html(0);
            alert('B???n ch??a ??i???n ' + $('#' + id).attr("placeholder"));
        } else {
            alert("S??? l???n ph???i > 0");
        }
    }
}

function evaluateTotal1(id) {
    let total = BENCHMARK_1;

    let oldPointHocLucYeu = parseInt($('#evaluateHocLucYeu').text());
    if (document.getElementById("inputHocLucYeu").checked) {
        total = total + oldPointHocLucYeu;
    } else {
        total = total - oldPointHocLucYeu;
    }

    let oldPointCanhBaoHocVu = parseInt($('#evaluateCanhBaoHocVu').text());
    if (document.getElementById("inputCanhBaoHocVu").checked) {
        total = total + oldPointCanhBaoHocVu;
    } else {
        total = total - oldPointCanhBaoHocVu;
    }

    let oldPointDangKiKhongDuTin = parseInt($('#evaluateDangKiKhongDuTin').text());
    if (document.getElementById("inputDangKiKhongDuTin").checked) {
        total = total + oldPointDangKiKhongDuTin;
    } else {
        total = total - oldPointDangKiKhongDuTin;
    }

    let oldPointCamThiBoThi = parseInt($('#evaluateCamThiBoThi').text());
    if ($("#inputCamThiBoThi").on('change')) {
        total = total + oldPointCamThiBoThi;
    } else {
        total = total - oldPointCamThiBoThi;
    }

    $('#' + id).html(total);
}

function fillKyLuatThi(id) {
    let total = parseInt($('#evaluateTotal1').text());
    if ($("#" + id).val() == "Khi???n tr??ch") {
        number = -total / 4;
        $('#' + id.replace("input", "evaluate")).html(number);
        return number;
    }
    if ($("#" + id).val() == "C???nh c??o") {
        number = -total / 2;
        $('#' + id.replace("input", "evaluate")).html(number);
        return number;
    }
    if ($("#" + id).val() == "????nh ch???") {
        number = -total;
        $('#' + id.replace("input", "evaluate")).html(number);
        return number;
    }
    if ($("#" + id).val() == "Kh??ng") {
        number = 0;
        $('#' + id.replace("input", "evaluate")).html(number);
        return number;
    }
}

function evaluateTotalPoint1(id) {
    let totalFinal = parseFloat($('#evaluateTotal1').text()) + parseFloat($('#evaluateKyLuatThi').text().replace(",", "."));
    $('#' + id).html(totalFinal);
}

function evaluateTotal2(id) {
    let total = BENCHMARK_2;

    let oldPointNopNhanKinhPhi = parseInt($('#evaluateNopNhanKinhPhi').text());
    if ($("#inputNopNhanKinhPhi").on('change')) {
        total = total + oldPointNopNhanKinhPhi;
    } else {
        total = total - oldPointNopNhanKinhPhi;
    }

    let oldPoint??angKiHoc = parseInt($('#evaluate??angKiHoc').text());
    if (document.getElementById("input??angKiHoc").checked) {
        total = total + oldPoint??angKiHoc;
    } else {
        total = total - oldPoint??angKiHoc;
    }

    let oldPointKhongThucHienYeuCau = parseInt($('#evaluateKhongThucHienYeuCau').text());
    if ($("#inputKhongThucHienYeuCau").on('change')) {
        total = total + oldPointKhongThucHienYeuCau;
    } else {
        total = total - oldPointKhongThucHienYeuCau;
    }

    let oldPointGiayToQuaHan = parseInt($('#evaluateGiayToQuaHan').text());
    if ($("#inputGiayToQuaHan").on('change')) {
        total = total + oldPointGiayToQuaHan;
    } else {
        total = total - oldPointGiayToQuaHan;
    }

    let oldPointKhongBaoHiem = parseInt($('#evaluateKhongBaoHiem').text());
    if (document.getElementById("inputKhongBaoHiem").checked) {
        total = total + oldPointKhongBaoHiem;
    } else {
        total = total - oldPointKhongBaoHiem;
    }

    let oldPointViPhamCuTru = parseInt($('#evaluateViPhamCuTru').text());
    if ($("#inputViPhamCuTru").on('change')) {
        total = total + oldPointViPhamCuTru;
    } else {
        total = total - oldPointViPhamCuTru;
    }

    console.log(total);
    $('#' + id).html(total);
}

function fillQuyetDinhKyLuat(id) {
    let total = parseInt($('#evaluateTotal2').text());
    if ($("#" + id).val() == "C???nh c??o") {
        number = -total / 4;
        $('#' + id.replace("input", "evaluate")).html(number);
        return number;
    }
    if ($("#" + id).val() == "Khi???n tr??ch") {
        number = -total / 2;
        $('#' + id.replace("input", "evaluate")).html(number);
        return number;
    }
    if ($("#" + id).val() == "Ph?? b??nh") {
        number = -total;
        $('#' + id.replace("input", "evaluate")).html(number);
        return number;
    }
    if ($("#" + id).val() == "Kh??ng") {
        number = 0;
        $('#' + id.replace("input", "evaluate")).html(number);
        return number;
    }
}

function evaluateTotalPoint2(id) {
    let totalFinal = parseFloat($('#evaluateTotal2').text()) + parseFloat($('#evaluateQuyetDinhKyLuat').text().replace(",", "."));
    $('#' + id).html(totalFinal);
}

function evaluateTotalPoint3(id) {
    let total = BENCHMARK_3;

    let oldPointThamGiaChinhTri = parseInt($('#evaluateThamGiaChinhTri').text());
    if (document.getElementById("inputThamGiaChinhTri").checked) {
        total = total + oldPointThamGiaChinhTri;
    } else {
        total = total - oldPointThamGiaChinhTri;
    }

    let oldPointThamGiaHoatDong = parseInt($('#evaluateThamGiaHoatDong').text());
    if ($("#inputThamGiaHoatDong").on('change')) {
        total = total + oldPointThamGiaHoatDong;
    } else {
        total = total - oldPointThamGiaHoatDong;
    }

    let oldPointKhongThamGiaChinhTri = parseInt($('#evaluateKhongThamGiaChinhTri').text());
    if ($("#inputKhongThamGiaChinhTri").on('change')) {
        total = total + oldPointKhongThamGiaChinhTri;
    } else {
        total = total - oldPointKhongThamGiaChinhTri;
    }

    $('#' + id).html(total);
}

function evaluateTotalPoint4(id) {
    let total = BENCHMARK_4;

    let oldPointKhongChapHanhLuat = parseInt($('#evaluateKhongChapHanhLuat').text());
    if ($("#inputKhongChapHanhLuat").on('change')) {
        total = total + oldPointKhongChapHanhLuat;
    } else {
        total = total - oldPointKhongChapHanhLuat;
    }

    let oldPointKhongDoanKet = parseInt($('#evaluateKhongDoanKet').text());
    if ($("#inputKhongDoanKet").on('change')) {
        total = total + oldPointKhongDoanKet;
    } else {
        total = total - oldPointKhongDoanKet;
    }

    $('#' + id).html(total);
}

function evaluateTotalPoint5(id) {
    let total = BENCHMARK_5;

    let oldPointGiuChucVu = parseInt($('#evaluateGiuChucVu').text());
    if (document.getElementById("inputGiuChucVu").checked) {
        total = total + oldPointGiuChucVu;
    } else {
        total = total - oldPointGiuChucVu;
    }

    let oldPointHocLuc = parseInt($('#evaluateHocLuc').text());
    if (document.getElementById("inputHocLuc").checked) {
        total = total + oldPointHocLuc;
    } else {
        total = total - oldPointHocLuc;
    }

    let oldPointChungChiTiengAnh = parseInt($('#evaluateChungChiTiengAnh').text());
    if (document.getElementById("inputChungChiTiengAnh").checked) {
        total = total + oldPointChungChiTiengAnh;
    } else {
        total = total - oldPointChungChiTiengAnh;
    }

    let oldPointThamGiaCuocThi = parseInt($('#evaluateThamGiaCuocThi').text());
    if ($("#inputThamGiaCuocThi").on('change')) {
        total = total + oldPointThamGiaCuocThi;
    } else {
        total = total - oldPointThamGiaCuocThi;
    }

    let oldPointDatGiaiChuyenMon = parseInt($('#evaluateDatGiaiChuyenMon').text());
    if (document.getElementById("inputDatGiaiChuyenMon").checked) {
        total = total + oldPointDatGiaiChuyenMon;
    } else {
        total = total - oldPointDatGiaiChuyenMon;
    }

    let oldPointThamGiaNCKH = parseInt($('#evaluateThamGiaNCKH').text());
    if (document.getElementById("inputThamGiaNCKH").checked) {
        total = total + oldPointThamGiaNCKH;
    } else {
        total = total - oldPointThamGiaNCKH;
    }

    let oldPointDatGiaiNCKH = parseInt($('#evaluateDatGiaiNCKH').text());
    if (document.getElementById("inputDatGiaiNCKH").checked) {
        total = total + oldPointDatGiaiNCKH;
    } else {
        total = total - oldPointDatGiaiNCKH;
    }

    let oldPointKetNapDang = parseInt($('#evaluateKetNapDang').text());
    if (document.getElementById("inputKetNapDang").checked) {
        total = total + oldPointKetNapDang;
    } else {
        total = total - oldPointKetNapDang;
    }

    $('#' + id).html(total);
}

function evaluateTotalPoint(id) {
    let totalFinal = parseFloat($('#evaluateTotalPoint1').text().replace(",", ".")) + parseFloat($('#evaluateTotalPoint2').text().replace(",", ".")) + parseFloat($('#evaluateTotalPoint3').text()) + parseFloat($('#evaluateTotalPoint4').text()) + parseFloat($('#evaluateTotalPoint5').text());
    $('#' + id).html(totalFinal);

    if (totalFinal >= 90) {
        $('#evaluateRank').html("Xu???t s???c");
    } else if (totalFinal >= 80 && totalFinal < 90) {
        $('#evaluateRank').html("T???t");
    } else if (totalFinal >= 65 && totalFinal < 80) {
        $('#evaluateRank').html("Kh??");
    } else if (totalFinal >= 50 && totalFinal < 65) {
        $('#evaluateRank').html("Trung B??nh");
    } else if (totalFinal >= 35 && totalFinal < 50) {
        $('#evaluateRank').html("Y???u");
    } else {
        $('#evaluateRank').html("K??m");
    }
}

function getViewPoint(linkTag) {
    let studentID = $('#main-content .main .tab-content #inputStudentID').val();
    let href = $(linkTag).attr('href');
    $(linkTag).prop("href", href + studentID);
}