package com.myspring.board.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.myspring.board.VO.ArticleVO;

public interface BoardDAO {
   public List selectAllArticlesList() throws Exception;

   public int insertNewArticle(Map articleMap) throws DataAccessException;

   public ArticleVO selectArticle(int articleNO) throws DataAccessException;

   public void updateArticle(Map articleMap) throws DataAccessException;

   public void deleteArticle(int articleNO) throws DataAccessException;
   
   public List selectImageFileNO(int articleNO) throws DataAccessException;


   

   
}