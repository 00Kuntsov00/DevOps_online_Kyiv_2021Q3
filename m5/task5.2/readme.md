## 1)Analyze the structure of the /etc/passwd and /etc/group file, what fields are present in it, what users exist on the system? Specify several pseudo-users, how to define them?

Файл /etc/passwd содержит список пользователей, которые известны системе.
Каждая строка файла описывает одного пользователя и 
содержит семь полей, разделенных двоеточиями:
   * Регистрационное имя. 

   * Зашифрованный пароль или «заполнитель» пароля.

   * Идентификатор пользователя  
     
   * Идентификатор группы по умолчанию.

   * Поле персональных данных. 

   * Домашний каталог.

   * Командный интерпретатор. 

Файл /etc/group содержит имена групп, присутствующих в ОС Linux, и списки членов каждой группы.

Каждая запись файла /etc/group представляет одну группу и содержит четыре поля:

   * Имя группы. 
   * Зашифрованный   пароль.
   * Идентификатор группы.
   * Список членов, разделенный запятыми без пробелов.

## 2)What are the uid ranges? What is UID? How to define it?
UID обозначает идентификатор пользователя.

UID допускает использование значений от 0 до 65535 с некоторыми оговорками:

Суперпользователь всегда должен иметь UID, равный нулю (0).
Пользователю nobody обычно присваивается наибольший из возможных UID (в противоположность суперпользователю).
UID с 1 по 100 резервируются под системные нужды.

## 3)What is GID? How to define it?

GID - это идентификационный номер группы.
Номера групп указаны в /etc/groupи в поле GID /etc/passwdфайла.

## 4)How to determine belonging of user to the specific group? 

Команда id, groups.


## 5)What are the commands for adding a user to the system? What are the basic parameters required to create a user?
Команда Useradd.
Необходимые параметры:
UID, Пароль, Домашний каталог для пользователя, группа, срок действия.

## 6)How do I change the name (account name) of an existing user?

Что-бы изменить имя пользователя:
usermod -l new_username old_username

## 7)What is skell_dir? What is its structure?
Skel_dir – каталог пользователя. Содержит стандартные файлы, которые определяют стандартную среду пользователя в системе. Может переопределяться администратором .

## 8)How to remove a user from the system (including his mailbox)?
С помощью команд:
Userdel – r $username
Rm /var/mail/$username

## 9)What commands and keys should be used to lock and unlock a user account?
Passwd –l $username
Passwd –u $username

## 10)How to remove a user's password and provide him with a password-free login for subsequent password change?
Passwd –df $username

## 11)Display the extended format of information about the directory, tell about the information columns displayed on the terminal.
Команда ls выведет всю информацию об указанном каталоге.

## 12)What access rights exist and for whom (i. e., describe the main roles)? Briefly describe the acronym for access rights.
Выделяют три категории пользователей, которым могут предоставляться права на файл:

Сам владелец (u – user).

Группа (g – group).

Все остальные (o – other).

Rwx – чтение, запись, выполнение

## 13)What is the sequence of defining the relationship between the file and the user?


## 14)What commands are used to change the owner of a file (directory), as well as the mode of access to the file? Give examples, demonstrate on the terminal.
Chown [имя владельца ] [путь к файлу\дирректории]

## 15)What is an example of octal representation of access rights? Describe the umask command.
umask - это пользовательская маска (user mask), которая используется для определения конечных прав доступа.
umask "отбирает" необходимые права в нужных разрядах: 7-ка полностью все, 2-ка права на запись, 0 оставляет по умолчанию.

## 16)Give definitions of sticky bits and mechanism of identifier substitution. Give an example of files and directories with these attributes.
Sticky bit – дополнительный бит используется для директорий( в основном ), защита файлов. Пользователь не может удалить файлы которые меу не принадлежат.
Пример папка /tmp

## 17)What file attributes should be present in the command script?
Ша-бэнг (#!) в начале сценария сообщает системе, что этот файл представляет собой набор команд, которые нужно передать интерпретатору команд.
