package com.entity.view;

import com.entity.XiaoshuoxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;


/**
 * 小说信息
 *
 */
@TableName("xiaoshuoxinxi")
public class XiaoshuoxinxiView  extends XiaoshuoxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public XiaoshuoxinxiView(){
	}

 	public XiaoshuoxinxiView(XiaoshuoxinxiEntity xiaoshuoxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, xiaoshuoxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
