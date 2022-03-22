Create a Read-Only Fiori APP via RAP Model
Requirement: Create a Read-Only Fiori APP via RAP Model.
Create 2 custom tables:
 ![image](https://user-images.githubusercontent.com/54598365/159570653-26aba03d-17db-49a9-80f4-4fc4267d94bb.png)
![image](https://user-images.githubusercontent.com/54598365/159570663-ed4fd630-b979-4c45-9ace-951498159cc1.png)

 
Create a new class to insert records in these newly created tables:
 
 ![image](https://user-images.githubusercontent.com/54598365/159570688-189571cf-cfdc-4c70-a5e7-5cef3737e6d3.png)
![image](https://user-images.githubusercontent.com/54598365/159570701-b5e81112-3901-4571-9dbb-1a4495c1aef6.png)


Create Interface views for both tables:
![image](https://user-images.githubusercontent.com/54598365/159570713-a0a2054e-b96e-4434-8853-04137a3979e6.png)
![image](https://user-images.githubusercontent.com/54598365/159570724-81c5ea18-ee36-4f07-b869-ff712030014d.png)
 
 
To understand Parent and composition in CDS, refer below screenshot:
 ![image](https://user-images.githubusercontent.com/54598365/159570744-768587b3-dda1-41cc-bc2d-1b83ef7a3840.png)

Create Consumption views on top of these Interface views:
 ![image](https://user-images.githubusercontent.com/54598365/159570760-96eb110b-4f32-4034-85d1-40c120912ca5.png)

Search option enablement
  
![image](https://user-images.githubusercontent.com/54598365/159570779-d9a18ce6-c5be-4688-963b-8d7dd48b2f84.png)
![image](https://user-images.githubusercontent.com/54598365/159570795-86a573b3-8bf9-4de8-8693-3ab01c70e4d5.png)
![image](https://user-images.githubusercontent.com/54598365/159570826-e2a4ad26-d372-4435-8415-66aff3c9a678.png)

 
TO understand it better:
 ![image](https://user-images.githubusercontent.com/54598365/159570842-dd318464-4b1b-44d7-86f5-e79d3c2c1421.png)


Now, Define Metadata file for both Travel and bookings:
 ![image](https://user-images.githubusercontent.com/54598365/159570868-ffe98558-4738-4f35-921f-1ecf2fcfb35b.png)
![image](https://user-images.githubusercontent.com/54598365/159570891-3c517ca9-143c-460b-958d-dc1ba8798fb3.png)
![image](https://user-images.githubusercontent.com/54598365/159570912-69104709-2968-4aba-8e4f-4b8b85d6d5d3.png)

 

 
Now create Service definition:
 
![image](https://user-images.githubusercontent.com/54598365/159570936-0029d1f0-85d0-4115-bc1c-aa24cd94d1c1.png)

Create Service binding on top of this:
 ![image](https://user-images.githubusercontent.com/54598365/159570951-4ce3d18d-39fa-4f77-900e-72717c8616f8.png)


Access control:
Create New data element:
 ![image](https://user-images.githubusercontent.com/54598365/159570962-0487f446-557a-416c-9293-31db20f196e0.png)

Create new authorization field:
 ![image](https://user-images.githubusercontent.com/54598365/159570977-ec43f3b8-8533-4039-9cd7-b6b65cb41c86.png)

Click on highlighted link and create authorization object:
 ![image](https://user-images.githubusercontent.com/54598365/159571005-74e72133-8e39-4122-b400-a97153c6737d.png)


Now, access control should be defined separately for each CDS view:
 
 
![image](https://user-images.githubusercontent.com/54598365/159571022-8233068e-d82f-42c5-b630-998d41d65f31.png)

![image](https://user-images.githubusercontent.com/54598365/159571032-e33798ce-1db2-4ed9-a2f1-ce242fb4a6f2.png)


