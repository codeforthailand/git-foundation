# การติดตั้ง Git สำหรับ OSX

1. เปิด โปรแกม **Terminal**
![image](http://i.imgur.com/3xZWL5Q.png)

2. ติดตั้ง **brew** ซึ่งเป็น Package Manager สำหรับ **OSX** โดยไปที่ [brew.sh](http://brew.sh)
3. ติดตั้ง **git** เวอร์ชันล่าสุด โดยใช้คำสั่ง 
```
brew install git
```
4. สร้าง **SSH Key** เพื่อใช้ในการติดต่อกับ Remote Server
	1. เช็คว่ามี key อยู่แล้วหรือไม่
	
		```
		# ในกรณีที่มี key อยู่ จะโชว์ว่ามีไฟล์ชื่อใดบ้าง
		$ ls -al ~/.ssh
		```
	1. สร้าง **SSH Key**
	```
	ssh-keygen -t rsa -C "your_email@example.com"
	# Creates a new ssh key, using the provided email as a label
	# Generating public/private rsa key pair.
	```
	1. ใส่ชื่อของไฟล์ Key ถ้ากด **Enter** เลยจะใช้ชื่อ Default ( **id_rsa** )
	```
	Enter file in which to save the key (/Users/you/.ssh/id_rsa): [Press enter]
	```
	1. ใส่ **Passphrase** ซึ่งจะเป็นรหัสที่ใช้ในการขออนุญาตใช้ Key (อาจจะไม่ใส่ก็ได้)
	```
	Enter passphrase (empty for no passphrase): [Type a passphrase]
	# Enter same passphrase again: [Type passphrase again]
	```
	หลังจากเสร็จสิ้น **Terminal** จะแสดงผลประมาณภาพด้านล่าง
	```
	Your identification has been saved in /Users/you/.ssh/id_rsa.
	# Your public key has been saved in /Users/	you/.ssh/id_rsa.pub.
	# The key fingerprint is:
	# 01:0f:f4:3b:ca:	85:d6:17:a1:7d:f0:68:9d:f0:a2:db 	your_email@example.com

	```
	1. เพิ่ม Key เข้าในโปรแกรม **SSH-Agent** โดยการรันคำสั่งด้านล่าง
	```
	# start the ssh-agent in the background
	$ eval "$(ssh-agent -s)"
	# Agent pid 59566
	$ ssh-add ~/.ssh/id_rsa
	```
3. เพิ่ม Key เข้าไปใน **Github**
	1. ทำการ Copy key ที่พึ่งสร้างไป (หรือที่ต้องการจะใช้)
```
$ pbcopy < ~/.ssh/id_rsa.pub
``` 
	1. เปิด [**Github.com**](http://github.com) เข้าไปที่หน้า **Setting** แล้วเลือก **SSH Keys**
	2. กด **Add SSH Key** แล้วใส่วาง Key ที่ได้ Copy มา ใส่ชื่อ **title** ตามความเหมาะสม
	3. ทดสอบการเชื่อมต่อ
		```
		# ทดลองการเชื่อมต่อกับ Github
		ssh -T git@github.com
		# ถ้ามี Warning ตัวนี้ขึ้นมา ให้ตอบ Yes
		The authenticity of host 'github.com (207.97.227.239)' can't be established.
		# RSA key fingerprint is 		16:27:ac:a5:76:28:2d:36:63:1b:		56:4d:eb:df:a6:48.
		# Are you sure you want to continue 		connecting (yes/no)?

		Hi username! You've successfully authenticated, but GitHub does not
		# provide shell access.
		```
