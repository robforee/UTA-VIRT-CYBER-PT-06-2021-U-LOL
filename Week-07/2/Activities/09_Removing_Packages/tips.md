## Syntax Reference and Helpful Hints

- Powershell Versions

   - 7.1.3

- findstr

   - findstr /?
   - help Get-NetIPAddress
      - Get-NetIPAddress -AddressFamily IPv4

- CSV file: `chocoactivity.csv`

- Cmdlets and parameters:

    - `Import-Csv -Path`

- `foreach` loop syntax:

    ```PowerShell
    foreach ([condition]) {
        [executing code]
    }
    ```

- Variables (these can technically be whatever you want):

   - `$csv`
   - `$line`



list network defices

`Get-NetIPAddress -AddressFamily IPv4 | findstr /R 'IPAddress Alias PrefixLength'`

![image-20211020093817102](C:\Users\robforee\AppData\Roaming\Typora\typora-user-images\image-20211020093817102.png)



ifconfig | grep "flags\|netmask"

![image-20211020093915868](C:\Users\robforee\AppData\Roaming\Typora\typora-user-images\image-20211020093915868.png)

