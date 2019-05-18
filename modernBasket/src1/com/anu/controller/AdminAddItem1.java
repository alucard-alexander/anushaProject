package com.anu.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.anu.DAO.Insert;
import com.anu.bean.Items;


public class AdminAddItem1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ServletFileUpload sf = new ServletFileUpload(new DiskFileItemFactory());
		Items item = new Items();
		String[] str = new String[2];
		String[]  value = new String[2];
		int i=0;
		try {
			List<FileItem> multiFiles= sf.parseRequest(request);
			for(FileItem Fitem: multiFiles) {
				if (Fitem.isFormField()) {
					value[i] = Fitem.getString();
					i++;
				}
			}
			item.setItemName(value[0]);
			item.setPrice(Float.parseFloat(value[1]));
			int iid=new Insert().insertItems(item);
			if (iid>0) {
				for(FileItem Fitem: multiFiles) {
					if (!Fitem.isFormField()) {
						Fitem.write(new File("E:\\Anusha mini project\\git\\anushaProject\\modernBasket\\src\\main\\webapp\\itemsimages\\"+iid+".jpg"));
					}
				}
			}
			
			
		} catch (FileUploadException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
