package vnu.uet.trainingpoint.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import vnu.uet.trainingpoint.enitty.*;
import vnu.uet.trainingpoint.model.DisciplinaryDecision;
import vnu.uet.trainingpoint.model.ExamDiscipline;
import vnu.uet.trainingpoint.model.Status;
import vnu.uet.trainingpoint.model.dto.SemesterDTO;
import vnu.uet.trainingpoint.repository.*;

import javax.annotation.PostConstruct;
import java.time.LocalDate;
import java.util.Date;
import java.util.Random;

@Service
public class InitDBService {

    private ConsultantRepository consultantRepository;

    private UserRepository userRepository;

    private ClassesRepository classesRepository;

    private EvaluationFormRepository evaluationFormRepository;

    private EvaluationFormOfClassPresidentRepository evaluationFormOfClassPresidentRepository;

    private StudentRepository studentRepository;

    private PasswordEncoder passwordEncoder;

    private SemesterService semesterService;

    @Autowired
    public void setSemesterService(SemesterService semesterService) {
        this.semesterService = semesterService;
    }

    @Autowired
    public void setPasswordEncoder(PasswordEncoder passwordEncoder) {
        this.passwordEncoder = passwordEncoder;
    }

    @Autowired
    public void setConsultantRepository(ConsultantRepository consultantRepository) {
        this.consultantRepository = consultantRepository;
    }

