package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 药品信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-03-10 11:55:49
 */
@TableName("yaopinxinxi")
public class YaopinxinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public YaopinxinxiEntity() {
		
	}
	
	public YaopinxinxiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 药品编号
	 */
					
	private String yaopinbianhao;
	
	/**
	 * 药品名称
	 */
					
	private String yaopinmingcheng;
	
	/**
	 * 药品分类
	 */
					
	private String yaopinfenlei;
	
	/**
	 * 批次号
	 */
					
	private String picihao;
	
	/**
	 * 生产日期
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date shengchanriqi;
	
	/**
	 * 药品价格
	 */
					
	private Integer yaopinjiage;
	
	/**
	 * 药品说明
	 */
					
	private String yaopinshuoming;
	
	/**
	 * 生产单位
	 */
					
	private String shengchandanwei;
	
	/**
	 * 生产地址
	 */
					
	private String shengchandizhi;
	
	/**
	 * 药品图片
	 */
					
	private String yaopintupian;
	
	/**
	 * 有效期至
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date youxiaoqizhi;
	
	/**
	 * 价格
	 */
					
	private Float price;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：药品编号
	 */
	public void setYaopinbianhao(String yaopinbianhao) {
		this.yaopinbianhao = yaopinbianhao;
	}
	/**
	 * 获取：药品编号
	 */
	public String getYaopinbianhao() {
		return yaopinbianhao;
	}
	/**
	 * 设置：药品名称
	 */
	public void setYaopinmingcheng(String yaopinmingcheng) {
		this.yaopinmingcheng = yaopinmingcheng;
	}
	/**
	 * 获取：药品名称
	 */
	public String getYaopinmingcheng() {
		return yaopinmingcheng;
	}
	/**
	 * 设置：药品分类
	 */
	public void setYaopinfenlei(String yaopinfenlei) {
		this.yaopinfenlei = yaopinfenlei;
	}
	/**
	 * 获取：药品分类
	 */
	public String getYaopinfenlei() {
		return yaopinfenlei;
	}
	/**
	 * 设置：批次号
	 */
	public void setPicihao(String picihao) {
		this.picihao = picihao;
	}
	/**
	 * 获取：批次号
	 */
	public String getPicihao() {
		return picihao;
	}
	/**
	 * 设置：生产日期
	 */
	public void setShengchanriqi(Date shengchanriqi) {
		this.shengchanriqi = shengchanriqi;
	}
	/**
	 * 获取：生产日期
	 */
	public Date getShengchanriqi() {
		return shengchanriqi;
	}
	/**
	 * 设置：药品价格
	 */
	public void setYaopinjiage(Integer yaopinjiage) {
		this.yaopinjiage = yaopinjiage;
	}
	/**
	 * 获取：药品价格
	 */
	public Integer getYaopinjiage() {
		return yaopinjiage;
	}
	/**
	 * 设置：药品说明
	 */
	public void setYaopinshuoming(String yaopinshuoming) {
		this.yaopinshuoming = yaopinshuoming;
	}
	/**
	 * 获取：药品说明
	 */
	public String getYaopinshuoming() {
		return yaopinshuoming;
	}
	/**
	 * 设置：生产单位
	 */
	public void setShengchandanwei(String shengchandanwei) {
		this.shengchandanwei = shengchandanwei;
	}
	/**
	 * 获取：生产单位
	 */
	public String getShengchandanwei() {
		return shengchandanwei;
	}
	/**
	 * 设置：生产地址
	 */
	public void setShengchandizhi(String shengchandizhi) {
		this.shengchandizhi = shengchandizhi;
	}
	/**
	 * 获取：生产地址
	 */
	public String getShengchandizhi() {
		return shengchandizhi;
	}
	/**
	 * 设置：药品图片
	 */
	public void setYaopintupian(String yaopintupian) {
		this.yaopintupian = yaopintupian;
	}
	/**
	 * 获取：药品图片
	 */
	public String getYaopintupian() {
		return yaopintupian;
	}
	/**
	 * 设置：有效期至
	 */
	public void setYouxiaoqizhi(Date youxiaoqizhi) {
		this.youxiaoqizhi = youxiaoqizhi;
	}
	/**
	 * 获取：有效期至
	 */
	public Date getYouxiaoqizhi() {
		return youxiaoqizhi;
	}
	/**
	 * 设置：价格
	 */
	public void setPrice(Float price) {
		this.price = price;
	}
	/**
	 * 获取：价格
	 */
	public Float getPrice() {
		return price;
	}

}
