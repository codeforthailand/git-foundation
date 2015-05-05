# การยกเลิก Staging, Change
## ยกเลิก Staging ไฟล์
ในกรณีที่เราได้ **Staging** ( **git add, rm** ) ไฟล์ไปแล้วนั้น แล้วต่อมาในภายหลังต้องการยกเลิก **Staging** ด้วยเหตุผลบางอย่าง เช่น โค๊ดชุดนี้ไม่จำเป็นต้องการไข เป็นต้น เราสามารถทำได้โดย ใช้คำสั่ง `git reset HEAD <filename>`

```
> git status
On branch master
Your branch is up-to-date with 'origin/master'.
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	modified:   README.md
> git reset HEAD README.md
> git status
On branch master
Your branch is up-to-date with 'origin/master'.
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   README.md
```

## ยกเลิกการเปลี่ยนแปลง ( Change )
บางกรณีเราต้องการยกเลิกการเปลี่ยนแปลงของไฟล์ที่เกิดขึ้น เราสามารถยกเลิกได้ โดยใช้คำสั่ง `git checkout -- <filename>` 

**คำแนะนำ** เนื่องจากคำสั่งนี้จะยกเลิกการเปลี่ยนแปลงทั้งหมดที่เกิดขึ้นในไฟล์นั้น หลัง **Commit** เพราะฉะนั้นเราควรจะแน่ใจให้ดีก่อนใช้ หรือใช้ `git diff <filename>` เพิ่มตรวจสอบ Change ที่เกิดขึ้น

```
> git status
On branch master
Your branch is up-to-date with 'origin/master'.
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   README.md
> git checkout -- README.md
> git status
On branch master
Your branch is up-to-date with 'origin/master'.
nothing to commit, working directory clean
```

```
> git diff README.md
diff --git a/README.md b/README.md
index 782586c..97e8c1e 100644
--- a/README.md
+++ b/README.md
@@ -1,4 +1,4 @@
-# Git Basic
+# Git Foundation
```
**คำแนะนำ** ในกรณีที่เราไม่ระบุบชื่อไฟล์เวลาใช้คำสั่ง `git diff` **Git** จะทำการแสดง **Change** ที่เกิดขึ้นทั้งหมดในโปรเจ็ค