def excute inputs
	inputs.shift
	calculate_test_cases inputs
end

def calculate_test_cases inputs,result=""
	if inputs.size>0
		inputs.shift
		str=calculate_test_case(inputs.shift.split(" "))
		result+="#{str}\n"
		fuck(inputs,result)
	else
		result
	end
end

def calculate_test_case array,sum=0
	if array.size>0
		num=array.pop.to_i
		sum+=num*num if num>0
		calculate(array,sum)
	else
		sum
	end
end

ary=[]
STDIN.read.split("\n").each do |a|
	# puts a
	ary<<a
end
puts magic ary
