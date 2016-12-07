require 'find'


    #Check all of build.gradle in repo
    gradle_file_paths = Array.new()
    Find.find('uaa') do |path|
        #puts path
        if path.end_with?("build.gradle")
        	#puts path
        	gradle_file_paths << path
        end
    end

    #puts gradle_file_paths

    counter = 1
    flag = false
    list = []
    #Read the build.gradle File
    	file = File.open("uaa/build.gradle", "r")
    	while (line = file.gets)
    		puts "#{counter}: #{line}"
    		counter = counter + 1
    		if flag
    			list << line
    		end
    		if line.end_with?("dependencies {")
    			flag = true
    		elsif line.end_with?("}")
    			flag = false
    		end
    			
    	end
    	file.close
	#end

	puts list