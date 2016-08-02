
* 처음 켰을때 git status 해서 clean이 안되면 (MosaicWeb에서)
1. git add *
2. git commit -m "수정 내용"
3. git push
4. dev에서 git pull


1. Spring Starter Project 생성

   - Name : MosaicWeb
   - Type : Gradle(Buildship)
   - Packaging : war
   - Group : com.hybrid
   - Artifact : MosaicWeb
   - Package : com.hybrid
   
   - Dependencies 선택 : Web - Web

2. 형상관리

   - Remote Repository 생성 (github)
   - Local Repository 생성
      - >> git status
      - >> git log
      - >> dir /A > .gitignore
      - >> notepad .gitignore 편집
      - >> git init
      - >> git add *
      - >> git commit -m "first commit" 
   - Local ====push===> Remote (최초 동기화)
      - >> git remote add origin https://github.com/chr0032/MosaicWeb.git
      - >> git remote -v
      - >> git remote remove origin (remote제거)
      - >> git remote add origin https://github.com/chr0032/MosaicWeb.git
      - >> git push -u origin master (처음 할때만 그 이후는 git push)
   - 개발자 2가 Clone 수행
      - >> git clone https://github.com/chr0032/MosaicWeb.git (D:\03_Src\jsp\MosaicWeb 에서)
      - >> git clone https://github.com/chr0032/MosaicWeb.git MosaicWebDev (D:\03_Src\jsp 에서 실행하면 MosaicWebDev 파일도 생성 클론도 됨)
      - >> Eclipse Gradle Import (이클립스 상에서 폴더 확인 가능)     
   - 개발자 1(master)의 변경사항 저장
      - >> git add .
      - >> git status
      - >> git push
   - 개발자 2가 변경사항 받아오기
      - >> git pull
      
3. HTML 설정

   - 설정 불필요
   - mkdir src/main/webapp 폴더 생성
   - notepad src/main/webapp/Hello.html
   - gradle bootRun 
   - Firefox ==> http://localhost:8080/Hello.html
      
4. JSP 설정

   - mvnrepository.com  >> search : tomcat jasper
   - build.gradle dependency : providedRuntime group: 'org.apache.tomcat.embed', name: 'tomcat-embed-jasper', version: '8.5.4'
   - Eclipse -> Gradle Refresh
   - notepad src/main/webapp/Hello.jsp
   - gradle bootRun
   - Firefox ==> http://localhost:8080/Hello.jsp
   
5. Servlet 설정   
   
   - MosaicWebApplication.java << @ServletComponentScan 추가
   - com.hybrid.servlet.HelloServlet.java 생성
   - Eclipse -> project -> Project Pacets 
   - >> Dynamic WebModule (version : 3.1)
   - >> java(version : 1.8)
   - >> javascript(version : 1.0)
   - gradle bootRun
   - Firefox ==> http://localhost:8080/HelloServlet
   
6. Springloaded 설정 (리로드 기능)
   
   - Terminal에서 tree /f 으로 구조를 보면 HelloServlet.class가 두곳에 있는데 Eclipse가 저장하는 곳을 Gradle이 저장하는 곳과 맞춰준다.
   - mvnrepository.com >> search : springloaded
   - build.gradle에 설정 (두 곳)
   ->> (위쪽 dependencies) classpath("org.springframework:springloaded:1.2.6.RELEASE") 
   ->> (아래쪽 dependencies) compile group: 'org.springframework', name: 'springloaded', version: '1.2.6.RELEASE'
   - Eclipse Output Directory 변경
   -    bin ==> build/classes/main
   - 개발자2는 Project -> Properties 에서 두가지 변경이 필요함
   - 1. Project Facets-> 
   
  7. Mybatis 설정
  
   - mvnrepository.com >> search : spring boot mybatis
   - build.gradle에 Dependency 설정
 
		- compile group: 'org.mybatis.spring.boot', name: 'mybatis-spring-boot-starter', 
		  version: '1.1.1'
		- compile files('src/main/webapp/WEB-INF/lib/ojdbc7.jar');

   - application.properties
   
   		- >> spring.datasource.driver-class-name=oracle.jdbc.OracleDriver
		- >> spring.datasource.url=jdbc:oracle:thin:@52.78.14.61:1521:orcl
		- >> spring.datasource.username=scott
		- >> spring.datasource.password=tiger
   		
   - Eclipse Gradle Reflesh 수행   
   - gradle bootRun
   
   - notepad src/main/java/com/hybrid/mapper/DeptMapper.java 인터페이스 생성   
   - notepad src/main/java/com/hybrid/domain/Dept.java
   - notepad src/test/java/com/hybrid/mapper/DeptMapperTest.java
   - notepad src/main/webapp/dept.jsp
   
8. Deploy 방법 
   - gradle war
   - D:\03_Src\jsp\MosaicWeb\build\libs
   - cp MosaicWeb.war C:\Program Files\Apache Software Foundation\Tomcat 8.5\webapps
   - Firefox ==> http://localhost/MosaicWeb/index.html

9. Gluon 설정
   - cp FXTemplate/src/* MosaicWeb/src
   - merge FXTemplate/build.gradle MosaicWeb/build.gradle (3군데 /application, main 클래스 추가/ repositories 추가 / dependencies 	추가 )
   - merge ((com.hybrid.fx.MainApplication=com.hybrid.MosaicWebApplication)합칩)	
		- >> spring boot + gluon start
		- >> spring boot + gluon stop
		- >> primaryView에 WebView 추가

10. SiteMesh 설정

	- mvnrepository.com >> search : sitemesh
	- build.gradle dependencies 추가
		- >> compile group: 'org.sitemesh', name: 'sitemesh', version: '3.0.1' 추가		 
	- builder.addDecoratorPath("/deco", "/WEB-INF/deco/maindeco.jsp");   
   
      
   
   
   
   