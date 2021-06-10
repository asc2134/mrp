package com.mrp.company.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mrp.company.dao.FileDao;
import com.mrp.company.dto.FileDto;

@Controller
public class FileController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	private String uploadDir= "/static/image/";
	
	@Autowired
	private FileDao fileDao;
	
	@RequestMapping("/fileUpload.do")
	private String fileUpload(FileDto dto, HttpServletRequest req) throws Exception {
		
		if(!dto.getFile().isEmpty()) { //널처리
			dto.setFileOriName(dto.getFile().getOriginalFilename()); //오리지날 파일네임 셋팅
			dto.setFileName(Integer.toString(dto.getDesignNum())); //파일명 == 디자인명
			
			File f = ResourceUtils.getFile("classpath:static");
			String folderpath = f.getAbsolutePath() + "/image/";
		
			
			File folder = new File(folderpath);
			String fileName = dto.getFileOriName();
			String ext = fileName.substring(fileName.lastIndexOf("."));
			dto.setFileUrl(uploadDir + dto.getFileName() + ext); //db에는 그냥 /static이하...
			
			if(!folder.exists()) {//폴더있는지 확인
				folder.mkdir();
				dto.getFile().transferTo(new File(folderpath + dto.getFileName() + ext)); // 파일 업로드 작업 수행
			}else {
				dto.getFile().transferTo(new File(folderpath + dto.getFileName() + ext)); // 파일 업로드 작업 수행
			}
			
			
			int result = fileDao.registFile(dto);
			
		}
		
		return "product/productListMain";
		
	}
	
	public void fileDelete(String designNum) throws Exception {
		
		File f = ResourceUtils.getFile("classpath:static");
		String folderpath = f.getAbsolutePath() + "/image/";
		
		File file = new File(folderpath);
		
		String fileList[] = file.list();
		
		for(String fileName : fileList) {
            if(fileName.contains(designNum)) {
                String deleteFilePath = folderpath + File.separator + fileName;
                File deleteFile = new File(deleteFilePath);
                
                if(deleteFile.isDirectory()) {
                    System.out.println("{} >>> This is a directory. " +  fileName);
                    continue;
                }
                
                deleteFile.delete();
            }
        }
		
	}
}