    @Autowired
    public void setUserRepository(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Autowired
    public void setClassesRepository(ClassesRepository classesRepository) {
        this.classesRepository = classesRepository;
    }

    @Autowired
    public void setEvaluationFormRepository(EvaluationFormRepository evaluationFormRepository) {
        this.evaluationFormRepository = evaluationFormRepository;
    }

    @Autowired
    public void setEvaluationFormOfClassPresidentRepository(EvaluationFormOfClassPresidentRepository evaluationFormOfClassPresidentRepository) {
        this.evaluationFormOfClassPresidentRepository = evaluationFormOfClassPresidentRepository;
    }

    @Autowired
    public void setStudentRepository(StudentRepository studentRepository) {
        this.studentRepository = studentRepository;
    }

    @PostConstruct //???????c g???i khi kh???i t???o h???t c??c bean
    public void init() {

        // init consultant
        if (consultantRepository.count() == 0) {
            User userConsultant1 = new User("van.ntt", "ROLE_CONSULTANT");
            Consultant consultant1 = new Consultant("TS. Nguy???n Th??? Thanh V??n", "??i???n t??? vi???n th??ng", userConsultant1);
            userConsultant1.setPassword(passwordEncoder.encode(userConsultant1.getPassword()));
            userRepository.save(userConsultant1);
            consultantRepository.save(consultant1);

            System.out.println("init consultant");


            //init class
            Classes classes1 = new Classes("QH-2016-C-A-CLC1", consultant1);

            classesRepository.save(classes1);

            System.out.println("init classes");

            User user = new User("admin", "ROLE_ADMIN");
            user.setPassword(passwordEncoder.encode(user.getPassword()));
            userRepository.save(user);

            //init student

            if (studentRepository.count() == 0) {

                User user1 = new User("16020046");
                user1.setPassword(passwordEncoder.encode(user1.getPassword()));
                userRepository.save(user1);
                Student student1 = new Student("Nguy???n V??n M???nh", "B???c Giang",
                        LocalDate.of(1998, 7, 4),
                        "VN", user1, classes1);
                studentRepository.save(student1);

                User user2 = new User("16020280");
                user2.setPassword(passwordEncoder.encode(user2.getPassword()));
                userRepository.save(user2);
                Student student2 = new Student("Phan Tu???n Th??nh", "Th??i B??nh",
                        LocalDate.of(1998, 2, 22),
                        "VN", user2, classes1);
                studentRepository.save(student2);

                User user3 = new User("16020246");
                user3.setPassword(passwordEncoder.encode(user3.getPassword()));
                userRepository.save(user3);
                Student student3 = new Student("????o Tu???n Linh", "Y??n B??i",
                        LocalDate.of(1998, 12, 27),
                        "VN", user3, classes1);
                studentRepository.save(student3);

                User user4 = new User("16020047"); //16020047	V?? Duy M???nh	13/06/1998
                user4.setPassword(passwordEncoder.encode(user4.getPassword()));
                userRepository.save(user4);
                Student student4 = new Student("V?? Duy M???nh", "H??ng Y??n",
                        LocalDate.of(1998, 6, 13),
                        "VN", user4, classes1);
                studentRepository.save(student4);


                User user5 = new User("16020062"); //16020062	V?? Th??? Thanh L??m	22/02/1998
                user5.setPassword(passwordEncoder.encode(user5.getPassword()));
                userRepository.save(user5);
                Student student5 = new Student("V?? Th??? Thanh L??m", "Thanh H??a",
                        LocalDate.of(1998, 2, 22),
                        "VN", user5, classes1);
                studentRepository.save(student5);

                // User user6 = new User("17020965", "ROLE_PRESIDENT"); 
                // user6.setPassword(passwordEncoder.encode(user6.getPassword()));
                // userRepository.save(user6);
                // Student student6 = new Student("D????ng Tu???n Ph????ng", "B???c Giang",
                //         LocalDate.of(1999, 4, 9),
                //         "VN", user6, classes1);
                // studentRepository.save(student6);



                
                System.out.println("init student");


                // init hoc ky truoc
                semesterService.addSuccess(new SemesterDTO(184)); // HK I  2017-2018
                semesterService.addSuccess(new SemesterDTO(185)); // HK II 2017-2018

                semesterService.addSuccess(new SemesterDTO(187)); // HK I  2018-2019
                semesterService.addSuccess(new SemesterDTO(188)); // HK II 2018-2019

                semesterService.addSuccess(new SemesterDTO(190)); // HK I  2019-2020
                semesterService.addSuccess(new SemesterDTO(191)); // HK II 2019-2020

                semesterService.addSuccess(new SemesterDTO(193)); // HK I  2020-2021
//                semesterService.add(new SemesterDTO(194, LocalDate.of(2021, 8, 3))); // HK II 2020-2021

                for (int i = 0; i < 9; i++) {
                    if (i % 3 == 2) {
                        continue;
                    }
                    EvaluationForm evaluationForm = evaluationFormRepository
                            .findByUsernameAndSemester("17021119", 184 + i).get();
                    evaluationForm.setTotalPoint(70 + 3 * i);
                    evaluationFormRepository.save(evaluationForm);
                }

//                EvaluationForm e = evaluationFormRepository.findByUsernameAndSemester("17021119", 194).get();
//                e.setHoc_luc_yeu(false);
//                e.setCanh_cao_hoc_vu(false);
//                e.setDang_ki_khong_du_tin(false);
//                e.setCam_thi_bo_thi(2);
//                e.setKy_luat_thi(ExamDiscipline.DINH_CHI);
//
//                //2. ?? th???c v?? k???t qu??? ch???p h??nh n???i quy, quy ch??? c???a nh?? tr?????ng
//                e.setNop_nhan_kinh_phi(1);
//                e.setDang_ki_hoc_qua_han(false);
//                e.setKhong_thuc_hien_yeu_cau(1);
//                e.setTra_qua_han_giay_to(1);
//                e.setKhong_tham_gia_bao_hiem(false);
//                e.setVi_pham_quy_dinh_cu_tru(0);
//                e.setQuyet_dinh_ky_luat(DisciplinaryDecision.PHE_BINH);
//
//                //3. ?? th???c v?? k???t qu??? than gia haojt ?????ng ch??nh tr???- v??n h??a, x?? h???i...
//                e.setTham_gia_chi_doan_chinh_tri(false);
//                e.setTham_gia_hoat_dong(2);
//                e.setKhong_tham_gia_sinh_hoat(3);
//                //4. v??? ph???m ch???t c??ng d??n v?? quan h??? v???i c???ng ?????ng
//                e.setKhong_chap_hanh_luat(1);
//                e.setKhong_co_tinh_than_doan_ket(2);
//
//                //5. ?? th???c v?? k???t qu??? tham gia c??ng t??c ph??? tr??ch l???p, c??c ??o??n th???, t??? ch???c trong nh?? tr?????ng, ho???c ?????t
//                // ???????c th??nh t??ch ?????c bi???t trong h???c t???p, r??n luy???n c???a h???c sinh, sinh vi??n
//                e.setGiu_chuc_vu(true);
//                e.setHoc_luc_gioi_xuat_sac(true);
//                e.setChung_chi_tieng_Anh(true);
//                e.setTham_gia_cuoc_thi(4);
//                e.setDat_giai_cuoc_thi(true);
//                e.setTham_gia_NCKH(false);
//                e.setDat_giai_NCKH(false);
//                e.setKet_nap_Dang(false);
//                e.setEvaluationFormOfClassPresident(null);
//
//                e.setStatus(Status.NEED_STUDENT_FILL);
//                e.setTotalPoint(e.autoGenerateTotalPoint());
//                evaluationFormRepository.save(e);

            }
        }
    }
}
