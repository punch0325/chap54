package com.example.json;

import java.util.ArrayList;
import java.util.HashMap;

import org.junit.jupiter.api.Test;

import com.example.util.Alpha;
import com.example.util.Color;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class ObjectMapperTest {
	
	@Test
	void stringify() throws JsonProcessingException {
		var alpha = new Alpha();
		System.out.println("alpha 객체 ▶ "+alpha); 

		ObjectMapper mapper = new ObjectMapper(); /*ObjectMapper : java 객체를 json으로 변환할 수 있음*/
		var json = mapper.writeValueAsString(alpha);
		System.out.println("json 문자열 변환 ▶ "+json); 
		
	}
	
	@Test
	void parse() throws JsonMappingException, JsonProcessingException {
		var json = """
							{
								"line": 200,
								"column": 400,
								"fg": "Black",
								"bg"	: "Red",
								"ch"	: "X" 
							}
				""";
		
		ObjectMapper mapper = new ObjectMapper();
		var alpha = mapper.readValue(json, Alpha.class);
		System.out.println(alpha.getLine());
		System.out.println(alpha.toString());
		
		/*
		 		json 변수에 json 문자열을 넣은 후 ObjectMapper의 readValue 메소드를 이용하여
		    	json 문자열을 alpha 객체로 변환한 것
		 */
	}
	
	
	@Test
	void array() throws JsonProcessingException {
		int[] arr1 = {10,20,30};
		ObjectMapper mapper = new ObjectMapper();
		System.out.println("arr1 : "+mapper.writeValueAsString(arr1));
		
		Alpha[] arr2 = {new Alpha(), new Alpha()};
		System.out.println("arr2 : "+mapper.writeValueAsString(arr2));
		
		var list = new ArrayList<Alpha>();
		list.add(new Alpha());
		list.add(new Alpha());
		System.out.println("list : "+mapper.writeValueAsString(list));
		
		var map = new HashMap<String, Object>();
		map.put("line", 200);
		map.put("column", 200);
		map.put("fg", Color.Black);
		map.put("bg", Color.Red);
		map.put("ch", 'E');
		System.out.println("map : "+mapper.writeValueAsString(map));
	}
	
}
