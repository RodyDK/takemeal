package com.cm.takemeal.recipe.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

import com.cm.takemeal.member.model.vo.Member;
import com.cm.takemeal.recipe.exception.RecipeFailException;
import com.cm.takemeal.recipe.model.vo.Recipe;


@Repository("recipeDao")
public interface RecipeDao {
    
    List<Recipe> getContentList(Map<String, Object> paramMap);

	int getContentCnt(Map<String, Object> paramMap);
	int getLikeCnt(Map<String, Object> paramMap);
	
	List<String> getLike(Map<String, Object> paramMap);
	
	Recipe getContentView(Map<String, Object> paramMap);


	void setRecipe(Map<String, Object> paramMap);

	int deleteLike(Map<String, Object> paramMap);
	int saveLike(Map<String, Object> paramMap);

	int downLike(Map<String, Object> paramMap);
	int upLike(Map<String, Object> paramMap);

	
}
