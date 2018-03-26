js = require "js"
window = js.global
abc = math.random(1,100)
min=1
max=100
cmp="請從"
		repeat
		    n = window:prompt(""..cmp..""..min.."~"..max.."猜一數字：")
			if  tonumber(n)>abc
			then    max=tonumber(n)
			        print("您猜的太大了，請在"..min.."~"..max.."再猜：")
			        cmp="您的太大了,請再由"
			elseif tonumber(n)<abc
			then    min=tonumber(n)
			        print("您猜的太小了，請在"..min.."~"..max.."再猜：")
			        cmp="您猜的太小了,請再由"
	end
		until tonumber(n)==abc
		print("答案是"..abc.."恭喜您猜對了!")
print("遊戲結束")