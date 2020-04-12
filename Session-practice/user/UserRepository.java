package user;
import java.util.ArrayList;
import java.util.List;

public class UserRepository {
	// private로 선언한 변수나 메서드는 외부 클래스에서 사용할 수 없다.
	private static List<User> userList = new ArrayList<>();
	
	//생성된 user객체를 userList리스트에 추가하는 메서드.
	public static void save(User user) {
		userList.add(user);
	}
	
	// 테스트하기 위해 회원가입 된 정보를 콘솔창에 출력하기 위한 메서드.
	public static void showUsers() {
		System.out.println("### 회원 정보 ###");
		for(User user : userList) {
			System.out.println("아이디: " + user.getAccount());
			System.out.println("비밀번호: " + user.getPassword());
			System.out.println("이름: " + user.getName());
			System.out.println("별명: " + user.getNickName());
			System.out.println("================================");
		}
	}
	
	//매개값으로 userId를 받아서 해당 id를 가진 객체가 userList에 있는 지 탐색하는 메서드.
	public static User getUser(String userId) {
		for(User user : userList) {
			if(user.getAccount().equals(userId)) {
				return user;
			}
		}
		return null;
	}
	
	//userList에서 해당 회원을 삭제하는 메서드.
	public static void deleteUser(String userId) {
//		for (User user : userList) {
//			if (user.getAccount().equals(userId)) {
//				userList.remove(user);
//			}	
//		}
		userList.remove(getUser(userId));
	}
}
