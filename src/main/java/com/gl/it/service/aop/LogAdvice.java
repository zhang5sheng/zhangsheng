package com.gl.it.service.aop;

import java.util.Date;

import org.aopalliance.intercept.MethodInterceptor;
import org.aopalliance.intercept.MethodInvocation;

public class LogAdvice implements MethodInterceptor {

	@Override
	public Object invoke(MethodInvocation inv) throws Throwable {
		if (!inv.getMethod().getName().startsWith("get") && !inv.getMethod().getName().startsWith("set"))
			System.out.println("��־������" + inv.getMethod().getName() + new Date().toLocaleString());

		Object r = inv.proceed();// ������ȥ���ñ����صķ���

		if (!inv.getMethod().getName().startsWith("get") && !inv.getMethod().getName().startsWith("set"))
			System.out.println("��־���뿪" + inv.getMethod().getName() + new Date().toLocaleString());
		return r;
	}

}
