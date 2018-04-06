package edu.kb.ex.dao;

import java.sql.Date;
import java.util.ArrayList;



import edu.kb.ex.dto.ContractDto;

public interface ContractDao {
	
	public ArrayList<ContractDto> listDao(String memberId);
	public ArrayList<ContractDto> carList();	
	public void writeDao(String memberId, String carNum, String sumprice, java.util.Date to1, java.util.Date to2);

}
