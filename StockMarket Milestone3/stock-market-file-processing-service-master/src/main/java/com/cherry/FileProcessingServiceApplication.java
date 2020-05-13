package com.cherry;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.web.bind.annotation.RestController;

import com.cherry.service.FileProcessingService;

@EnableScheduling
@EnableDiscoveryClient
@RestController
@SpringBootApplication(exclude = {SecurityAutoConfiguration.class })
public class FileProcessingServiceApplication {

	@Autowired
	FileProcessingService service;
	
	public static void main(String[] args) {
		SpringApplication.run(FileProcessingServiceApplication.class, args);
	}
    
    @Scheduled(fixedDelay = 2000)
    public void FileProcessJob() {
		service.processFile(null);
    }
}
