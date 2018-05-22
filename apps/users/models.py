# -*- coding:utf-8 -*-
from __future__ import unicode_literals
from datetime import datetime

# 继承 Django 默认的 auth_user 表
from django.contrib.auth.models import AbstractUser
from django.db import models


# Create your models here.

class UserProfile(AbstractUser):
    nick_name = models.CharField(max_length=50, verbose_name='昵称', default="")
    birthday = models.DateField(verbose_name='生日', null=True, blank=True)
    gender = models.CharField(verbose_name='性别',choices=(('male', '男'), ('female', '女')), default='female', max_length=6)
    address = models.CharField(verbose_name='联系地址',max_length=100, default='')
    mobile = models.CharField(verbose_name='手机号码',max_length=11, null=True, blank=True)
    image = models.ImageField(verbose_name='头像路径',upload_to="image/%Y/%m", default="image/default.png", max_length=100)

    class Meta:
        verbose_name = "用户信息"
        verbose_name_plural = verbose_name


    # 获取用户未读消息的数量
    def unread_nums(self):
        from operation.models import UserMessage
        return UserMessage.objects.filter(has_read=False, user=self.id).count()

    def __unicode__(self):
        return self.username


class EmailVerifyRecord(models.Model):
    code = models.CharField(max_length=20, verbose_name='验证码')
    email = models.EmailField(max_length=50, verbose_name='邮箱')
    send_type = models.CharField(verbose_name="验证码类型", max_length=20, choices=(('register', '注册'), ('forget', '忘记密码'),('update_email', '修改密码')))
    send_time = models.DateField(verbose_name="发送时间", default=datetime.now)

    class Meta:
        verbose_name = '邮箱验证码'
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return '{0}-{1}'.format(self.code, self.email)


class Banner(models.Model):
    title = models.CharField(max_length=100, verbose_name='标题')
    image = models.ImageField(upload_to='banner/%Y/%m', verbose_name='轮播图', max_length=100)
    url = models.URLField(max_length=200, verbose_name='访问地址')
    index = models.IntegerField(default=100, verbose_name='轮播序号')
    add_time = models.DateField(default=datetime.now, verbose_name='添加时间')

    class Meta:
        verbose_name = '轮播图'
        verbose_name_plural = verbose_name
