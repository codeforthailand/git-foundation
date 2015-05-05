# สิ่งที่ควรรู้ก่อนใช้ Git


## สถานะของไฟล์ภายใน Git
- **Untracked** เป็นสถานนะของไฟล์ ที่ยังไม่ถูกใส่เข้าไปใน **Git**
- **Modified** เป็นสถานนะของไฟล์ที่มีการเปลี่ยนแปลงเกิดขึ้น ( **Change** ) หลังจาก **Commit**
- **Staged** เป็นสถานะที่บ่งบอกว่า ไฟล์นี้พร้อมที่จะถูก **Commit**
- **Unmodified** เป็นสถานะของไฟล์ที่ถูก **Commit** เรียบร้อยแล้ว

![image](http://git-scm.com/book/en/v2/book/02-git-basics/images/lifecycle.png "&copy; Git SCM Book")

## Git Tree (need update)



## Local / Remote Repository
ใน **Git** นั้นจะแบ่ง **Repository** ( โปรเจ็คที่ใช้ **Git** ) เป็น 2 ส่วน คือ

1. **Remote Repository** เป็น ส่วนของ **Repository** ที่อยู่บน **Git Repository** เซิร์ฟเวอร์ เป็นเหมือนศูนย์กลางข้อมูลของ **Repository** นั้นๆ
2. **Local Repository** ส่วนที่ทำงานบนเครื่องของเรา คอยจัดเก็บการเปลี่ยนแปลงที่เกิดขึ้น และคอยอัพเดทสถานะกับทาง **Remote Repository**

![](http://i.imgur.com/oHJjcMx.png "&copy; Git Tower")

## Conflict	