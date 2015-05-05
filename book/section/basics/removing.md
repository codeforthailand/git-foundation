
# การลบไฟล์ออกจาก Git
เมื่อเราพัฒนาโปรเจ็คไปเรื่อยๆ ไฟล์บางไฟล์อาจจะไม่จำเป็นอีกต่อไป เราควรจะลบไฟล์เหล่านี้ออกจาก **Git** ทันที เพื่อป้องกันการที่อาจจะเกิดขึ้นสับสนในอนาคต โดยเราสามารถลบไฟล์ได้โดยใช้คำสั่ง `git rm​ <filename>`
```
> git rm ./contact.html
> git status
## master...origin/master
D  ./contact.html
> git commit -m "Move contact.html to aboutus.html"
```

สำหรับไฟล์บางประเภท เช่น Log ไฟล์, ไฟล์ที่ OS ได้สร้างขึ้น นั้นไม่ควรที่จำนำเข้ามาใส่ใน Repository โดยเราสามารถบอก **Git** ให้เผิกเฉย(​ **Ignore** ) ต่อไฟล์เหล่านี้ โดยการเพิ่มชื่อไฟล์หรือรูปแบบของชื่อไฟล์เข้าไปใน `.gitignore`
ถ้าหากไม่มี `.gitignore` ปรากฏอยู่ในโฟลเดอร์ให้เราทำการสร้างมาขึ้นมา
```
> git status
## master...origin/master
?? abc.log
> cat .gitignore
*.sql
> echo '*.log' >> .gitignore
> cat .gitignore
*.sql
*.log
> git status
## master...origin/master
```
**เกร็ดความรู้** คำสั่ง `cat` ใช้สำหรับดูเนื้อหาในไฟล์
