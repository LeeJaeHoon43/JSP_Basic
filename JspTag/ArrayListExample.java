package basic;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ArrayListExample {

	public static void main(String[] args) {
		
//		String[] str = new String[100]; // 배열의 선언 (크기를 정할 수 있다.)
		List<String> list = new ArrayList<>(); // List는 크기를 정할 수 없다.
		
		String str1 = "짜장면";
		
		// list에 객체를 추가하는 메서드 : 리스트명.add(객체)
		list.add(str1);
		list.add("치킨");
		list.add("삼겹살");
		list.add("치킨");
		list.add("피자");
		System.out.println(list);
		
		// list에 객체를 삽입 (내가 지정한 위치에) : 리스트명.add(index번호, 객체)
		list.add(2, "아이스크림");
		System.out.println(list);
		
		// list의 크기 (저장된 객체의 수 얻기) : 리스트명.size()
		System.out.println("list에 저장된 객체 수 : " + list.size());
		
		// list에 저장된 객체 얻기 : 리스트명.get(index)
//		String food = list[4]; (x) 배열의 방식.
		String food = list.get(4);
		System.out.println("4번 인덱스의 값 : " + food);
		
		// list 내부에 저장된 객체의 존재 유무를 파악 : 리스트명.contains(객체)
		System.out.println(list.contains("탕수육"));
		
		System.out.println("==========================================================================");
		
		// list의 반복문 처리
//		for (int i=0; i<list.size(); i++) {
//			System.out.println(list.get(i));
//		}
		
		// list의 향상 for문(forEach문)
		for (String str : list) {
			System.out.println(str);
		}
		
		// list의 내부 객체 삭제 : 리스트명.remove(index) 또는 리스트명.remove(객체)
		list.remove(3);
		System.out.println(list);
		list.remove("치킨");
		System.out.println(list);
		
		// list 내부 객체와 인덱스 확인 : 리스트명.indexOf(객체)
		int idx = list.indexOf("짜장면");
		System.out.println("짜장면의 인덱스 : " + idx);
		
		// list 내부 객체 전체 삭제 : 리스트명.clear()
		list.clear();
		System.out.println(list);
		
		// list의 정렬.
		List<Integer> scores = new ArrayList<>();
		scores.add(55);
		scores.add(100);
		scores.add(47);
		scores.add(64);
		scores.add(15);
		scores.add(59);
		
		System.out.println(scores);
		
		// 오름차순 정렬 : Collections.sort(리스트명);
		Collections.sort(scores);
		System.out.println(scores);
		
		// 내림차순 정렬 : Collections.sort(리스트명, Collections.reverseOrder());
		Collections.sort(scores, Collections.reverseOrder());
		System.out.println(scores);	
	}
}
