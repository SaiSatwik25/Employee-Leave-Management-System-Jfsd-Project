package com.klef.jfsd.repository;

import java.io.ByteArrayOutputStream;
import java.util.Base64;

import javax.imageio.ImageIO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.klef.jfsd.model.Admin;

import cn.apiclub.captcha.Captcha;
import cn.apiclub.captcha.backgrounds.GradiatedBackgroundProducer;
import cn.apiclub.captcha.noise.CurvedLineNoiseProducer;
import cn.apiclub.captcha.text.producer.DefaultTextProducer;
import cn.apiclub.captcha.text.renderer.DefaultWordRenderer;



@Repository
public interface AdminRepository extends JpaRepository<Admin, Integer>
{
	@Query("select a from Admin a where username=?1 and password=?2")
	public Admin checkadminlogin(String auname, String apwd);
	
	
	@Query("update Employee set status=?1 where empid=?2")
	@Modifying
	@Transactional
	public int  updatestatus(boolean status, int eid);
	

	@Query("update Manager set status=?1 where managerid=?2")
	@Modifying
	@Transactional
	public int  updatemanagerstatus(boolean status, int managerid);
	
}
