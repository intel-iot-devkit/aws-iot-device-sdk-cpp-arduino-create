***SET UP AWS PORTAL***

1.  Go to AWS IOT console and register or sign in.

    <https://aws.amazon.com/console/>

2.  Search for IOT Services and find ‘AWS IoT’
    
    ![](https://github.com/intel-iot-devkit/aws-iot-device-sdk-cpp-arduino-create/blob/master/extras/Step1.png)
    

3.  Click get Started
    
    ![](https://github.com/intel-iot-devkit/aws-iot-device-sdk-cpp-arduino-create/blob/master/extras/Step2.png)
    
4.  Click on Registry &gt; Things &gt; Register a
    Thing
    
    
    ![](https://github.com/intel-iot-devkit/aws-iot-device-sdk-cpp-arduino-create/blob/master/extras/Step3.png)

    

5.  Enter a thing name e.g. ‘Thing-01’ and click ‘Create Thing’

    ![](https://github.com/intel-iot-devkit/aws-iot-device-sdk-cpp-arduino-create/blob/master/extras/Step4.png)
    
6.  The thing would be created. Click on it to see its details.

    ![](https://github.com/intel-iot-devkit/aws-iot-device-sdk-cpp-arduino-create/blob/master/extras/Step4Result.PNG)

7.  Click on ‘Interact’ and copy the HTTPS endpoint value. This value
    will be used in the sample.

    (![](https://github.com/intel-iot-devkit/aws-iot-device-sdk-cpp-arduino-create/blob/master/extras/Step11.png)
    
8.  Click the back arrow to get back to the main page and click on
    ‘Security’ &gt; ‘Policies’ . Then click ‘Create a Policy’

    ![](https://github.com/intel-iot-devkit/aws-iot-device-sdk-cpp-arduino-create/blob/master/extras/Step8.png)

9.  Give a Name e.g. ‘Policy-01’. Add a statement with Action ‘iot:\*’, Resource ARN ‘\*’ and Effect ‘Allow’. Click on ‘CREATE’.

    ![](https://github.com/intel-iot-devkit/aws-iot-device-sdk-cpp-arduino-create/blob/master/extras/Step9.png)

    
***ENTER DETAILS IN SAMPLE***

1.  Enter the endpoint value, the thing name and the client ID in the
    sample file’s \#define. The client ID and thing name are same.
    Update the sample pub-sub topic if you want.

    ![](https://github.com/intel-iot-devkit/aws-iot-device-sdk-cpp-arduino-create/blob/master/extras/SampleStep1.png)

    2\. Switch to the SECRET tab. Open the files downloaded as text file and
    copy the string to the entries in the secret tab.

    SECRET\_ROOT\_CA : Content of file “VeriSign-Class
    3-Public-Primary-Certification-Authority-G5.pem”

    SECRET\_CLIENT\_CERT : Content of file ending in
    \*-certificate.pem.crt

    SECRET\_CLIENT\_PRIVATE\_KEY : Content of file ending in
    \*-private.pem.key.
    ![](https://github.com/intel-iot-devkit/aws-iot-device-sdk-cpp-arduino-create/blob/master/extras/SampleStep2.png)
    Click ‘Save’ and Verify and upload the sample to device.

    Note : To be more secure, it is recommended that the root
    certificate, cient certificate and client private key be put on the
    device directly and read from there by the sample. To do that,
    transfer these files to your device, make note of the absolute file
    name and provide that in the values in the secret path. In the
    DEFAULTSAMPLECONFIG value, set ‘load\_crts\_as\_string’ to false.
    This will load the certificates from those file paths instead of as
    strings.

***MONITOR THE TOPIC IN AWS IOT DASHBOARD***

1.  A graphical representation of device connections and messages can be
    seen on the ![dashboard](https://github.com/intel-iot-devkit/aws-iot-device-sdk-cpp-arduino-create/blob/master/extras/Dashboard.png

2.  The sample’s published messages can be tested by received by
    subscribing to the topic through the TEST widget.

    Click on ‘TEST’ and enter the name of the thing that was created
    earlier e.g. ‘thing-01’. Client ID and thing name are same. Click
    ‘Connect’.
    ![](https://github.com/intel-iot-devkit/aws-iot-device-sdk-cpp-arduino-create/blob/master/extras/MonitorStep1.png)
    
    Enter the topic that the sample is configured to. This is the value
    of SDK\_SAMPLE\_TOPIC in the program. Click ‘Subscribe to Topic’
    ![](https://github.com/intel-iot-devkit/aws-iot-device-sdk-cpp-arduino-create/blob/master/extras/MonitorStep2.png)
    
    When the sample runs, you will see the published messages as:

    ![](https://github.com/intel-iot-devkit/aws-iot-device-sdk-cpp-arduino-create/blob/master/extras/MonitorStep3.png)
