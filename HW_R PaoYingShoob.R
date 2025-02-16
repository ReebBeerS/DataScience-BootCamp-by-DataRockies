# variable 2 ตัวนี้สร้างขึ้นสำหรับการใช้นับคะแนน จริงๆมาทีหลังเลย เพราะตอนแรกสร้าง code ให้เข้าใจเป่ายิงชุม กรรไกร ค้อน กระดาษก่อน
com_score <- 0
user_score <- 0

# จริงๆตอนแรกเริ่มทำในส่วนนี้ก่อนเลย คือการให้ code เข้าใจเกี่ยวกับเกมเป่ายิงชุบ โดยใช้ if else เป็นหลัก
check <- function(user_hand, comp_hand) { #user_hand = สำหรับเราใส่ comp_hand = สำหรับอีกฝั่งในที่นี้เสมือนว่าเป็นคอม
  if (user_hand == "quit") {
    print("End Game") # print คือการแสดงผล ในที่นี้ จะหมายความว่า ถ้าเราพิมพ์ quit ให้แสดงว่า End game
    return("quit") # return คือ การส่งกลับคำว่า quit ออกมาแล้วนำคำ quit ไปเช็คใน while loop ด้านล่าง
  } else if (user_hand == "love") {
    print(paste("Competitor: ", comp_hand)) #paste คือ ใช้เชื่อมระหว่าง "ข้อความ" กับตัวแปร (สิ่งที่เราอยากให้แสดงผล เข่น scissor)
    print(paste("You: ", user_hand))
    print("Win Everthing") #อยากใส่ concept "ความรักชนะทุกสิ่ง" เข้ามา
    user_score <- user_score + 1 #การอัพเดตค่าหลังจากเพิ่มคะแนน 
    return("continue") # return คือ การส่งกลับคำว่า continue ออกมาแล้วนำคำ continue ไปเช็คใน while loop ด้านล่าง
  } else if (user_hand == comp_hand) {
    print(paste("Competitor: ", comp_hand))
    print(paste("You: ", user_hand))
    print("Deal. Let's Play Again")
    return("continue") 
  } else if ((user_hand == "hammer" & comp_hand == "scissor") |
             (user_hand == "scissor" & comp_hand == "paper") |
             (user_hand == "paper" & comp_hand == "hammer")) {
    print(paste("Competitor: ", comp_hand))
    print(paste("You: ", user_hand))
    print("You are the Winner!!")
    user_score <- user_score + 1 
    return("continue") 
  } else {
    print(paste("Competitor: ", comp_hand))
    print(paste("You: ", user_hand))
    print("Ahh, You are Lose. Try Again!")
    com_score <- com_score + 1  
    return("continue") 
  }
}
#หลังจากที่เราเขียนรายละเอียดใน function ที่เราตั้งชื่อว่า check เราก็มาสร้างอีก function นึงที่ชื่อว่า new_game
#new_game เป็น function ใช้ในการเริ่มเกมโดยทำการตรวจสอบผลลัพธ์จาก function check ที่สร้างขึ้นในตอนแรก
new_game <- function() {
  print("Welcome to the PaoYingShoobpyShhob Game") # แสดงคำหลัง print เมื่อพิมพ์ว่า new_game
  hands <- c("hammer", "scissor", "paper") #ตั้งให้ hands คือ ค้อน กรรไกร กระดาษ สำหรับ comp 
  #เขียน while loop เพื่อให้เกมสามารถรันต่อเนื่องและหยุดเมื่อพิมพ์ quit 
  while (TRUE) {
    comp_hand <- sample(hands, 1) #กำหนดว่า comp_hand คือการการสุ่มสิ่งที่อยู่ใน hands โดยสุ่มมาแค่ 1 ค่าจาก vector 3 ตัวที่ตั้งไว้ โดยใช้ sample
    user_hand <- readline("Please choose one option: paper, scissor, hammer, or quit: ") # นำreadline มาใช้เพื่อให้สามารถรับค่าที่เราจะพิมพ์เข้าไป
    #ในที่นี้รับ ค้อน กรรไกร กระดาษ และความรัก 
    result <- check(user_hand, comp_hand) #กำหนดให้ function check ที่เขียนด้านบนมาอยู่ในส่วนนี้ในการรันเกม
    
    if (result == "quit") { #สร้างเงื่อนไขว่าถ้าผลลัพธ์จาก check เป็น quit คือ ออกจากเกม
      print(paste("Final Scores: User - ", user_score, ", Computer - ", com_score)) #โค้ดส่วนนี้ได้มาจาก gemini
      break  
    }
    if (result == "continue"){ #สร้างเงื่อนไขว่าถ้าผลลัพธ์จาก check เป็นแพ้หรือชนะให้แสดงคะแนน
      print(paste("Current Scores: User - ", user_score, ", Computer - ", com_score)) #โค้ดส่วนนี้ได้มาจาก gemini
    }
  }
}# variable 2 ตัวนี้สร้างขึ้นสำหรับการใช้นับคะแนน จริงๆมาทีหลังเลย เพราะตอนแรกสร้าง code ให้เข้าใจเป่ายิงชุม กรรไกร ค้อน กระดาษก่อน
com_score <- 0
user_score <- 0

