package com.cm.takemeal.chef.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

import com.cm.takemeal.member.model.vo.Member;
import com.cm.takemeal.recipe.model.vo.Recipe;
import com.cm.takemeal.chef.model.vo.Chef;


@Repository("chefDao")
public interface ChefDao {
    
    List<Chef> getContentList(Map<String, Object> paramMap);

	int getContentCnt(Map<String, Object> paramMap);
	
	Chef getContentView(Map<String, Object> paramMap);

	int getRecipeContentCnt(Map<String, Object> paramMap);

	List<String> getRecipeContentList(Map<String, Object> paramMap);

	List<String> getFollow(Map<String, Object> paramMap);

	int getFollowCnt(Map<String, Object> paramMap);

	int deleteFollow(Map<String, Object> paramMap);

	int saveFollow(Map<String, Object> paramMap);
    
}
