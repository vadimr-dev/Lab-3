@echo off

chcp 65001

mkdir "Лабораторні\Група ПЗ-22-3\Реутов Вадим Максимович\Командна стрічка\Прихована папка"
mkdir "Лабораторні\Група ПЗ-22-3\Реутов Вадим Максимович\Командна стрічка\Не прихована папка"

tree /a /f

attrib +h "Лабораторні\Група ПЗ-22-3\Реутов Вадим Максимович\Командна стрічка\Прихована папка"

xcopy /? > "Лабораторні\Група ПЗ-22-3\Реутов Вадим Максимович\Командна стрічка\Не прихована папка/copyhelp.txt

echo f | xcopy "Лабораторні\Група ПЗ-22-3\Реутов Вадим Максимович\Командна стрічка\Не прихована папка"\copyhelp.txt /y "Лабораторні\Група ПЗ-22-3\Реутов Вадим Максимович\Командна стрічка\Прихована папка"\copied_copyhelp.txt

mkdir "Лабораторні\Група ПЗ-22-3\Реутов Вадим Максимович\bath\Прихована папка"
mkdir "Лабораторні\Група ПЗ-22-3\Реутов Вадим Максимович\bath\Не прихована папка"

tree /a /f

attrib +h "Лабораторні\Група ПЗ-22-3\Реутов Вадим Максимович\bath\Прихована папка"

xcopy /? > "Лабораторні\Група ПЗ-22-3\Реутов Вадим Максимович\bath\Не прихована папка/copyhelp.txt

echo f | xcopy "Лабораторні\Група ПЗ-22-3\Реутов Вадим Максимович\bath\Не прихована папка"\copyhelp.txt /y "Лабораторні\Група ПЗ-22-3\Реутов Вадим Максимович\bath\Прихована папка"\copied_copyhelp.txt

pause