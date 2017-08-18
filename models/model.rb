   #question 1-How many minutes early do you want to get to school
    def question_1_method(school_time,question_1)
            $school_time_array=school_time.split(":")
            hour_school_time=$school_time_array[0].to_i
            minutes_school_time=$school_time_array[1].to_i
            $question_1_input=question_1.to_i
    

            $school_start = Time.new(2017, 1, 1, hour_school_time, minutes_school_time)

            $get_to_school = $school_start - $question_1_input.to_i*60

            date_array = $get_to_school.to_s.split(" ")
            time = date_array[1]
            time_array = time.split(":")
            hour = time_array[0]
            minute = time_array[1]
            $final_time_question_1 = hour + ":" + minute
        return $final_time_question_1
    end 
     
   
    #  question 2- commute time 
    def question_2_method(commute_time)
                time_split=$final_time_question_1.to_s.split(":")
                hour_early_time=time_split[0].to_i
                minutes_early_time=time_split[1].to_i
                
                school_early = Time.new(2017, 1, 1, hour_early_time, minutes_early_time)
                
                 $leave_for_school = $get_to_school - commute_time.to_i*60
                 
            
                 
                 date_array2 = $leave_for_school.to_s.split(" ")
                 
               
                 time = date_array2[1].to_s
                 time_array = time.split(":")
                 hour = time_array[0]
                 minute = time_array[1]
                 $final_time_question_2 = "#{hour}:#{minute}"
            hour_school_time=$school_time_array[0].to_i
            minutes_school_time=$school_time_array[1].to_i
            #question_1_input=question_1.to_i
            return $final_time_question_2
    end 
  
   #  question 3- how long it takes to get ready 
     def question_3_method(get_ready_time)
                time_split=$final_time_question_2.split(":")
                hour_early_time=time_split[0].to_i
                minutes_early_time=time_split[1].to_i
                

                get_ready = $leave_for_school - get_ready_time.to_i*60


                date_array3 = get_ready.to_s.split(" ")
                time = date_array3[1].to_s
                time_array = time.split(":")
                hour = time_array[0]
                minute = time_array[1]
                $final_time_question_3 = "#{hour}:#{minute}"
            return $final_time_question_3
        end 
        
