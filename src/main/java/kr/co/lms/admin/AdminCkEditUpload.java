package kr.co.lms.admin;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.JsonObject;

@Controller
public class AdminCkEditUpload {

	
	
	@RequestMapping(value="/ckEditUpload" , method= {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public String ckEditUpload(HttpServletRequest request, HttpServletResponse response,  MultipartHttpServletRequest mr) throws Exception {
		JsonObject json = new JsonObject();
		PrintWriter printWriter = null;
		OutputStream out = null;
		
		MultipartFile file = mr.getFile("upload");
		
		if(file != null) {
			if(file.getSize() > 0 && !file.getName().isEmpty()){
				if(file.getContentType().toLowerCase().startsWith("image/")) {
					try {
						String fileName 	= file.getName();
						byte[] bytes 		= file.getBytes();
						String uploadPath 	= request.getSession().getServletContext().getRealPath("/img");
						
						File uploadFile = new File(uploadPath);
						
						if(!uploadFile.exists()) {
							uploadFile.mkdir();//makedirect
						}
						fileName = UUID.randomUUID().toString().replace("-","").substring(0, 7);
						
						uploadPath = uploadPath + "/" + fileName;
						out = new FileOutputStream(new File(uploadPath));
						out.write(bytes);
						
						
						printWriter = response.getWriter();
						
						response.setContentType("text/html");
						
						String fileUrl = request.getContextPath() + "/img/" + fileName;
						
						json.addProperty("uploaded", 1);
						json.addProperty("fileName", fileName);
						json.addProperty("url", fileUrl);
						
						printWriter.println(json);
						
					}catch(Exception e) {
						e.printStackTrace();
					}finally {
						if(out != null) {
							out.close();
						}
						if(printWriter != null) {
							printWriter.close();
						} 
					}
				}
			}
		}
		
		
		return null;
	}
	
	
}
