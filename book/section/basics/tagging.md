# การติด Tag

เราจะใช้ **Tag** อ้างถึง **Commit** ใน **Tree** ที่เราต้องการจะระบุ โดยส่วนใหญ่เราจะใช้​กับการ **Release** ตัวอย่างเช่น *v1.0* เป็นต้น 

## การดู Tag ที่มีอยู่
เราจะใช้คำสั่ง `git tag` เพื่อแสดง **Tag** ที่มีอยู่ในโปรเจ็คของเรา
```
$ git tag -l
v1.4.2
v1.4.3
v1.4.4
v1.4.5
```

## การสร้าง Tag
ในการสร้าง **Tag** เราจะใช้คำสั่ง `git tag` ตามด้วยชื่อของ **Tag** และคำอธิบาย
```
$ git tag -a v1.4.6 -m 'New about-us page'
$ git tag
v1.4.2
v1.4.3
v1.4.4
v1.4.5
v1.4.6
```
โดยตัว **Git** จะทำการติด **Tag** ที่ **Commit** ปัจจุบันที่เราอยู่ หรือจะใส่เลข **checksum** ของ **Commit** ที่ต้องการที่จะ **Tag** ในกรณีที่เราต้องการจะตรวจสอบรายละเอียดของ **Tag**
เราสามารถใช้คำสั่ง `git show <tag-name>` เพื่อดูรายละเอียดได้

```
$ git show  v1.4.6
commit 15027957951b64cf874c3557a0f3547bd83b3ff6
Merge: 4a447f7... a6b4c97...
Author: Scott Chacon <schacon@gee-mail.com>
Date:   Sun Feb 8 19:02:46 2009 -0800

    Merge branch 'Redesign about-us page'    
```

## การอัพเดท Tag ไปที่เซิฟเวอร์
เมื่อเราได้ทำการติด **Tag** เสร็จเรียบร้อยแล้ว เราควรที่จะอัพเดทข้อมูลของ **Tag** ที่เราได้สร้างขึ้นมาใหม่ไปยังเซิฟเวอร์ เพื่อแชร์ให้คนอื่นๆในทีม ได้นำไปใช้ต่อไป​ โดยคำสั่งที่ใช้นั้นคือ
`git push origin <tag-name>`

```
$ git push origin v1.4.6
Counting objects: 50, done.
Compressing objects: 100% (38/38), done.
Writing objects: 100% (44/44), 4.56 KiB, done.
Total 44 (delta 18), reused 8 (delta 1)
To git@github.com:codeforthailand/git-foundation.git
* [new tag]         v1.4.6 -> v1.4.6
```