require 'openssl'
require 'base64'
require 'pp'  

ALG = 'DES-EDE3-CBC'  
KEY = "mZ4Wjs6L"
DES_KEY = "nZ4wJs6L"

des = OpenSSL::Cipher::Cipher.new(ALG)  
des.pkcs5_keyivgen(KEY, DES_KEY)  
des.encrypt  
cipher = des.update('1')  
cipher << des.final  
pp Base64.encode64('1')
