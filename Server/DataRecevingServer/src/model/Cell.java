package model;

import java.util.Arrays;
import java.util.Date;

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
    public Cell(int id,int type,String messageText,byte[] fcontent,String savePath,Date sendTime,String sendName,String sendPhone,String receiveName,String receivePhone){
        this.id = id;
        this.type = type;
        this.messageText = messageText;
        this.fcontent = fcontent;
        this.savePath = savePath;
        this.sendTime = sendTime;
        this.sendName = sendName;
        this.sendPhone = sendPhone;
        this.receiveName = receiveName;
        this.receivePhone = receivePhone;
    }
    @Override
    public String toString() {
        return "Cell{" +
                "id=" + id +
                ", type=" + type +
                ", messageText='" + messageText + '\'' +
                ", fcontent=" + Arrays.toString(fcontent) +
                ", savePath='" + savePath + '\'' +
                ", sendTime=" + sendTime +
                ", sendName='" + sendName + '\'' +
                ", sendPhone='" + sendPhone + '\'' +
                ", receiveName='" + receiveName + '\'' +
                ", receivePhone='" + receivePhone + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getMessageText() {
        return messageText;
    }

    public void setMessageText(String messageText) {
        this.messageText = messageText;
    }

    public byte[] getFcontent() {
        return fcontent;
    }

    public void setFcontent(byte[] fcontent) {
        this.fcontent = fcontent;
    }

    public String getSavePath() {
        return savePath;
    }

    public void setSavePath(String savePath) {
        this.savePath = savePath;
    }

    public Date getSendTime() {
        return sendTime;
    }

    public void setSendTime(Date sendTime) {
        this.sendTime = sendTime;
    }

    public String getSendName() {
        return sendName;
    }

    public void setSendName(String sendName) {
        this.sendName = sendName;
    }

    public String getSendPhone() {
        return sendPhone;
    }

    public void setSendPhone(String sendPhone) {
        this.sendPhone = sendPhone;
    }

    public String getReceiveName() {
        return receiveName;
    }

    public void setReceiveName(String receiveName) {
        this.receiveName = receiveName;
    }

    public String getReceivePhone() {
        return receivePhone;
    }

    public void setReceivePhone(String receivePhone) {
        this.receivePhone = receivePhone;
    }
}
