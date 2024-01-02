package com.automationsexercise.browserfactory;


import com.automationsexercise.propertyreader.PropertyReader;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.PageFactory;

import java.time.Duration;
import java.util.ArrayList;

public class ManageBrowser {

    private static final Logger log = LogManager.getLogger(ManageBrowser.class.getName());

    public static WebDriver driver;
    public String baseUrl = PropertyReader.getInstance().getProperty("baseUrl");
    public String secondsInString = PropertyReader.getInstance().getProperty("implicitlyWait");
    public long seconds = Long.parseLong(secondsInString);

    public ManageBrowser(){
        PageFactory.initElements(driver,this);
        PropertyConfigurator.configure(System.getProperty("user.dir")+"/src/test/resources/propertiesfile/log4j2.properties");
    }

    public void selectBrowser(String browser){
        if(browser.equalsIgnoreCase("chrome")){

            //Load adblock extension
            ChromeOptions options = new ChromeOptions();
            options.addArguments("load-extension=C:\\Users\\hansa\\AppData\\Local\\Google\\Chrome\\User Data\\Default\\Extensions\\gighmmpiobklfepjocnamgkkbiglidom\\5.16.0_0");
            driver = new ChromeDriver(options);


            try
            {
                //Wait for extension to download
                Thread.sleep(9000);
                //navigate to extension tab and close it
                ArrayList<String> tabs = new ArrayList<String>(driver.getWindowHandles());
                driver.switchTo().window(tabs.get(1));
                driver.close();
                driver.switchTo().window(tabs.get(0));


            } catch (Exception e){
                System.out.println("paused");
            }
        } else if(browser.equalsIgnoreCase("firefox")){
            driver = new FirefoxDriver();
        }else {
//            log.info("Wrong browser name");
        }
        driver.get(baseUrl);
        driver.manage().window().maximize();
        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(seconds));
    }

    public void closeBrowser(){
        if(driver != null){
            driver.quit();
        }
    }
}
