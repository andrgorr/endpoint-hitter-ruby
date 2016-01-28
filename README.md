# endpoint-hitter-ruby [![Build Status](https://travis-ci.org/javipepe/endpoint-hitter-ruby.svg?branch=master)](https://travis-ci.org/javipepe/endpoint-hitter-ruby)
A simple ruby file to hit endpoints with parameters in either GET or POST requesting.

Example:

```
→ GET or POST request (use uppercase)?
GET
→ What is the domain of the endpoint you want to hit (no http(s):// nor www.)? Example: If your endpoint is http://www.google.com/apis/potato/say , write google.com
cowsay.morecode.org
→ What is the path of the endpoint you want to hit? Example: If your endpoint is http://www.google.com/apis/potato/say , write /apis/potato/say
/say
→ How many parameters do you want to give?
2
→ Please enter parameter 1's name
message
→ Please enter parameter 1's value
endpoint-hitter-ruby is great!
→ Please enter parameter 2's name
format
→ Please enter parameter 2's value
text
→ Result:
  ______________________________
< endpoint-hitter-ruby is great! >
  ------------------------------
         \   ^__^ 
          \  (oo)\_______
             (__)\       )\/\
                 ||----w |
                 ||     ||
    
 Process finished with exit code 0
```
