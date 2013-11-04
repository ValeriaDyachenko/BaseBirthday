require "BaseBirthday/version"
require "fileutils"

module BaseBirthday
	class Base
    attr_accessor :day, :day2,:day3
    
    def start
			puts 'Welcome to BirthdayBase!'  
			generation_folders
			generation_files
			start_base
    end

    def generation_folders
      @mounth = [ "01", "02", "03", "04", "05","06", "07", "08", "09", "10", "11", "12" ]
    	FileUtils.mkdir_p(@mounth) 
    end

    def generation_files
    	@day=Array.new(29)
    	@day2=Array.new(30)
    	@day3=Array.new(31)
    	mounth30=[ "04","06", "09", "11"]
    	mounth31=[ "01","03", "05","07", "08", "10", "12"]
    	a=0
    	@day.map do |item|
    		a+=1
	    	item=a
	    		File.open "02/#{item}.txt", "a" 
			end
    	mounth30.map do |mounth|
    		a=1
	    	@day2.map do |item|
	    		item=a
	    			File.open "#{mounth}/#{item}.txt", "a" 
	    		a+=1
				end
			end			
			mounth31.map do |mounth|
				a=1
	    	@day3.map do |item|
	    		item=a
	    			File.open "#{mounth}/#{item}.txt", "a" 
	    		a+=1
				end
			end
		end

		def start_base
	  	puts 'For START BirthdayBase enter "s".For EXIT enter "e"'  
     	answ_up = gets.chomp
        if answ_up == "s" 
					change_date
        elsif answ_up =="e"
          exit
        else
          start_base
        end
		end

		def change_date
			puts "Enter date in format 'mounth/day'"
			@date = gets.chomp						
			if @date =="01"
				puts "This is all date of January"
				all_31_days
			elsif @date =="02"
				puts "This is all date of February"
				a=1
				@day.map do |item|				
				  @f = IO.read("#{@date}/#{a}.txt")
				  puts "Date: #{@date}/#{a}"
					puts @f
					a+=1
				end
				change_date
			elsif @date =="03"
				puts "This is all date of Marth"
				all_31_days
			elsif @date =="04"
				puts "This is all date of April"
				all_30_days
			elsif @date =="05"
				puts "This is all date of May"
				all_31_days
			elsif @date =="06"
				puts "This is all date of June"
				all_30_days
			elsif @date =="07"
				puts "This is all date of July"
				all_31_days
			elsif @date =="08"
				puts "This is all date of August"
				all_31_days
			elsif @date =="09"
				puts "This is all date of September"
				all_30_days
			elsif @date =="10"
				puts "This is all date of October"
				all_31_days
			elsif @date =="11"
				puts "This is all date of November"
				all_30_days
			elsif @date =="12"
				puts "This is all date of December"
				all_31_days
			elsif @date=="01/1" || @date=="01/2"|| @date=="01/3"|| @date=="01/4"|| @date=="01/5"|| @date=="01/6"|| @date=="01/7"|| @date=="01/8"|| @date=="01/9"|| @date=="01/10"|| @date=="01/11"|| @date=="01/12"|| @date=="01/13"|| @date=="01/14"|| @date=="01/15"|| @date=="01/16"|| @date=="01/17"|| @date=="01/18"|| @date=="01/19"|| @date=="01/20"|| @date=="01/21"|| @date=="01/22"|| @date=="01/23"|| @date=="01/24"|| @date=="01/25"|| @date=="01/26"|| @date=="01/27"|| @date=="01/28"|| @date=="01/29"|| @date=="01/30"|| @date=="01/31"|| @date=="02/1" || @date=="02/2"|| @date=="02/3"||@date=="02/4"|| @date=="02/5"|| @date=="02/6"|| @date=="02/7"|| @date=="02/8"|| @date=="02/9"|| @date=="02/10"|| @date=="02/11"|| @date=="02/12"|| @date=="02/13"|| @date=="02/14"|| @date=="02/15"|| @date=="02/16"|| @date=="02/17"|| @date=="02/18"|| @date=="02/19"|| @date=="02/20"|| @date=="02/21"|| @date=="02/22"|| @date=="02/23"|| @date=="02/24"|| @date=="02/25"|| @date=="02/26"|| @date=="02/27"|| @date=="02/28"|| @date=="02/29"|| @date=="03/1" || @date=="03/2"|| @date=="03/3"|| @date=="03/4"|| @date=="03/5"|| @date=="03/6"|| @date=="03/7"|| @date=="03/8"|| @date=="03/9"|| @date=="03/10"|| @date=="03/11"|| @date=="03/12"|| @date=="03/13"|| @date=="03/14"|| @date=="03/15"|| @date=="03/16"|| @date=="03/17"|| @date=="03/18"|| @date=="03/19"|| @date=="03/20"|| @date=="03/21"|| @date=="03/22"|| @date=="03/23"|| @date=="03/24"|| @date=="03/25"|| @date=="03/26"|| @date=="03/27"|| @date=="03/28"|| @date=="03/29"|| @date=="03/30"|| @date=="03/31"|| @date=="04/1" || @date=="04/2"|| @date=="04/3"|| @date=="04/4"|| @date=="04/5"|| @date=="04/6"|| @date=="04/7"|| @date=="04/8"|| @date=="04/9"|| @date=="04/10"|| @date=="04/11"|| @date=="04/12"|| @date=="04/13"|| @date=="04/14"|| @date=="04/15"|| @date=="04/16"|| @date=="04/17"|| @date=="04/18"|| @date=="04/19"|| @date=="04/20"|| @date=="04/21"|| @date=="04/22"|| @date=="04/23"|| @date=="04/24"|| @date=="04/25"|| @date=="04/26"|| @date=="04/27"|| @date=="04/28"|| @date=="04/29"|| @date=="04/30"|| @date=="05/1" || @date=="05/2"|| @date=="05/3"|| @date=="05/4"|| @date=="05/5"|| @date=="05/6"|| @date=="05/7"|| @date=="05/8"|| @date=="05/9"|| @date=="05/10"|| @date=="05/11"|| @date=="05/12"|| @date=="05/13"|| @date=="05/14"|| @date=="05/15"|| @date=="05/16"|| @date=="05/17"|| @date=="05/18"|| @date=="05/19"|| @date=="05/20"|| @date=="05/21"|| @date=="05/22"|| @date=="05/23"|| @date=="05/24"|| @date=="05/25"|| @date=="05/26"|| @date=="05/27"|| @date=="05/28"|| @date=="05/29"|| @date=="05/30"|| @date=="05/31"|| @date=="06/1" || @date=="06/2"|| @date=="06/3"|| @date=="06/4"|| @date=="06/5"|| @date=="06/6"|| @date=="06/7"|| @date=="06/8"|| @date=="06/9"|| @date=="06/10"|| @date=="06/11"|| @date=="06/12"|| @date=="06/13"|| @date=="06/14"|| @date=="06/15"|| @date=="06/16"|| @date=="06/17"|| @date=="06/18"|| @date=="06/19"|| @date=="06/20"|| @date=="06/21"|| @date=="06/22"|| @date=="06/23"|| @date=="06/24"|| @date=="06/25"|| @date=="06/26"|| @date=="06/27"|| @date=="06/28"|| @date=="06/29"|| @date=="06/30"||@date=="07/1" || @date=="07/2"|| @date=="07/3"|| @date=="07/4"|| @date=="07/5"|| @date=="07/6"|| @date=="07/7"|| @date=="07/8"|| @date=="07/9"|| @date=="07/10"|| @date=="07/11"|| @date=="07/12"|| @date=="07/13"|| @date=="07/14"|| @date=="07/15"|| @date=="07/16"|| @date=="07/17"|| @date=="07/18"|| @date=="07/19"|| @date=="07/20"|| @date=="07/21"|| @date=="07/22"|| @date=="07/23"|| @date=="07/24"|| @date=="07/25"|| @date=="07/26"|| @date=="07/27"|| @date=="07/28"|| @date=="07/29"|| @date=="07/30"|| @date=="07/31"|| @date=="08/1" || @date=="08/2"|| @date=="08/3"|| @date=="08/4"|| @date=="08/5"|| @date=="08/6"|| @date=="08/7"|| @date=="08/8"|| @date=="08/9"|| @date=="08/10"|| @date=="08/11"|| @date=="08/12"|| @date=="08/13"|| @date=="08/14"|| @date=="08/15"|| @date=="08/16"|| @date=="08/17"|| @date=="08/18"|| @date=="08/19"|| @date=="08/20"|| @date=="08/21"|| @date=="08/22"|| @date=="08/23"|| @date=="08/24"|| @date=="08/25"|| @date=="08/26"|| @date=="08/27"|| @date=="08/28"|| @date=="08/29"|| @date=="08/30"|| @date=="08/31"||@date=="09/1" || @date=="09/2"|| @date=="09/3"|| @date=="09/4"|| @date=="09/5"|| @date=="09/6"|| @date=="09/7"|| @date=="09/8"|| @date=="09/9"|| @date=="09/10"|| @date=="09/11"|| @date=="09/12"|| @date=="09/13"|| @date=="09/14"|| @date=="09/15"|| @date=="09/16"|| @date=="09/17"|| @date=="09/18"|| @date=="09/19"|| @date=="09/20"|| @date=="09/21"|| @date=="09/22"|| @date=="09/23"|| @date=="09/24"|| @date=="09/25"|| @date=="09/26"|| @date=="09/27"|| @date=="09/28"|| @date=="09/29"|| @date=="09/30"||@date=="10/1" || @date=="10/2"|| @date=="10/3"|| @date=="10/4"|| @date=="10/5"|| @date=="10/6"|| @date=="10/7"|| @date=="10/8"|| @date=="10/9"|| @date=="10/10"|| @date=="10/11"|| @date=="10/12"|| @date=="10/13"|| @date=="10/14"|| @date=="10/15"|| @date=="10/16"|| @date=="10/17"|| @date=="10/18"|| @date=="10/19"|| @date=="10/20"|| @date=="10/21"|| @date=="10/22"|| @date=="10/23"|| @date=="10/24"|| @date=="10/25"|| @date=="10/26"|| @date=="10/27"|| @date=="10/28"|| @date=="10/29"|| @date=="10/30"|| @date=="10/31"||@date=="11/1" || @date=="11/2"|| @date=="11/3"|| @date=="11/4"|| @date=="11/5"|| @date=="11/6"|| @date=="11/7"|| @date=="11/8"|| @date=="11/9"|| @date=="11/10"|| @date=="11/11"|| @date=="11/12"|| @date=="11/13"|| @date=="11/14"|| @date=="11/15"|| @date=="11/16"|| @date=="11/17"|| @date=="11/18"|| @date=="11/19"|| @date=="11/20"|| @date=="11/21"|| @date=="11/22"|| @date=="11/23"|| @date=="11/24"|| @date=="11/25"|| @date=="11/26"|| @date=="11/27"|| @date=="11/28"|| @date=="11/29"|| @date=="11/30"||@date=="12/1" || @date=="12/2"|| @date=="12/3"|| @date=="12/4"|| @date=="12/5"|| @date=="12/6"|| @date=="12/7"|| @date=="12/8"|| @date=="12/9"|| @date=="12/10"|| @date=="12/11"|| @date=="12/12"|| @date=="12/13"|| @date=="12/14"|| @date=="12/15"|| @date=="12/16"|| @date=="12/17"|| @date=="12/18"|| @date=="12/19"|| @date=="12/20"|| @date=="12/21"|| @date=="12/22"|| @date=="12/23"|| @date=="12/24"|| @date=="12/25"|| @date=="12/26"|| @date=="12/27"|| @date=="12/28"|| @date=="12/29"|| @date=="12/30"|| @date=="12/31"
			  @f = IO.read("#{@date}.txt")
			  puts "Date: #{@date}"
				puts @f
				writing_plus_file
			else
				change_date
			end
		end

		def all_31_days
			a=1
			@day3.map do |item|				
			  @f = IO.read("#{@date}/#{a}.txt")
			  puts "Date: #{@date}/#{a}"
				puts @f
				a+=1
			end
			change_date
		end

		def all_30_days
			a=1
			@day2.map do |item|				
			  @f = IO.read("#{@date}/#{a}.txt")
			  puts "Date: #{@date}/#{a}"
				puts @f
				a+=1
			end
			change_date
		end

		def writing_plus_file
	 		puts "Do you want to write the file??If YES enter Y,if NO enter N"
      answ_sr = gets.chomp
      if answ_sr == "y"
        save_to_file
        start_base
      elsif answ_sr == "n"
        start_base
      else
        writing_plus_file
      end
		end

		def save_to_file
			print "Name="
			name = gets.chomp
			print "Description="
			description = gets.chomp
			File.open "#{@date}.txt", "a" do |file|
			file.write("Name: #{ name }  Description: #{ description } \n")
			puts "The data is stored"			
			end
		end

	end
end

# BaseBirthday::Base.new.start
