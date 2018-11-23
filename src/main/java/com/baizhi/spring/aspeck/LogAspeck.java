package com.baizhi.spring.aspeck;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.context.annotation.Configuration;

@Configuration
@Aspect
public class LogAspeck {
    //切入点
    @Pointcut(value = "execution(* com.baizhi.spring.service.*.*(..))")
    public void pp(){

    }
    //通知
    @Before(value = "pp()")
    public void testbefore(){
        System.out.println("这是前通知");
    }
    @After(value = "pp()")
    public void  testafter(){
        System.out.println("这是后通知");
    }

    @Around(value = "pp()")
    public Object testAround(ProceedingJoinPoint proceedingJoinPoint){
      Object procd = null;
      try{
          System.out.println("前置+++++");
          procd = proceedingJoinPoint.proceed();
          System.out.println("后置+++++");
      }catch (Throwable throwable){
          throwable.printStackTrace();
      }
      return procd;
    }



}
