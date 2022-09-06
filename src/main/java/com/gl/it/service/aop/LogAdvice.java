package com.gl.it.service.aop;

import java.util.Date;

import org.aopalliance.intercept.MethodInterceptor;
import org.aopalliance.intercept.MethodInvocation;

public class LogAdvice implements MethodInterceptor {

	@Override
	public Object invoke(MethodInvocation inv) throws Throwable {
		if (!inv.getMethod().getName().startsWith("get") && !inv.getMethod().getName().startsWith("set"))
			System.out.println("日志：进入" + inv.getMethod().getName() + new Date().toLocaleString());

		Object r = inv.proceed();// 放他过去调用被拦截的方法

		if (!inv.getMethod().getName().startsWith("get") && !inv.getMethod().getName().startsWith("set"))
			System.out.println("日志：离开" + inv.getMethod().getName() + new Date().toLocaleString());
		return r;
	}

}
