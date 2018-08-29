# receive_server

该项目包含接收数据的server和网页展示的web，其中传输的数据类型如下所示。

## server

server端用来接收其他客户端传来的数据，其中数据类型如下：

	public class Cell {
		private int id;
    	private int type;
    	private String messageText;
    	private byte[] fcontent;
    	private String savePath;
    	private Date sendTime;
    	private String sendName;
    	private String sendPhone;
    	private String receiveName;
    	private String receivePhone;
    	public Cell(){
		}

    }

server端运行界面截图：

![server](https://github.com/redtongue/receive_server/blob/master/image/2.png)

## web

web是用来展示服务器接收的数据的网页展现形式。效果截图如下：

![web](https://github.com/redtongue/receive_server/blob/master/image/1.png)

其中web登陆的用户名：admin，密码：123456。

### note

web 和server所需要的数据库对应sql文件在database中。

