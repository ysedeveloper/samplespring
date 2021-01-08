# samplespring
스프링 MVC 하루만에 배우기 소스코드

---
# 책 소개
딱 하루면 스프링 MVC로 만든 웹 어플리케이션을 따라 만들 수 있다.

이 글은 스프링 프레임워크로 웹을 개발하는 스프링 MVC에 대해 최대한 간결하게 설명한다.
복잡한 이론보다는 툴과 프레임워크 사용법에 촛점을 맞추고 하나씩 따라할 수 있도록 구성했다.

우리는 "문제"를 가지고 있고 "해결책" 이 필요하다.
물에 빠진 사람이 구해달라고 허우적대는데 부력의 원리에 대해서 한바탕 설교를 늘어놓는다면 어떨까? 어쩌면 설명을 듣다 말고 익사할지도 모른다. 그들에게 필요한 것은 과학적 지식이 아니라 튜브다.
물에 빠진 사람이 구출되고 나서는 여러 가지 행태를 보일 수 있다. 누군가는 당장 수영을 배우러 갈 것이다. 다른 누군가는 구조요원 근처에서만 수영할 수도 있다. 어쩌면 물에 들어갈 때 무조건 튜브를 가지고 가는 사람도 있을 것이고, 교훈은 전혀 얻지 못한 채 다시 한 번 물에 휩쓸리는 사람도 있을 것으로 생각한다.

이 책은 당장 물에 빠진 사람에게 생존을 위해 물 위에 뜨는 법에 초점을 맞춘다. 가장 간단한 기초 기능만을 가지고 아주 단순한 웹 애플리케이션을 만든다. 
글의 목적은 스프링 MVC의 모든 기능을 익히는 것이 아니라, 전반적인 스프링 MVC 프로젝트의 구조를 익히는 것이다.
평형이든 접영이든 물 위에 뜰 수 있어야 더 어려운 수영법을 배울 수 있듯이 기초를 익히고 나면 더 많은 고급기능을 체득할 수 있을 것이라 믿는다.

---
# 도서 구입 안내
## 종이책
* [YES24](http://www.yes24.com/Product/Goods/96581707?OzSrank=1)


## 전자책
* [YES24](http://www.yes24.com/Product/Goods/96534919?OzSrank=1)
* [알라딘](https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=259535963)
* [교보문고](http://digital.kyobobook.co.kr/digital/ebook/ebookDetail.ink?selectedLargeCategory=001&barcode=4801137227393&orderClick=LAG&Kc=)


---
# 복사 붙여넣기 모음.
아래는 직접 책에서 입력하기 어려운 분들을 위한 복사 붙여넣기 모음입니다.

## 2장. 관련 링크
* [JDK 8 다운로드](https://www.oracle.com/kr/java/technologies/javase/javase-jdk8-downloads.html)
* [이클립스 2020-06 버전 다운로드](https://www.eclipse.org/downloads/packages/release/2020-06/r)
* [마리아 DB 다운로드](https://mariadb.org/download/)
* [HEIDISQL 다운로드](https://www.heidisql.com/)

## 3.8. 인코딩 필터 설정
```
<filter>
    <filter-name>encodingFilter</filter-name>
    <filter-class>org.springframework.web.filter.CharacterEncodingFilter
    </filter-class>
    <init-param>
        <param-name>encoding</param-name>
        <param-value>UTF-8</param-value>
    </init-param>
    <init-param>
        <param-name>forceEncoding</param-name>
        <param-value>true</param-value>
    </init-param>
</filter>
<filter-mapping>
    <filter-name>encodingFilter</filter-name>
    <url-pattern>/*</url-pattern>
</filter-mapping>
```

## 3.9. 로그 레벨 설정
```
<!-- Root Logger -->
<root>
    <priority value="debug" />
    <appender-ref ref="console" />
</root>
```

## 5.1. 책 관리 데이터베이스 생성
### 데이터베이스 생성
```
CREATE DATABASE yse_spring_mvc;
```

### 데이터베이스 유저 생성
```
CREATE USER 'yse_spring_mvc_user'@'%' IDENTIFIED BY '1234';
```

### 데이터베이스 유저 권한 부여
```
GRANT EXECUTE, SELECT, SHOW VIEW, ALTER, ALTER ROUTINE, CREATE, CREATE ROUTINE, CREATE TEMPORARY TABLES, CREATE VIEW, DELETE, DROP, EVENT, INDEX, INSERT, REFERENCES, TRIGGER, UPDATE, LOCK TABLES  ON `yse_spring_mvc`.* TO 'yse_spring_mvc_user'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
```

## 5.2. 책관리 테이블 생성
```
CREATE TABLE `book` (
	`book_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
	`title` VARCHAR(200) NOT NULL,
	`category` VARCHAR(200) NOT NULL DEFAULT '',
	`price` INT NULL,
	`insert_date` DATETIME NOT NULL DEFAULT NOW(),
	PRIMARY KEY (`book_id`)
)
COLLATE='utf8mb4_general_ci'
;
```
