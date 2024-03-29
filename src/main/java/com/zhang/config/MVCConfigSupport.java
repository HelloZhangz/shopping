package com.zhang.config;

import com.alibaba.fastjson.support.config.FastJsonConfig;
import com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.http.MediaType;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;

import java.util.ArrayList;
import java.util.List;

/**
 * SpringMVC相关的配置(拦截器)
 */
@Configuration
@EnableAspectJAutoProxy
public class MVCConfigSupport extends WebMvcConfigurationSupport {

    @Value("${imgServer.url}")
    private String imgServerMapping;  //映射地址
    @Value("${imgServer.filePath}")
    private String imgServerFilePath; //绝地目录


    /**
     * fast json格式转换
     */
    @Override
    public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
        super.configureMessageConverters(converters);
        FastJsonHttpMessageConverter fastConverter = new FastJsonHttpMessageConverter();
        //自定义格式
        FastJsonConfig fastJsonConfig = new FastJsonConfig();
        fastJsonConfig.setDateFormat("yyyy-MM-dd HH:mm:ss");
        fastConverter.setFastJsonConfig(fastJsonConfig);

        //解决乱码
        List<MediaType> supportedMediaTypes=new ArrayList<>();
        supportedMediaTypes.add(MediaType.APPLICATION_JSON);
        fastConverter.setSupportedMediaTypes(supportedMediaTypes);

        converters.add(fastConverter);
    }

    /**
     *放行静态资源文件
     */
    @Override
    protected void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/static/**").addResourceLocations("classpath:/static/");

        registry.addResourceHandler("/webjars/**")
                .addResourceLocations("classpath:/META-INF/resources/webjars/");

        //添加图片虚拟服务器            /imgServer/                                                  file:F:/imgserver/
        registry.addResourceHandler(imgServerMapping+"**").addResourceLocations("file:"+imgServerFilePath);
        super.addResourceHandlers(registry);
    }

    /**
     * 自定义拦截器
     */
    @Override
    protected void addInterceptors(InterceptorRegistry registry) {
        super.addInterceptors(registry);
    }


    /**
     * 支持跨域访问
     */
    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/api/**")
                //允许任何域名
                .allowedOrigins("*")
                //允许访问请求方式
                .allowedMethods("GET", "POST", "PUT", "OPTIONS", "DELETE", "PATCH")
                //允许携带cookie
                .allowCredentials(true).
                // 生存时间秒为位
                maxAge(3600);
    }


}
