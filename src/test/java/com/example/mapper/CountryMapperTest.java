package com.example.mapper;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.ArrayList;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class CountryMapperTest {

	@Autowired
	CountryMapper mapper;
	
	@Test
	void autowired() {
		assertThat(mapper).isNotNull();
	}
	
	@Test
	void selectAll() {
		var list = mapper.selectAll();
//		list.forEach(c->System.out.println("["+c.getGovernmentForm()+"]"));
		assertThat(list.size()).isEqualTo(239);
		
	}
	
	@Test
	void selectContinents() {
		var continents = mapper.selectContinents();
		System.out.println(continents);
		assertThat(continents.size()).isEqualTo(7);
		
	}
	
	@Test
	void allMatch() {  //allMath : 모두 true면 에러가 나지 않는다.
		var list = new ArrayList<Boolean>();
		list.add(true);
		list.add(true);
		list.add(true);
		assertThat(list).allMatch(e->(boolean)e); 
		
		var list2 = new ArrayList<Integer>();
		list2.add(10);
		list2.add(20);
		list2.add(30);
		assertThat(list2).allMatch(e->e<40);
	}
	
	@Test
	void selectAllByContinent() {
		var list = mapper.selectAllByContinent("Asia");
		list.forEach(c->System.out.println(c.getContinent()));
		assertThat(list).allMatch(c->c.getContinent().equals("Oceania"));
									// 이렇게 allMatch를 쓰면 syso로 다 Asia가 나오는지 확인하지 않고 junit에러 여부를 통해 테스트 할 수 있다.
	}
	
	@Test
	void selectAllByContinentAndRegion() {
		var list = mapper.selectAllByContinentAndRegion("Asia","Middle East");
		assertThat(list).allMatch(c->c.getContinent().equals("Asia")&&c.getRegion().equals("Middle East"));
	}

}
