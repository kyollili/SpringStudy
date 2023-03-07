package com.sist.commons;

import java.io.IOException;
import java.sql.SQLException;

import org.springframework.web.bind.annotation.ControllerAdvice;
/*
 * 		스프링 : 객체 생성 ~ 소멸 (필요시마다 호출이 가능 => 기본 싱글턴) => 핵심만 코딩
 * 		1. 메모리 할당 (제외 : VO (사용자 정의 데이터형), Mapper(인터페이스)) ==> 기능별 분리해서 저장
 * 			@Component ==> OpenAPI (일반 클래스)
 * 			@Repository => DAO (저장소 : 데이터베이스 관련) => 테이블 한 개 연결
 * 			@Service ==> DAO가 여러 개인 경우 (Join,SubQuery...)
 * 			------------------------------------------------- 1) Service VS DAO
 * 			@Controller : 브라우저와 연결 (DispatcherServlet이 위임) : 파일명 (화면 이동)
 *          @RestController : 다른 프로그램과 연결 (자바스크립트와 연결,Kotlin 연결) => JSON/JSONP
 *          @ControllerAdvice : Controller에서 공통 예외처리
 *          @RestControllerAdvice : RestController에서 공통 예외처리
 *          @Configuration : 자바로 환경 설정 (스프링 셋팅)
 * 		2. 주입
 *          일반 문자열 주입은 @Value 이용
 *          클래스 객체 주소는 @Autowired, @Resource, @Qualifier
 *          						   ---------------------- 특정 객체 지정
 *          				=> @Autowired + @Qualifier = @Resource
 *                          => @Qualifier("id명"), @Resource(name="id명")
 *      => DI / AOP / Transaction
 */
import org.springframework.web.bind.annotation.ExceptionHandler;
@ControllerAdvice
public class CommonsException {
	@ExceptionHandler(RuntimeException.class)
	public void runtimeException(RuntimeException ex)
	{
		System.out.println("============runtimeException============");
		System.out.println(ex.getMessage());
		System.out.println("========================================");
	}
	@ExceptionHandler(SQLException.class)
	public void sqlException(SQLException ex)
	{
		System.out.println("============SQLException============");
		System.out.println(ex.getMessage());
		System.out.println("====================================");
	}
	@ExceptionHandler(IOException.class)
	public void ioException(IOException ex)
	{
		System.out.println("============IOException============");
		System.out.println(ex.getMessage());
		System.out.println("===================================");
	}
	@ExceptionHandler(Exception.class)
	public void Exception(Exception ex)
	{
		System.out.println("============Exception============");
		System.out.println(ex.getMessage());
		System.out.println("=================================");
	}
}
