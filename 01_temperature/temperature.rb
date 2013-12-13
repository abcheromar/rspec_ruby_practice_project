def ftoc(fah_num)
    cal_num = (fah_num.to_f - 32) * (100.00/180.00)
    return cal_num
end

def ctof(cal_num)

	fah_num = (cal_num.to_f() * 180.00/100.00) + 32
	return fah_num

end



# you give me a fahanheit number
# i will substract 32 from it
# i will times that with 100/180
# i will u back the answer

# you give a calsius number
# i will time that with 180/100
# i will ad 32 to that number
# i will give u back ur number