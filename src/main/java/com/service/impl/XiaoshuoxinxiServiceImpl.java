package com.service.impl;

import com.entity.vo.EchartsVO;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.Map;
import java.util.List;
import java.util.stream.Collectors;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.XiaoshuoxinxiDao;
import com.entity.XiaoshuoxinxiEntity;
import com.service.XiaoshuoxinxiService;
import com.entity.vo.XiaoshuoxinxiVO;
import com.entity.view.XiaoshuoxinxiView;

@Service("xiaoshuoxinxiService")
public class XiaoshuoxinxiServiceImpl extends ServiceImpl<XiaoshuoxinxiDao, XiaoshuoxinxiEntity> implements XiaoshuoxinxiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XiaoshuoxinxiEntity> page = this.selectPage(
                new Query<XiaoshuoxinxiEntity>(params).getPage(),
                new EntityWrapper<XiaoshuoxinxiEntity>()
        );
        return new PageUtils(page);
    }

    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XiaoshuoxinxiEntity> wrapper) {
		  Page<XiaoshuoxinxiView> page =new Query<XiaoshuoxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}

	@Override
	public List<Long> echarts(Long id) {
		List<EchartsVO> echarts = baseMapper.echarts(id);
		Map<Long,Long> map = echarts.stream().collect(Collectors.toMap(EchartsVO::getPingfen, EchartsVO::getCount));
		List<Long> result =null;
		if(map != null){
			result = Arrays.asList(
				map.getOrDefault(1L,0L),
				map.getOrDefault(2L,0L),
				map.getOrDefault(3L,0L),
				map.getOrDefault(4L,0L),
				map.getOrDefault(5L,0L)
			);
		}else {
			result = Arrays.asList(0L,0L,0L,0L,0L);
		}
		return result;
	}

	@Override
	public List<XiaoshuoxinxiVO> selectListVO(Wrapper<XiaoshuoxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}

	@Override
	public XiaoshuoxinxiVO selectVO(Wrapper<XiaoshuoxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}

	@Override
	public List<XiaoshuoxinxiView> selectListView(Wrapper<XiaoshuoxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XiaoshuoxinxiView selectView(Wrapper<XiaoshuoxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
