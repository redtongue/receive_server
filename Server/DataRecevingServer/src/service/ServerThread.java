package service;

import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.Date;
import java.util.UUID;

import com.google.gson.Gson;

import model.Cell;

public class ServerThread extends Thread{
	Socket socket = null;
	CellService service = new CellService();
	public static Cell cell;
	public ServerThread(Socket socket){
		this.socket = socket;
	}
	public void run(){
		InputStream is = null;
		InputStreamReader isr = null;
		BufferedReader br = null;
		OutputStream os = null;
		PrintWriter pw = null;
		try{
			is = socket.getInputStream();
			isr = new InputStreamReader(is,"UTF-8");
			br = new BufferedReader(isr);
			StringBuffer sb = new StringBuffer();
			String temp;
			while(null != (temp = br.readLine())){
				sb.append(temp);
			}
			String info = sb.toString();
			System.out.println("info:"+info);
			
			Gson gson = new Gson();
			cell = (Cell)gson.fromJson(info, Cell.class);
			System.out.println(cell.toString());
			
			CellService cellservice = new CellService();
			if(cell.getType() == 0){//Text
				cell.setFcontent(null);
			}else if(cell.getType() == 1){//Photo
				String newName = UUID.randomUUID() + ".jpg";
				String savepath = "d:/telegramReceiveFile/photofile/" + newName;
				System.out.println(savepath);
				FileOutputStream fos = new FileOutputStream(savepath);
				fos.write(cell.getFcontent());
				cell.setSavePath(newName);
				cell.setFcontent(null);
				fos.close();
			}else if(cell.getType() == 2){//audio
				String newName = UUID.randomUUID() + ".mp3";
				String savepath = "d:/telegramReceiveFile/audiofile/" + newName;
				System.out.println(savepath);
				FileOutputStream fos = new FileOutputStream(savepath);
				fos.write(cell.getFcontent());
				cell.setSavePath(newName);
				cell.setFcontent(null);
				fos.close();
			}else if(cell.getType() == 3){//video
				String newName = UUID.randomUUID() + ".mp4";
				String savepath = "d:/telegramReceiveFile/videofile/" + newName;
				System.out.println(savepath);
				FileOutputStream fos = new FileOutputStream(savepath);
				fos.write(cell.getFcontent());
				cell.setSavePath(newName);
				cell.setFcontent(null);
				fos.close();
			}
			cell.setSendTime(new Date());
			service.insertCell(cell);
			socket.shutdownInput();
		}catch(IOException e){
			e.printStackTrace();
		}finally{
			try {
				if(pw!=null)
					pw.close();
				if(os!=null)
					os.close();
				if(br!=null)
					br.close();
				if(isr!=null)
					isr.close();
				if(is!=null)
					is.close();
				if(socket!=null)
					socket.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}
