## Result
Hello Guys i just took a extra time to download the SDK and test our code.

Changes: added:
1. Added Dependency Injection
2. Fixed the Price Regrex i was using.

Scenarios:
### 1. Main Screen
![main_screen.png](files%2Fmain_screen.png)

### 2. Checkers
![checkers_test.png](files%2Fcheckers_test.png)

### 3. Sending Data
![send_data.png](files%2Fsend_data.png)

### Challenge Description
You are tasked with implementing a simple ad posting flow for a seller.

The application should allow a user to input an ad's name, price, and description,
 validate these inputs, and then simulate sending this data to a server via a fake API request.

User Input:
   - Name: The name of the ad (must be a non-empty string).
   - Price: The price of the ad (must be a number greater than 0, and should not accept any non-numeric characters).
   - Description: A description for the ad (must be a non-empty string).

Input Validation:
   - Ensure the name and description are not empty.
   - Ensure the price is a positive number and contains only numeric input.

Fake API Request:
   - Simulate an API request to "save" the ad using a function.
