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
	        System.out.println("��������������");
			while(true){
				System.out.println("�ȴ��ͻ�������...");
				socket=serversocket.accept();//�������ȴ��ͻ�������
				System.out.println("�ͻ������ӡ�");
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
				textArea.setText("*****�������Ѿ�����*****\n");
				textArea.append("��ǰ�������ݣ�" + ServerThread.cell + "\n");
			}
		});// ����¼�������
		panel.add(startButton);// ����ť���뵽�����
		JButton stopButton = new JButton("Stop");
		stopButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				System.exit(0);
			}
		});// ����¼�������
		panel.add(stopButton);// ����ť���뵽�����
		add(panel, "South");// �������뵽�����
		
		textArea = new JTextArea(8, 40);
		textArea.setLineWrap(true);// �����Ƿ��Զ�����
		JScrollPane scrollPane = new JScrollPane(textArea);// ��ӹ�����
		add(scrollPane, "Center");// ������������ӵ������
	}
}
