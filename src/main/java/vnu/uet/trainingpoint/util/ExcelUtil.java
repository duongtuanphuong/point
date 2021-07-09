package vnu.uet.trainingpoint.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CreationHelper;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import vnu.uet.trainingpoint.enitty.User;

public class ExcelUtil {
    public static List<User> parseExcelFile(InputStream is) {
		try {
    		Workbook workbook = new XSSFWorkbook(is);
     
    		Sheet sheet = workbook.getSheet("Customers");
    		Iterator<Row> rows = sheet.iterator();
    		
    		List<User> lstCustomers = new ArrayList<User>();
    		
    		int rowNumber = 0;
    		while (rows.hasNext()) {
    			Row currentRow = rows.next();
    			
    			// skip header
    			if(rowNumber == 0) {
    				rowNumber++;
    				continue;
    			}
    			
    			Iterator<Cell> cellsInRow = currentRow.iterator();

    			User cust = new User();
    			
    			int cellIndex = 0;
    			while (cellsInRow.hasNext()) {
    				Cell currentCell = cellsInRow.next();
    				
    				if(cellIndex==0) { // ID
    					cust.setUsername(currentCell.getStringCellValue());
    				} else if(cellIndex==1) { // Name
    					cust.setPassword(currentCell.getStringCellValue());
    				} else if(cellIndex==2) { // Address
    					cust.setRoles(currentCell.getStringCellValue());
    				} 
    				
    				cellIndex++;
    			}
    			
    			lstCustomers.add(cust);
    		}
    	
    		// Close WorkBook
    		workbook.close();
    		
    		return lstCustomers;
        } catch (IOException e) {
        	throw new RuntimeException("FAIL! -> message = " + e.getMessage());
        }
	}
}
