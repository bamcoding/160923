package net.homework1;

public class san {
	public static void main(String[] args){
		
		for(int j=0; j<=10; j++){
			for(int i = 0; i <= 10-j; i++){
				System.out.printf(" ");
			}
			for(int i = 0; i <= j; i++){
				System.out.printf("*");
			}
			System.out.println();
		}
	}
}
