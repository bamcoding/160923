package net.gondor.index.vo;

public class CalcVO {
	private int numberOne;
	private int numberTwo;
	private int result;

	public CalcVO(int numberOne, int numberTwo, int result) {
		this.numberOne =numberOne; 
		this.numberTwo =numberTwo; 
		this.result = result; 
	}
	public int getNumberOne() {
		return numberOne;
	}
	public void setNumberOne(int numberOne) {
		this.numberOne = numberOne;
	}
	public int getNumberTwo() {
		return numberTwo;
	}
	public void setNumberTwo(int numberTwo) {
		this.numberTwo = numberTwo;
	}
	public int getResult() {
		return result;
	}
	public void setResult(int result) {
		this.result = result;
	}
}
