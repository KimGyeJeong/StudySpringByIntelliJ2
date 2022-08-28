package com.aop.test;

import lombok.extern.log4j.Log4j;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;
import org.springframework.util.StopWatch;

@Component
@Log4j
@Aspect
public class AnnotationAdvice {

    @Around("execution(* com.upload.service.UploadService*.*(..))")
    public Object around(ProceedingJoinPoint j) throws Throwable{
        //before
        StopWatch stopWatch = new StopWatch();
        stopWatch.start();
        log.info("===================================before=========================");

        Object obj = j.proceed();
        //after
        stopWatch.stop();
        log.info("===================================after=========================");
        log.info("---------- 걸린시간 : "+ stopWatch.getLastTaskTimeMillis()+"ms");
        return obj;
    }

    @Before("execution(* com.upload.service.UploadService*.*(..))")
    public void beforeTest(){
        log.info("=================before");
    }

}
