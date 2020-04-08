package io.github.eunii.board.mapper;

import org.springframework.stereotype.Repository;

@Repository("io.github.eunii.board.mapper.BoardMapper")
public interface BoardMapper {
    public int boardCount() throws Exception;
}