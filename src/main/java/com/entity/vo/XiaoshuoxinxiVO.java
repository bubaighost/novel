package com.entity.vo;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;


/**
 * 小说信息
 *
 */
public class XiaoshuoxinxiVO  implements Serializable {
	private static final long serialVersionUID = 1L;


	/**
	 * 小说名称
	 */

	private String xiaoshuomingcheng;

	/**
	 * 小说分类
	 */

	private String xiaoshuofenlei;

	/**
	 * 小说封面
	 */

	private String xiaoshuofengmian;

	/**
	 * 小说章节
	 */

	private String xiaoshuozhangjie;

	/**
	 * 小说简介
	 */

	private String xiaoshuojianjie;

	/**
	 * 小说内容
	 */

	private String xiaoshuoneirong;

	/**
	 * 评分
	 */

	private Float pingfen;

	/**
	 * 小说详情
	 */

	private String xiaoshuoxiangqing;

	/**
	 * 最近点击时间
	 */

	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date clicktime;

	/**
	 * 点击次数
	 */

	private Integer clicknum;


	/**
	 * 设置：小说名称
	 */

	public void setXiaoshuomingcheng(String xiaoshuomingcheng) {
		this.xiaoshuomingcheng = xiaoshuomingcheng;
	}

	/**
	 * 获取：小说名称
	 */
	public String getXiaoshuomingcheng() {
		return xiaoshuomingcheng;
	}


	/**
	 * 设置：小说分类
	 */

	public void setXiaoshuofenlei(String xiaoshuofenlei) {
		this.xiaoshuofenlei = xiaoshuofenlei;
	}

	/**
	 * 获取：小说分类
	 */
	public String getXiaoshuofenlei() {
		return xiaoshuofenlei;
	}


	/**
	 * 设置：小说封面
	 */

	public void setXiaoshuofengmian(String xiaoshuofengmian) {
		this.xiaoshuofengmian = xiaoshuofengmian;
	}

	/**
	 * 获取：小说封面
	 */
	public String getXiaoshuofengmian() {
		return xiaoshuofengmian;
	}


	/**
	 * 设置：小说章节
	 */

	public void setXiaoshuozhangjie(String xiaoshuozhangjie) {
		this.xiaoshuozhangjie = xiaoshuozhangjie;
	}

	/**
	 * 获取：小说章节
	 */
	public String getXiaoshuozhangjie() {
		return xiaoshuozhangjie;
	}


	/**
	 * 设置：小说简介
	 */

	public void setXiaoshuojianjie(String xiaoshuojianjie) {
		this.xiaoshuojianjie = xiaoshuojianjie;
	}

	/**
	 * 获取：小说简介
	 */
	public String getXiaoshuojianjie() {
		return xiaoshuojianjie;
	}



	/**
	 * 设置：小说内容
	 */

	public void setXiaoshuoneirong(String xiaoshuoneirong) {
		this.xiaoshuoneirong = xiaoshuoneirong;
	}

	/**
	 * 获取：小说内容
	 */
	public String getXiaoshuoneirong() {
		return xiaoshuoneirong;
	}


	/**
	 * 设置：评分
	 */

	public void setPingfen(Float pingfen) {
		this.pingfen = pingfen;
	}

	/**
	 * 获取：评分
	 */
	public Float getPingfen() {
		return pingfen;
	}


	/**
	 * 设置：小说详情
	 */

	public void setXiaoshuoxiangqing(String xiaoshuoxiangqing) {
		this.xiaoshuoxiangqing = xiaoshuoxiangqing;
	}

	/**
	 * 获取：小说详情
	 */
	public String getXiaoshuoxiangqing() {
		return xiaoshuoxiangqing;
	}


	/**
	 * 设置：最近点击时间
	 */

	public void setClicktime(Date clicktime) {
		this.clicktime = clicktime;
	}

	/**
	 * 获取：最近点击时间
	 */
	public Date getClicktime() {
		return clicktime;
	}


	/**
	 * 设置：点击次数
	 */

	public void setClicknum(Integer clicknum) {
		this.clicknum = clicknum;
	}

	/**
	 * 获取：点击次数
	 */
	public Integer getClicknum() {
		return clicknum;
	}

}
