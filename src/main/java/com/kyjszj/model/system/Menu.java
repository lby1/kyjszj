/**
 * @Title:Menu.java
 * @Package:com.kyjszj.model.system
 * @Description:TODO
 * @author:luckyboyguo@126.com
 * @date:2016年1月8日{time}
 * @version:v1.0
 */
package com.kyjszj.model.system;

import java.util.List;

/**
 * @ClassName:Menu
 * @Description:菜单
 * @author luckyboyguo@126.com
 * @date:2016年1月8日上午11:14:20
 */
public class Menu {
	private String MENU_ID; //菜单ID
	private String MENU_NAME;//菜单名字
	private String MENU_URL;//菜单url
	private String PARENT_ID;//上级菜单ID
	private String MENU_ORDER;//菜单顺序
	private String MENU_ICON;//菜单图标
	private String MENU_TYPE;//菜单类型
	private String target;//目标
	
	private Menu parentMenu;//上级菜单
	private List<Menu> subMenu;//子菜单
	
	private boolean hasMenu = false;
	
	public String getMENU_ID() {
		return MENU_ID;
	}
	public void setMENU_ID(String mENU_ID) {
		MENU_ID = mENU_ID;
	}
	public String getMENU_NAME() {
		return MENU_NAME;
	}
	public void setMENU_NAME(String mENU_NAME) {
		MENU_NAME = mENU_NAME;
	}
	public String getMENU_URL() {
		return MENU_URL;
	}
	public void setMENU_URL(String mENU_URL) {
		MENU_URL = mENU_URL;
	}
	public String getPARENT_ID() {
		return PARENT_ID;
	}
	public void setPARENT_ID(String pARENT_ID) {
		PARENT_ID = pARENT_ID;
	}
	public String getMENU_ORDER() {
		return MENU_ORDER;
	}
	public void setMENU_ORDER(String mENU_ORDER) {
		MENU_ORDER = mENU_ORDER;
	}
	public Menu getParentMenu() {
		return parentMenu;
	}
	public void setParentMenu(Menu parentMenu) {
		this.parentMenu = parentMenu;
	}
	public List<Menu> getSubMenu() {
		return subMenu;
	}
	public void setSubMenu(List<Menu> subMenu) {
		this.subMenu = subMenu;
	}
	public boolean isHasMenu() {
		return hasMenu;
	}
	public void setHasMenu(boolean hasMenu) {
		this.hasMenu = hasMenu;
	}
	public String getTarget() {
		return target;
	}
	public void setTarget(String target) {
		this.target = target;
	}
	public String getMENU_ICON() {
		return MENU_ICON;
	}
	public void setMENU_ICON(String mENU_ICON) {
		MENU_ICON = mENU_ICON;
	}
	public String getMENU_TYPE() {
		return MENU_TYPE;
	}
	public void setMENU_TYPE(String mENU_TYPE) {
		MENU_TYPE = mENU_TYPE;
	}

}
