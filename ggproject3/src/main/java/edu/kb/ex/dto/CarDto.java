package edu.kb.ex.dto;

public class CarDto {
	private String carNum;
	private String carKind;
	private String carColor;
	private String carYears;
	private String carOption;
	private String carDayPrice;
	private String carImg;
	private String date;
	
	public CarDto() {}

	public CarDto(String carNum, String carKind, String carColor, String carYears, String carOption,
			String carDayPrice, String carImg, String date) {
		
		this.carNum = carNum;
		this.carKind = carKind;
		this.carColor = carColor;
		this.carYears = carYears;
		this.carOption = carOption;
		this.carDayPrice = carDayPrice;
		this.carImg = carImg;
		this.date = date;
	}

	public String getCarNum() {
		return carNum;
	}

	public void setCarNum(String carNum) {
		this.carNum = carNum;
	}

	public String getCarKind() {
		return carKind;
	}

	public void setCarKind(String carKind) {
		this.carKind = carKind;
	}

	public String getCarColor() {
		return carColor;
	}

	public void setCarColor(String carColor) {
		this.carColor = carColor;
	}

	public String getCarYears() {
		return carYears;
	}

	public void setCarYears(String carYears) {
		this.carYears = carYears;
	}

	public String getCarOption() {
		return carOption;
	}

	public void setCarOption(String carOption) {
		this.carOption = carOption;
	}

	public String getCarDayPrice() {
		return carDayPrice;
	}

	public void setCarDayPrice(String carDayPrice) {
		this.carDayPrice = carDayPrice;
	}

	public String getCarImg() {
		return carImg;
	}

	public void setCarImg(String carImg) {
		this.carImg = carImg;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
	

}
