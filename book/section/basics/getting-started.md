# เริ่มต้นใช้งาน Git Repository

 เราสามารถเริ่มต้นการใช้งาน **Git Repository** ได้ 2 วิธีคือ
 1. เพิ่มโปรเจ็คที่มีอยู่แล้ว เข้าไปใน **Git**
 2. สำเนา ( **Clone** ) มาจาก Repository ที่อยู่บนเซิร์ฟเวอร์ เช่น **Github**, **Bitbucket** เป็นต้น
 
## การเพิ่มโปรเจ็คที่มีอยู่แล้วเข้าไปใน **Git**
เราสามารถโปรเจ็คหรือแฟ้มข้อมูลที่มีอยู่แล้วเข้าไปใน Git โดยไปที่แฟ้มข้อมูลที่ต้องการ แล้วพิมพ์คำสั่ง 

```
> git init
> git status
On branch master

Initial commit

Untracked files:
  (use "git add <file>..." to include in what will be committed)

	README.txt

nothing added to commit but untracked files present (use "git add" to track)
```
โดยคำสั่ง **git init** จะทำการสร้างแฟ้มข้อมูล `.git` ไว้ในแฟ้มข้อมูลของเรา โดยแฟ้มข้อมูลนี้จะเป็นแฟ้มข้อมูลที่เอาไว้เก็บข้อมูลต่างๆ ของ **Git Tree** ส่วนคำสั่ง **status** นั้น จะเป็นคำสั่งที่ใช้ในการแสดงผลสถานะของ **Local Repository** ซึ่งในที่นี้บอกว่า ไฟล์ `README.txt` นั้นอยู่ในสถานะ **Untracked**


ต่อมาทำการเริ่มเก็บประวัติการแก้ไขของไฟล์ โดยใช้คำสั่ง **git add** เพื่อทำการเพิ่มไฟล์เข้าสู่ **Git** แล้วพิมพ์ คำสั่ง **git commit** เพื่อยืนยันการเปลี่ยนแปลง โดย `-m` คือ **Commit Message** ซึ่งใช้บ่งบอกว่า **Commit** นี้เกี่ยวกับอะไร
```
> git add README.txt
> git commit -m "เพิ่มไฟล์ README.txt"
```
ซึ่งเราสามารถดูข้อมูลการ **Commit** ได้ โดยใช้คำสั่ง `git log`
```
commit d5aaeba701075735f1046a22be22a45746fe05b9
Author: Sompong <Sompong@gmail.in.th>
Date:   Tue Apr 28 22:30:45 2015 +0700
	เพิ่มไฟล์ README.txt
```

## การ Clone จาก Repository ที่มีอยู่แล้ว
ในกรณีที่เราต้องการเข้าไปมีส่วนร่วมกับโปรเจค แล้วโปรเจคนั้นมี Repository อยู่แล้ว เราสามารถ Clone Repository นั้นมาได้เลย โดยใช้คำสั่ง **git clone <REPOSITORY_URL>** 

```
> git clone git@github.com/codeforthailand/git-foundation
Cloning into 'git-foundation'...
remote: Counting objects: 164, done.
remote: Compressing objects: 100% (112/112), done.
remote: Total 164 (delta 42), reused 153 (delta 31), pack-reused 0
Receiving objects: 100% (164/164), 1.36 MiB | 65.00 KiB/s, done.
Resolving deltas: 100% (42/42), done.
Checking connectivity... done.
```
เมื่อคำสั่งเสร็จสิ้น จะมีโฟลเดอร์ **git-foundation** ปรากฏอยู่