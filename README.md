# docker-geb
WIP Docker image for Geb (www.gebish.org)

Currently failing with:

```
19:50:37.453 [DEBUG] [TestEventLogger] 
19:50:37.462 [DEBUG] [TestEventLogger] GebishOrgSpec > can get to the current Book of Geb STARTED
19:51:29.038 [DEBUG] [TestEventLogger] 
19:51:29.055 [DEBUG] [TestEventLogger] GebishOrgSpec > can get to the current Book of Geb STANDARD_ERROR
19:51:29.075 [DEBUG] [TestEventLogger]     org.openqa.selenium.firefox.NotConnectedException: Unable to connect to host 127.0.0.1 on port 7055 after 45000 ms. Firefox console output:
19:51:29.185 [DEBUG] [TestEventLogger] 
19:51:29.220 [DEBUG] [TestEventLogger]     (process:52): GLib-CRITICAL **: g_slice_set_config: assertion 'sys_page_size == 0' failed
19:51:29.287 [DEBUG] [TestEventLogger]     Error: cannot open display: :0
19:51:29.378 [DEBUG] [TestEventLogger] 
19:51:29.440 [DEBUG] [TestEventLogger]     (process:60): GLib-CRITICAL **: g_slice_set_config: assertion 'sys_page_size == 0' failed
19:51:29.483 [DEBUG] [TestEventLogger]     Error: cannot open display: :0
19:51:29.510 [DEBUG] [TestEventLogger] 
19:51:29.548 [DEBUG] [TestEventLogger]     	at org.openqa.selenium.firefox.internal.NewProfileExtensionConnection.start(NewProfileExtensionConnection.java:118)
19:51:29.608 [DEBUG] [TestEventLogger]     	at org.openqa.selenium.firefox.FirefoxDriver.startClient(FirefoxDriver.java:246)
19:51:29.657 [DEBUG] [TestEventLogger]     	at org.openqa.selenium.remote.RemoteWebDriver.<init>(RemoteWebDriver.java:114)
19:51:29.695 [DEBUG] [TestEventLogger]     	at org.openqa.selenium.firefox.FirefoxDriver.<init>(FirefoxDriver.java:191)
```

Please let me know if you have suggestions on fix.  I suspect some kind of incompatability with Firefox and the Selenium version being used.
