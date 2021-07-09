package vnu.uet.trainingpoint.service;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import vnu.uet.trainingpoint.enitty.User;
import vnu.uet.trainingpoint.repository.UserRepository;
import vnu.uet.trainingpoint.util.ExcelUtil;
@Service
public class FileService {
    @Autowired
    private UserRepository userRepository;

    public void store(MultipartFile file) {
        try {
            List<User> listUser = ExcelUtil.parseExcelFile(file.getInputStream());
            // Save Customers to DataBase
            userRepository.saveAll(listUser);
        } catch (IOException e) {
            throw new RuntimeException("FAIL! -> message = " + e.getMessage());
        }
    }
}
