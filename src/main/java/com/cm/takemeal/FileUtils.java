package com.cm.takemeal;

import java.awt.image.BufferedImage;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;

import org.imgscalr.Scalr;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Component("fileUtils")
public class FileUtils {
	private static String filePath = "";
	private static String newfilePath = "";

	public static void imageResize(String orgFilePath, String targetFilePath, String imageType) throws Exception{



		BufferedImage originalImage = ImageIO.read(new File(orgFilePath));

			

		int imgwidth = Math.min(originalImage.getHeight(),  originalImage.getWidth());

		int imgheight = imgwidth;

			

		BufferedImage scaledImage = Scalr.crop(originalImage, (originalImage.getWidth() - imgwidth)/2, (originalImage.getHeight() - imgheight)/2, imgwidth, imgheight, null);

			

		BufferedImage resizedImage = Scalr.resize(scaledImage, 300, 300, null);

			
		System.out.println("resizedImageresizedImageresizedImage"+resizedImage);
		
		ImageIO.write(resizedImage, imageType, new File(targetFilePath));

		

	}
	public List<Map<String,Object>> parseInsertFileInfo(Map<String,Object> map, HttpServletRequest request) throws Exception{
		
		filePath = request.getSession().getServletContext().getRealPath("resources/upfile/recipe")+"/";
		newfilePath = request.getSession().getServletContext().getRealPath("resources/upfile/recipe/thumb")+"/";
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
    	Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
    	
    	MultipartFile multipartFile = null;
    	String originalFileName = null;
    	String originalFileExtension = null;
    	String storedFileName = null;
    	
    	List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
        Map<String, Object> listMap = null; 
        
        
        File file = new File(filePath);
        
        

        
        
        if(file.exists() == false){
        	file.mkdirs();
        }
        
        while(iterator.hasNext()){
        	multipartFile = multipartHttpServletRequest.getFile(iterator.next());
        	if(multipartFile.isEmpty() == false){
        		originalFileName = multipartFile.getOriginalFilename();
        		originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
        		storedFileName = CommonUtils.getRandomString() + originalFileExtension;
        		
        		file = new File(filePath + storedFileName);
        		
        		
        		System.out.println("filefilefilefilefilefilefilefile"+file);
        		multipartFile.transferTo(file);
        		this.imageResize(filePath + storedFileName, newfilePath + storedFileName, "jpg");
        		
       
        		
        		listMap = new HashMap<String,Object>();
        		listMap.put("ORIGINAL_FILE_NAME", originalFileName);
        		listMap.put("STORED_FILE_NAME", storedFileName);
        		listMap.put("FILE_SIZE", multipartFile.getSize());
        		list.add(listMap);
        	}
        }
		return list;
	}
}
