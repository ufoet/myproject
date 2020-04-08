package io.github.eunii.board.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString

public class BoardVO {
	private Integer num;
	private String name;
	private String title;
	private String content;
	private Integer readCount;
	private Date writeDate;
}
