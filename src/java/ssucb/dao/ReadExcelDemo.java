package ssucb.dao;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Naresh
 */
import java.io.*;
import java.util.Iterator;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import ssucb.dao.ShareHolderDao;
import ssucb.pojo.ShareHolderPojo;

public class ReadExcelDemo {

    public void AddExceelDataIntoDatabase(String filename) throws Exception {

        try {
            FileInputStream file = new FileInputStream(new File("D:\\List.xlsx"));

            //Create Workbook instance holding reference to .xlsx file
            XSSFWorkbook workbook = new XSSFWorkbook(file);

            //Get first/desired sheet from the workbook
            XSSFSheet sheet = workbook.getSheetAt(0);

            //Iterate through each rows one by one
            Iterator<Row> rowIterator = sheet.iterator();

            ShareHolderDao shareholderdao = new ShareHolderDao();

            ShareHolderPojo sh;
            while (rowIterator.hasNext()) {

                Row row = rowIterator.next();
                System.out.println("Cell ===" + row.getCell(0));
                //For each row, iterate through all the columns
                if (!row.getCell(0).equals(null) || !row.getCell(1).equals(null)) {
                    sh = new ShareHolderPojo();
                    sh.setBranchid(Integer.parseInt(row.getCell(0).toString().replace(".0", "")));
                    sh.setShreNo(Integer.parseInt(row.getCell(1).toString().replace(".0", "")));
                    sh.setShareholdername(row.getCell(2).toString());
                    sh.setAccount(row.getCell(3).toString());
                    sh.setStatus(row.getCell(4).toString());
                    sh.setDob(row.getCell(5).toString());
                    sh.setMobno(row.getCell(6).toString());
                    sh.setAddress(row.getCell(7).toString());

                    boolean b = shareholderdao.AddShareHolder(sh);
                    Iterator<Cell> cellIterator = row.cellIterator();
                
                while (cellIterator.hasNext()) {
                    Cell cell = cellIterator.next();
                    //Check the cell type and format accordingly
                    switch (cell.getCellType()) {
                        case Cell.CELL_TYPE_NUMERIC:
                            System.out.print(cell.getNumericCellValue() + "  - ");
                            break;
                        case Cell.CELL_TYPE_STRING:
                            System.out.print(cell.getStringCellValue() + " - ");
                            break;
                    }
                }
                System.out.println("");
            }
            }
            file.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        
        
        
        
        
    }

    public static void main(String[] args) {
        
        
        
        
        
        
        try {
            FileInputStream file = new FileInputStream(new File("D:/List.xlsx"));

            //Create Workbook instance holding reference to .xlsx file
            XSSFWorkbook workbook = new XSSFWorkbook(file);

            //Get first/desired sheet from the workbook
            XSSFSheet sheet = workbook.getSheetAt(0);

            //Iterate through each rows one by one
            Iterator<Row> rowIterator = sheet.iterator();

            ShareHolderDao shareholderdao = new ShareHolderDao();

            ShareHolderPojo sh;
            while (rowIterator.hasNext()) {

                Row row = rowIterator.next();
                System.out.println("Cell ===" + row.getCell(0));
                //For each row, iterate through all the columns
                if (!row.getCell(0).equals(null) || !row.getCell(1).equals(null)) {
                    sh = new ShareHolderPojo();
                    sh.setBranchid(Integer.parseInt(row.getCell(0).toString().replace(".0", "")));
                    sh.setShreNo(Integer.parseInt(row.getCell(1).toString().replace(".0", "")));
                    sh.setShareholdername(row.getCell(2).toString());
                    sh.setAccount(row.getCell(3).toString());
                    sh.setStatus(row.getCell(4).toString());
                    sh.setDob(row.getCell(5).toString());
                    sh.setMobno(row.getCell(6).toString());
                    sh.setAddress(row.getCell(7).toString());

                    boolean b = shareholderdao.AddShareHolder(sh);
                    Iterator<Cell> cellIterator = row.cellIterator();
                
                while (cellIterator.hasNext()) {
                    Cell cell = cellIterator.next();
                    //Check the cell type and format accordingly
                    switch (cell.getCellType()) {
                        case Cell.CELL_TYPE_NUMERIC:
                            System.out.print(cell.getNumericCellValue() + "  - ");
                            break;
                        case Cell.CELL_TYPE_STRING:
                            System.out.print(cell.getStringCellValue() + " - ");
                            break;
                    }
                }
                System.out.println("");
            }
            }
            file.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
