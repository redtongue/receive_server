package main;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Date;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;

import service.ServerThread;


public class Server {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		InstantMessenger frame = new InstantMessenger();
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setVisible(true);
		
		ExecutorService pool = Executors.newFixedThreadPool(2);
		try {
			ServerSocket serversocket=new ServerSocket(1111);
			Socket socket=null;
	        System.out.println("服务器正在启动");
			while(true){
				System.out.println("等待客户端连接...");
				socket=serversocket.accept();//阻塞，等待客户端请求
				System.out.println("客户端连接。");
				ServerThread thread=new ServerThread(socket);
				//thread.start();
				pool.execute(thread);
			}
			
		} catch (IOException e) {
			System.out.println("before_catch");
			e.printStackTrace();
			System.out.println(e.toString());
			System.out.println("after_catch");
		}finally{
		}
		pool.shutdown();
	}
}

class InstantMessenger extends JFrame {
	private JTextArea textArea;

	public InstantMessenger() {
		setTitle("Messenger Service");
		setSize(600, 400);

		JPanel panel = new JPanel();
		
		JButton startButton = new JButton("Start");
		startButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				startButton.setText("Refresh");
				textArea.setText("*****服务器已经启动*****\n");
				textArea.append("当前传输内容：" + ServerThread.cell + "\n");
			}
		});// 添加事件监听器
		panel.add(startButton);// 将按钮加入到面板上
		JButton stopButton = new JButton("Stop");
		stopButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				System.exit(0);
			}
		});// 添加事件监听器
		panel.add(stopButton);// 将按钮加入到面板上
		add(panel, "South");// 将面板加入到框架中
		
		textArea = new JTextArea(8, 40);
		textArea.setLineWrap(true);// 设置是否自动换行
		JScrollPane scrollPane = new JScrollPane(textArea);// 添加滚动条
		add(scrollPane, "Center");// 将滚动窗格添加到框架中
	}
}
