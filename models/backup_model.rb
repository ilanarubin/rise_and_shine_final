# def rise_and_shine_question_1(school_time,question_1)
#         school_time_array=school_time.split(":")
#         hour_school_time=school_time_array[0].to_i
#         minutes_school_time=school_time_array[1].to_i
#         question_1_input=question_1.to_i
   
#     # If input for getting ready is greater than the minutes for school time (1 hour)
#         reset_minutes_less_than=60+minutes_school_time-question_1_input
#         reset_hours_less_than=hour_school_time-1 
# #   If input for getting ready is greater than the minutes for school time (2 hours) 
#         #  120+minutes_school_time-question_1_input
#         #  hour_school_time-2-question_1_input
#     #If input for getting ready is less than the minutes for school time 
        
#     reset_minutes_greater_than=minutes_school_time-question_1_input
    
#     if minutes_school_time < question_1_input
#              if reset_minutes_less_than == 0
#                  return "#{reset_hours_less_than}" +
#                  ":#{reset_minutes_less_than}" + "0"
#              else
#                  return "#{reset_hours_less_than}:#{reset_minutes_less_than}"
#              end 
        
#     elsif minutes_school_time > question_1_input
#              if reset_minutes_greater_than == 0
#                 return "#{reset_minutes_greater_than}" + ":#{reset_minutes_greater_than}"+"0"
#              else
#                 return "#{hour_school_time}" + ":" + "#{reset_minutes_greater_than}"
#              end 
#     # elsif  question_1_input>60
#     #         if 120+minutes_school_time-question_1_input == 0
#     #             return "#{hour_school_time-2-question_1_input}" + ":#{120+minutes_school_time-question_1_input}" + "0"
#     #         elsif 120+minutes_school_time-question_1_input >= 1 and 120+minutes_school_time-question_1_input <=9
#     #             return  "#{hour_school_time-2-question_1_input}" + ":0" + "#{120+minutes_school_time-question_1_input}" 
#     #         else
#     #             return "#{hour_school_time-2-question_1_input}:#{120+minutes_school_time-question_1_input}"
#     #         end 
#     else
#         return "Sorry, please try again!"
       
#         # end 
#     end 

# # def rise_and_shine_question_2(school_time,question_2)
# #         school_time_array=school_time.split(":")
# #         hour_school_time=school_time_array[0].to_i
# #         minutes_school_time=school_time_array[1].to_i
# #         question_2_input=question_2.to_i
# #     # If input for getting ready is greater than the minutes for school time
# #         reset_minutes_less_than=60+minutes_school_time-question_2_input
# #         reset_hours_less_than=hour_school_time-1 
# #     #If input for getting ready is less than the minutes for school time 
# #         reset_minutes_greater_than=minutes_school_time-question_2_input
    
# #     if minutes_school_time < question_2_input
# #         return "#{reset_hours_less_than}:#{reset_minutes_less_than}"
# #     elsif minutes_school_time > question_2_input
# #         return "#{hour_school_time}:#{reset_minutes_greater_than}"
# #     else
# #         return "Sorry, please try again!"
# #     end 
# # end 

# #  puts rise_and_shine_question_1("09:00","62")
# end 



def rise_and_shine
    def question_4(school_time,question_4)
        school_time_array=school_time.split(":")
        hour_school_time=school_time_array[0].to_i
        minutes_school_time=school_time_array[1].to_i
        question_4_input=question_4.to_i
    
# when you do the method itself, just make these the arguments
# this makes a new instance of the time class based on the time the user gave
                school_start = Time.new(2017, 1, 1, hour_school_time, minutes_school_time)
# this subtracts the amount of time the user gave from the time school starts
                day_starts = school_start - question_4.to_i*60
# this parses through the time class
                date_array = day_starts.to_s.split(" ")
                time = date_array[1]
                time_array = time.split(":")
                hour = time_array[0]
                minute = time_array[1]
                final_time = hour + ":" + minute
            return final_time
        end 
   
#   EXAMPLE OF USING THE TIME CLASS
