echo "=== TONG HOP LOG ===" > .\logs\auto_report.txt
get-content ".\logs\Studio.log" | select-string "ERROR" >> .\logs\auto_report.txt
echo "DEM DONG : " >> .\logs\auto_report.txt
(get-content ".\logs\Studio.log" | select-string "ERROR").Count >> .\logs\auto_report.txt