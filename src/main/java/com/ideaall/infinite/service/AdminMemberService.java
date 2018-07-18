package com.ideaall.infinite.service;

import java.lang.reflect.Member;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ideaall.infinite.dao.ShareDao;
import com.ideaall.infinite.utill.CommonUtil;
import com.ideaall.infinite.utill.Pagination;

@Service
public class AdminMemberService {

	@Autowired
	private ShareDao dao;

	@Autowired
	CommonUtil common;

	public Object getList(Object dataMap) {
		String sqlMapId = "member.list";
		List resultList = (List) dao.getList(sqlMapId, dataMap);

		for (int i = 0; i < resultList.size(); i++) {
			String member_seq = (String) ((Map<Object, Object>) resultList.get(i)).get("MEMBER_SEQ");
			((Map<Object, Object>) dataMap).put("MEMBER_SEQ", member_seq);

			sqlMapId = "member.abilitylist";
			List abilitylist = (List) dao.getList(sqlMapId, dataMap);

			((Map<Object, Object>) resultList.get(i)).put("ABILITY_NAMES", abilitylist);
			/*
			 * for (int j = 0; j < abilitylist.size(); j++) { ((Map<Object, Object>)
			 * resultList.get(i)).put("ABILITY_NAMES",
			 * ((Map<Object,Object>)abilitylist.get(j)).get("ABILITY_NAME")); }
			 */
		}

		/*
		 * Iterator itr = result.iterator(); sqlMapId = "member.abilitylist"; List
		 * result2 = (List) dao.getList(sqlMapId, dataMap); while (itr.hasNext()) {
		 * result2.add(dao.getList(sqlMapId, itr.hasNext())); }
		 */
		// Map resultMap = new HashMap<String, Object>();

		/* resultMap.put("List",result); */
		// result.put("ability_list", result2);

		return resultList;
	}

	public Object idcheck(Object dataMap) {
		String sqlMapId = "member.check";

		Object resultObject = dao.getObject(sqlMapId, dataMap);

		return resultObject;
	}

	public Object insert(Object dataMap) {
		String sqlMapId = "member.insert";

		String uuid = common.getUniqueSequence();
		((Map<Object, Object>) dataMap).put("MEMBER_SEQ", uuid);
		Object resultObject = dao.getObject(sqlMapId, dataMap);

		return resultObject;
	}

	public Object update(Object dataMap) {
		String sqlMapId = "member.update";

		Object resultObject = dao.getObject(sqlMapId, dataMap);

		return resultObject;
	}
	
	public Object adminupdate(Object dataMap) {
		String sqlMapId = "member.adminupdate";

		Object resultObject = dao.getObject(sqlMapId, dataMap);

		return resultObject;
	}

	public Object getObject1(Object dataMap) {
		String sqlMapId = "member.read1";
		Object resultObject = dao.getObject(sqlMapId, dataMap);

		return resultObject;
	}

	public Object getObject2(Object dataMap) {
		String sqlMapId = "member.read2";
		Object resultObject = dao.getList(sqlMapId, dataMap);

		return resultObject;
	}
	
	public Object getmemberADDR(Object dataMap) {
		String sqlMapId = "member.getmemberADDR";
		Object resultObject = dao.getObject(sqlMapId, dataMap);

		return resultObject;
	}
	
	public Object getListPagination(Object dataMap) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		String sqlMapId = "member.totalcount";
		int totalCount = (int) dao.getObject(sqlMapId, dataMap);
		int currentPage;

		if ((((Map<String, Object>) dataMap).get("curPage")) == null) {
			currentPage = 1;
		} else {
			currentPage = Integer.valueOf((String) ((Map<String, Object>) dataMap).get("curPage"));
		}

		Pagination pagination = new Pagination(totalCount, currentPage);
		resultMap.put("pagination", pagination);
		sqlMapId = "member.listpagination";
		((Map<String, Object>) dataMap).put("pagination", pagination);
		System.out.println(((Map<String, Object>) dataMap).get("pagination"));
		Object resultList = dao.getList(sqlMapId, dataMap);

		resultMap.put("resultList", resultList);
		return resultMap;
	}

	public Object getAbilityList(Object dataMap) {
		String sqlMapId = "member.ability_list";
		
		List resultList = (List) dao.getList(sqlMapId, dataMap);
	/*	Map map1 = new HashMap();
		map1.put("MEMBER_SEQ", ((Map<String, Object>) dataMap).get("MEMBER_SEQ"));
		resultList.add(map1);*/
		return resultList;
	}

	public void insertAbility(Object dataMap) {

		String sqlMapId = "member.ability_insert";
		dao.saveObject(sqlMapId, dataMap);
	}
	
	

	public Object saveObject(Map<Object, Object> dataMap) {
		// String uniqueSequence = (String) dataMap.get("MEMBER_SEQ");
		//
		// if("".equals(uniqueSequence)){
		// uniqueSequence = commonUtil.getUniqueSequence();
		// }
		// dataMap.put("MEMBER_SEQ", uniqueSequence);
		// dataMap.put("REGISTER_SEQ", "UUID-1111-1111111");
		// dataMap.put("MODIFIER_SEQ", "UUID-1111-1111111");
		//
		//
		// String sqlMapId = "member.merge";
		// Object resultKey = dao.saveObject(sqlMapId, dataMap);
		//
		// sqlMapId="oracle_authorityRmember.insert";
		// resultKey = dao.saveObject(sqlMapId, dataMap);
		//
		// sqlMapId="attachfile.insert";
		// resultKey = dao.saveObject(sqlMapId, dataMap);
		//
		// sqlMapId = "member.read";
		// Object resultObject = dao.getObject(sqlMapId, dataMap);
		//
		// return resultObject;
		return 0;
	}

	public void memberdelete(Object dataMap) {
		String sqlMapId="member.delete";
		dao.deleteObject(sqlMapId, dataMap);
		
	}

	public Object abilitycheck(Map<String, Object> paramMap) {

		String sqlMapId="member.hasAbility";
		Object resultObject = dao.getList(sqlMapId, paramMap);
		return resultObject;
	}
}
