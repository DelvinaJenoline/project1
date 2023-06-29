package com.login.controller;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;

import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import javax.servlet.ServletException;

import javax.servlet.annotation.MultipartConfig;

import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;


@WebServlet(urlPatterns = {"/uploadservlet"})

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, maxFileSize = 1024 * 1024 * 50, maxRequestSize = 1024 * 1024 * 100)

public class uploadservlet extends HttpServlet {

/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
// this if directory name where the file will be uploaded and saved

private static final String SAVE_DIR = "files";
private static final String savePath = "C:" + File.separator + SAVE_DIR;

// this is the method which is created by system it self

protected void processRequest(HttpServletRequest request, HttpServletResponse response)

throws ServletException, IOException {

	HttpSession session = request.getSession(); 
	String name=(String)session.getAttribute("userName");
	session.setAttribute("userName", name);
	System.out.println(name);
response.setContentType("text/html;charset=UTF-8");

try (PrintWriter out = response.getWriter()) {


try {


File fileSaveDir = new File(savePath);
       
if (!fileSaveDir.exists()) {

fileSaveDir.mkdir();

}

String securitykey= request.getParameter("securitykey");
for (Part part1 : request.getParts()) {
String fileName1 = extractFileName(part1);
if(fileName1.length()>0){
storeData(securitykey,fileName1,name);
part1.write(savePath + File.separator + fileName1);
}
}
encryptdata();
response.sendRedirect("uploadsuccess.jsp");
} catch (Exception ex) 
{

out.println("error" + ex);
}

}

}

private String storeData(String securitykey,String fileName,String name){
	
	try{
		
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloud", "root", "root");

	// query to insert name and image name
	String file1=fileName.replaceAll(".docx", " ");
	String query = "INSERT INTO fileupload (securitykey,photourl,file,filename,Username) values (?, ?, ?, ?, ?)";
	PreparedStatement pst;
	pst = con.prepareStatement(query);
	pst.setString(1, securitykey);
	String filePath = savePath + File.separator + fileName; 
	pst.setString(2, filePath);	
	pst.setString(3, file1);
	pst.setString(4, fileName);
	pst.setString(5, name);
	pst.executeUpdate();
	}catch(Exception e){
		e.printStackTrace();
	}
	
	return "sucess";
}
private String encryptdata()
{
	Statement statement = null;
    ResultSet resultSet = null;
try {
	String key = "squirrel123"; // needs to be at least 8 characters for DES
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection(  
	"jdbc:mysql://localhost:3306/cloud","root","root");
	statement = con.createStatement();
	resultSet = statement.executeQuery("select photourl,filename from fileupload");
	while(resultSet.next())
	{
	System.out.println("photourl:"+resultSet.getString("photourl"));
	File f = new File(resultSet.getString("photourl"));  
	FileInputStream fis = new FileInputStream(resultSet.getString("photourl"));
	FileOutputStream fos = new FileOutputStream("C:\\project\\Encrypt\\"+f.getAbsolutePath().substring(f.getAbsolutePath().lastIndexOf("\\")+1));
	encrypt(key, fis, fos);
	FileInputStream fis2 = new FileInputStream("C:\\project\\Encrypt\\"+f.getAbsolutePath().substring(f.getAbsolutePath().lastIndexOf("\\")+1));
	FileOutputStream fos2 = new FileOutputStream("C:\\project\\Decrypt\\"+f.getAbsolutePath().substring(f.getAbsolutePath().lastIndexOf("\\")+1));
	decrypt(key, fis2, fos2);
    }
} 
catch (Throwable e) 
{
	e.printStackTrace();
}
return "sucess";
}

public static void encrypt(String key, InputStream is, OutputStream os) throws Throwable 
{
encryptOrDecrypt(key, Cipher.ENCRYPT_MODE, is, os);
}
public static void decrypt(String key, InputStream is, OutputStream os) throws Throwable 
{
encryptOrDecrypt(key, Cipher.DECRYPT_MODE, is, os);
}

public static void encryptOrDecrypt(String key, int mode, InputStream is, OutputStream os) throws Throwable 
{

DESKeySpec dks = new DESKeySpec(key.getBytes());
SecretKeyFactory skf = SecretKeyFactory.getInstance("DES");
SecretKey desKey = skf.generateSecret(dks);
Cipher cipher = Cipher.getInstance("DES"); // DES/ECB/PKCS5Padding for SunJCE

if (mode == Cipher.ENCRYPT_MODE) {
	cipher.init(Cipher.ENCRYPT_MODE, desKey);
	CipherInputStream cis = new CipherInputStream(is, cipher);
	doCopy(cis, os);
} else if (mode == Cipher.DECRYPT_MODE) {
	cipher.init(Cipher.DECRYPT_MODE, desKey);
	CipherOutputStream cos = new CipherOutputStream(os, cipher);
	doCopy(is, cos);
}
}

public static void doCopy(InputStream is, OutputStream os) throws IOException 
{
byte[] bytes = new byte[64];
int numBytes;
while ((numBytes = is.read(bytes)) != -1) 
{
	os.write(bytes, 0, numBytes);
}
os.flush();
os.close();
is.close();
}

// the extractFileName() is method used to extract the file name

private String extractFileName(Part part) {

String contentDisp = part.getHeader("content-disposition");

String[] items = contentDisp.split(";");

for (String s : items) {

if (s.trim().startsWith("filename")) {

return s.substring(s.indexOf("=") + 2, s.length() - 1);

}

}

return "";

}

@Override

protected void doGet(HttpServletRequest request, HttpServletResponse response)

throws ServletException, IOException {

processRequest(request, response);

}

@Override

protected void doPost(HttpServletRequest request, HttpServletResponse response)

throws ServletException, IOException {

processRequest(request, response);

}

@Override

public String getServletInfo() {

return "Short description";

}// </editor-fold>

}