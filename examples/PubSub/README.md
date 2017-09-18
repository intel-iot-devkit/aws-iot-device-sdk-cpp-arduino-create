***SET UP AWS PORTAL***

1.  Go to AWS IOT console and register or sign in.

    <https://aws.amazon.com/console/>

2.  Search for IOT Services and find ‘AWS IoT’

    ![](media/image1.png){width="6.5in" height="4.635416666666667in"}

3.  Click get Started![](media/image2.png){width="6.5in"
    height="4.160416666666666in"}

4.  Click on Registry &gt; Things &gt; Register a
    Thing![](media/image3.png){width="6.5in"
    height="3.0097222222222224in"}

5.  Enter a thing name e.g. ‘Thing-01’ and click ‘Create Thing’

    ![](media/image4.png){width="6.5in" height="2.254166666666667in"}

6.  The thing would be created. Click on it to see its details.

![](media/image5.PNG){width="5.575483377077865in"
height="3.9586767279090114in"}

1.  Click on ‘Interact’ and copy the HTTPS endpoint value. This value
    will be used in the sample.

    ![](media/image6.png){width="6.5in" height="5.425in"}

2.  Click the back arrow to get back to the main page and click on
    ‘Security’ &gt; ‘Policies’ . Then click ‘Create a Policy’

    ![](media/image7.png){width="6.5in" height="2.964583333333333in"}

3.  Give a Name e.g. ‘Policy-01’. Add a statement with Action ‘iot:\*’,
    Resource ARN ‘\*’ and Effect ‘Allow’. Click on ‘CREATE’.

    ![](media/image8.png){width="6.5in" height="4.852083333333334in"}

4.  Go to ‘Security’ &gt; ‘Certificates’ and click on ‘Create
    Certificate’

    ![](media/image9.png){width="6.5in" height="3.0493055555555557in"}

5.  Click ‘Create Certificate’ again.

    ![](media/image10.png){width="6.5in" height="3.2111111111111112in"}

6.  Download the four files and click ‘Activate’. Then click ‘Attach a
    Policy’

> ![](media/image11.png){width="6.5in" height="4.448611111111111in"}

1.  Select the policy created in previous steps. Click ‘Done’.

    ![](media/image12.png){width="6.5in" height="3.7256944444444446in"}

***ENTER DETAILS IN SAMPLE***

1.  Enter the endpoint value, the thing name and the client ID in the
    sample file’s \#define. The client ID and thing name are same.
    Update the sample pub-sub topic if you want.

    ![](media/image13.png){width="6.5in" height="4.527083333333334in"}

    2\. Switch to the SECRET tab. Open the files downloaded as text file and
    copy the string to the entries in the secret tab.

    SECRET\_ROOT\_CA : Content of file “VeriSign-Class
    3-Public-Primary-Certification-Authority-G5.pem”

    SECRET\_CLIENT\_CERT : Content of file ending in
    \*-certificate.pem.crt

    SECRET\_CLIENT\_PRIVATE\_KEY : Content of file ending in
    \*-private.pem.key.

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
    seen on the dashboard.

    ![](media/image14.png){width="6.5in" height="3.432638888888889in"}

2.  The sample’s published messages can be tested by received by
    subscribing to the topic through the TEST widget.

    Click on ‘TEST’ and enter the name of the thing that was created
    earlier e.g. ‘thing-01’. Client ID and thing name are same. Click
    ‘Connect’.![](media/image15.png){width="6.5in"
    height="1.9958333333333333in"}

    Enter the topic that the sample is configured to. This is the value
    of SDK\_SAMPLE\_TOPIC in the program. Click ‘Subscribe to Topic’

    ![](media/image16.png){width="6.5in" height="2.0493055555555557in"}

    When the sample runs, you will see the published messages as:

    ![](media/image17.png){width="6.5in" height="2.5597222222222222in"}
