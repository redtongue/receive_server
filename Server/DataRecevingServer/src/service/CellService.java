package service;

import org.hibernate.Session;
import org.hibernate.Transaction;

import database.MySessionFactory;
import model.Cell;

public class CellService {
	public void insertCell(Cell cell){
		Session session = MySessionFactory.getSession();
		Transaction transaction = null;
		try{
			transaction = session.beginTransaction();
			session.save(cell);
			
			transaction.commit();
		}catch(Exception e){
			e.printStackTrace();
			transaction.rollback();
		}
	}
}
