package com.niit.FashionBazarBackend;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

/**
 * Hello world!
 *
 */
public class App 
{

	public static void main( String[] args )
    {
 AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
 context.scan("com.niit");
 context.refresh();
 
		System.out.println( "Hello World!" );
    }
}
