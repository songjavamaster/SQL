package common;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/download.do")
public class FileDownload extends HttpServlet {

   public void init() {
      // TODO Auto-generated method stub
   }

   public void destroy() {
      // TODO Auto-generated method stub
   }

   protected void doGet(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      // TODO Auto-generated method stub
      doHandle(request, response);
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      // TODO Auto-generated method stub
      doHandle(request, response);
   }

   private void doHandle(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      request.setCharacterEncoding("utf-8");
      response.setContentType("text/html; charset=utf-8");
      String file_repo = "C:\\board\\article_image";
      String fileName = (String) request.getParameter("imageFileName");
      String articleNO=request.getParameter("articleNO");
      System.out.println("fileName=" + fileName);
      OutputStream out = response.getOutputStream();
      String downFile = file_repo+ "\\"+ articleNO + "\\" + fileName;
      File f = new File(downFile);
      response.setHeader("Cache=Contro", "no-cache");
      response.addHeader("Content-disposition", "attachment; fileName=" + fileName);
      FileInputStream in = new FileInputStream(f);
      byte[] buffer = new byte[1024 * 8];
      while (true) {
         int count = in.read(buffer);
         if (count == -1)
            break;
         out.write(buffer, 0, count);
      }
      in.close();
      out.close();
   }
}