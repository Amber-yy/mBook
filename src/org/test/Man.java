package org.test;

public class Man implements Person {
	private Food food;
	@Override
	public void eatFood() {
		 System.out.println(food.eat());
		
	}
	
	public void setFood(Food food){
		this.food=food;
	}

}
