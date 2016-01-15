package com.kyjszj.controller.base;

import org.smartFramework.ri.LicenseUtils;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;
import org.springframework.web.context.ServletConfigAware;

import javax.servlet.ServletConfig;
import java.io.File;

@Component
@Lazy(false)
public class RIManagerContext implements ServletConfigAware {

	@Override
	public void setServletConfig(ServletConfig servletConfig) {
		String webRoot=servletConfig.getServletContext().getRealPath("");
		 File licenseFile = new File(webRoot+"/WEB-INF/kyjszj/kyjszj.dat");
	        try {
	            if (!LicenseUtils.checkLicense(licenseFile)){
	                System.out.println("授权已过期，请联系管理员!QQ：263235040");
	                System.exit(0);
	            }else {
					System.out.println("已授权！！！谢谢使用");
				}
	        } catch (Exception e) {
	            e.printStackTrace();
	            System.exit(0);
	        }
		
	}

	

}
