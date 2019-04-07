package com.cv.DataFetch;


import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.cv.connector.DataConnector;
import com.cv.data.InfoData;

public class CandidateDataFetch {

	public static List<InfoData> getFetch(String id) {
		InfoData data=new InfoData();
		
		Session session=DataConnector.getConnect();
        Transaction t=session.beginTransaction();
        String name=id;
        
       Query q=session.createQuery("from InfoData data where id=:id");
        q.setParameter("id", id);
		
        List list=q.list();
        Iterator it=list.iterator();
        
        List<InfoData> record=new ArrayList<InfoData>();
        
        while(it.hasNext()) {
        	Object o=(Object)it.next();
        	InfoData d=(InfoData)o;
        	System.out.println("candidate-name: "+d.getName());
        	System.out.println("Candidate-id: "+d.getId());
        	record.add(d); 
        }
        
        
        
        return record;
	}
}
