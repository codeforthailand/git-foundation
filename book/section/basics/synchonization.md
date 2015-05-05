# การอัพเดทข้อมูลกับเซิฟเวอร์
เมื่อเราใช้ Git สิ่งที่เราควรทำอย่างยิ่งคือการอัพเดทข้อมูลกับเซิฟเวอร์อย่างสม่ำเสมอ ซึ่งจะช่วยลดการเกิด **Conflict** ระหว่างการแก้ไข โดยการอัพเดทนั้นจะแบ่งออกเป็น 2 ประเภท คือ
- เราดึงข้อมูลใหม่มาจากเซิฟเวอร์ ( **Local <- Remote** )
- เราอัพเดทข้อมูลไปที่เซิฟเวอร์ ( **Local -> Remote** )

##  การดึงข้อมูลใหม่มาจากเซิฟเวอร์
ในการดึงข้อมูลจากเซิฟเวอร์นั้น เราจะใช้คำสั่ง `git pull` โดย **Git** นั้นจะทำการดึงข้อมูลแล้วย้าย **Pointer** ที่บอกตำแหน่ง **Commit** ปัจจุบันไปยัง **Commit** ล่าสุดซึ่งจะตรงกับบนเซิฟเวอร์
```
> git log
commit d5aaeba701075735f1046a22be22a45746fe05b9
Author: Sompong <Sompong@gmail.in.th>
Date:   Tue Apr 28 22:30:45 2015 +0700
    เพิ่มไฟล์ README.txt
> git pull
remote: Counting objects: 25, done.
remote: Compressing objects: 100% (22/22), done.
remote: Total 25 (delta 7), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (25/25), done.
From github.com:codeforthailand/git-foundation
   38cb69f..38e9b13  master     -> origin/master
Updating d5aaeba..8f3d34f
Fast-forward
 README.txt                                |   5 +
1 file changed, 5 insertions(+), 0 deletion(-) 
> git log
commit 8f3d34f05c38d57b028c8c45d330e1f40841b617
Author: Somrak <Somrak@gmail.in.th>
Date:   Tue Apr 29 22:30:12 2015 +0700
	อัพเดทข้อมูลการรันเซิฟเวอร์

commit d5aaeba701075735f1046a22be22a45746fe05b9
Author: Sompong <Sompong@gmail.in.th>
Date:   Tue Apr 28 22:30:45 2015 +0700
    เพิ่มไฟล์ README.txt
```
**คำแนะนำ** ก่อนที่จะใช้คำสั่งนี้ ควรจะมั่นใจว่าโปรเจ็คของเราไม่มี **Change** หรือไฟล์ที่รอการ **Commit** เพื่อป้องกัน **Conflict** หลังจากอัพเดทข้อมูล

##  การอัพเดทข้อมูลไปที่เซิฟเวอร์
เมื่อเราได้ทำการ **Commit Change** เสร็จเรียบร้อยบนเครื่องของเรา เราจะใช้คำสั่ง `git push` เพื่อที่จะอัพเดทข้อมูลเหล่านั้นไปยังเซิฟเวอร์
```
> git log
commit 38e9b13fdaa1d417a6b9c96c5f28c9f841354e04
Author: Sompong <Sompong@gmail.in.th>
Date:   Tue Apr 30 10:30:12 2015 +0700
	อัพเดทข้อมูลทั่วไป

commit 8f3d34f05c38d57b028c8c45d330e1f40841b617
Author: Somrak <Somrak@gmail.in.th>
Date:   Tue Apr 29 20:30:12 2015 +0700
	อัพเดทข้อมูลการรันเซิฟเวอร์

commit d5aaeba701075735f1046a22be22a45746fe05b9
Author: Sompong <Sompong@gmail.in.th>
Date:   Tue Apr 28 22:30:45 2015 +0700
    เพิ่มไฟล์ README.txt
> git push
Counting objects: 3, done.
Delta compression using up to 8 threads.
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 347 bytes | 0 bytes/s, done.
Total 3 (delta 1), reused 0 (delta 0)
To git@github.com:codeforthailand/git-foundation.git
   8f3d34f..38e9b13  master -> master

```