# จริงๆตอนแรกเริ่มทำในส่วนนี้ก่อนเลย คือการให้ code เข้าใจเกี่ยวกับเกมเป่ายิงชุบ โดยใช้ if else เป็นหลัก
check <- function(user_hand, comp_hand) { #user_hand = สำหรับเราใส่ comp_hand = สำหรับอีกฝั่งในที่นี้เสมือนว่าเป็นคอม
  if (user_hand == "quit") {
    print("End Game") # print คือการแสดงผล ในที่นี้ จะหมายความว่า ถ้าเราพิมพ์ quit ให้แสดงว่า End game
    return("quit") # return คือ การส่งกลับคำว่า quit ออกมาแล้วนำคำ quit ไปเช็คใน while loop ด้านล่าง
  } else if (user_hand == "love") {
    print(paste("Competitor: ", comp_hand)) #paste คือ ใช้เชื่อมระหว่าง "ข้อความ" กับตัวแปร (สิ่งที่เราอยากให้แสดงผล เข่น scissor)
    print(paste("You: ", user_hand))
    print("Win Everthing") #อยากใส่ concept "ความรักชนะทุกสิ่ง" เข้ามา
    user_score <- user_score + 1 #การอัพเดตค่าหลังจากเพิ่มคะแนน 
    return("continue") # return คือ การส่งกลับคำว่า continue ออกมาแล้วนำคำ continue ไปเช็คใน while loop ด้านล่าง
  } else if (user_hand == comp_hand) {
    print(paste("Competitor: ", comp_hand))
    print(paste("You: ", user_hand))
    print("Deal. Let's Play Again")
    return("continue") 
  } else if ((user_hand == "hammer" & comp_hand == "scissor") |
             (user_hand == "scissor" & comp_hand == "paper") |
             (user_hand == "paper" & comp_hand == "hammer")) {
    print(paste("Competitor: ", comp_hand))
    print(paste("You: ", user_hand))
    print("You are the Winner!!")
    user_score <- user_score + 1 
    return("continue") 
  } else {
    print(paste("Competitor: ", comp_hand))
    print(paste("You: ", user_hand))
    print("Ahh, You are Lose. Try Again!")
    com_score <- com_score + 1  
    return("continue") 
  }
}
#หลังจากที่เราเขียนรายละเอียดใน function ที่เราตั้งชื่อว่า check เราก็มาสร้างอีก function นึงที่ชื่อว่า new_game
#new_game เป็น function ใช้ในการเริ่มเกมโดยทำการตรวจสอบผลลัพธ์จาก function check ที่สร้างขึ้นในตอนแรก
new_game <- function() {
  print("Welcome to the PaoYingShoobpyShhob Game") # แสดงคำหลัง print เมื่อพิมพ์ว่า new_game
  hands <- c("hammer", "scissor", "paper") #ตั้งให้ hands คือ ค้อน กรรไกร กระดาษ สำหรับ comp 
  #เขียน while loop เพื่อให้เกมสามารถรันต่อเนื่องและหยุดเมื่อพิมพ์ quit 
  while (TRUE) {
    comp_hand <- sample(hands, 1) #กำหนดว่า comp_hand คือการการสุ่มสิ่งที่อยู่ใน hands โดยสุ่มมาแค่ 1 ค่าจาก vector 3 ตัวที่ตั้งไว้ โดยใช้ sample
    user_hand <- readline("Please choose one option: paper, scissor, hammer, or quit: ") # นำreadline มาใช้เพื่อให้สามารถรับค่าที่เราจะพิมพ์เข้าไป
    #ในที่นี้รับ ค้อน กรรไกร กระดาษ และความรัก 
    result <- check(user_hand, comp_hand) #กำหนดให้ function check ที่เขียนด้านบนมาอยู่ในส่วนนี้ในการรันเกม
    
    if (result == "quit") { #สร้างเงื่อนไขว่าถ้าผลลัพธ์จาก check เป็น quit คือ ออกจากเกม
      print(paste("Final Scores: User - ", user_score, ", Computer - ", com_score)) #โค้ดส่วนนี้ได้มาจาก gemini
      break  
    }
    if (result == "continue"){ #สร้างเงื่อนไขว่าถ้าผลลัพธ์จาก check เป็นแพ้หรือชนะให้แสดงคะแนน
      print(paste("Current Scores: User - ", user_score, ", Computer - ", com_score)) #โค้ดส่วนนี้ได้มาจาก gemini
    }
  }
}