package user;
// User 클래스 생성 : 클래스를 생성할 때는 class 예약어를 사용한다. 그 옆에 클래스 이름을 써준다. 클래스 이름은 대문자로 시작해야 한다.
public class User {
	
	// private로 선언한 변수나 메서드는 외부 클래스에서 사용할 수 없다.
	// private로 멤버 변수 선언  : 멤버 변수란 클래스 내부에 선언하여 객체 속성을 나타내는 변수.
	private String account;
	private String password;
	private String name;
	private String nickName;
	
	// 기본(default) 생성자 생성 : Ctrl + SpaceBar + Enter : 빠른 디폴트 생성자 생성.
	public User() {}
	
	// 디폴트 생성자를 생성하지 않으면 사용할 수 없으므로 먼저 디폴트 생성자를 생성한다.
	// 모든 값을 매개값으로 받는 생성자 생성.
	// alt + shift + s -> Generate Constructor using Fields
	public User(String account, String password, String name, String nickName) {
		super();
		this.account = account;
		this.password = password;
		this.name = name;
		this.nickName = nickName;
	}
	
	// get(), set()메서드
	// get()메서드 : 값을 얻는 메서드
	// set()메서드 : 값을 저장하는 메서드
	// private로 선언된 멤버 변수를 외부 코드에서 사용할 수 있는 방법은 get(), set()메서드가 있다.
	// alt + shift + s -> Generate Getters and Setters
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
}
