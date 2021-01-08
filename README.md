# samplespring
스프링 MVC 하루만에 배우기 소스코드

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
