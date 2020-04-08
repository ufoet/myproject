package io.github.eunii.chatting;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.apache.ibatis.session.SqlSessionFactory;
import javax.sql.DataSource;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
	
@SpringBootApplication
@Configuration
@MapperScan(value={"io.github.eunii.board.mapper"})

public class ChattingApplication {

	public static void main(String[] args) {
		SpringApplication.run(ChattingApplication.class, args);
	}
	@Bean
	public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception{
	        
	        SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
	        
	        sessionFactory.setDataSource(dataSource);
	        return sessionFactory.getObject();        
	}
}
