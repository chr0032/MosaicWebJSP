
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
      - >> git push -u origin master
   - 개발자 2가 Clone 수행
      - >> git clone https://github.com/chr0032/MosaicWeb.git
      - >> git clone https://github.com/chr0032/MosaicWeb.git MosaicWebDev (MasaicWebDev폴더 생성 후 Clone)
      - >> Eclipse Gradle Import      
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
   - build.gradle dependency : compile group: 'org.apache.tomcat.embed', name: 'tomcat-embed-jasper', version: '8.5.4'
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
   



   
   