# -*- coding:utf-8 -*-

from __future__ import unicode_literals

from django.db import models
from datetime import datetime
from users.models import UserProfile
from courses.models import Course


# Create your models here.

# 用户学习表单
class UserAsk(models.Model):
    name = models.CharField(max_length=20, verbose_name="姓名")
    mobile = models.CharField(max_length=11, verbose_name="手机")
    course_name = models.CharField(max_length=50, verbose_name="课程名")
    add_time = models.DateTimeField(default=datetime.now, verbose_name="添加时间")

    class Meta:
        verbose_name = "用户咨询"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return '用户: {0} 手机号: {1}'.format(self.name, self.mobile)


# 用户对于课程评论
class CourseComments(models.Model):
    # 会涉及两个外键: 1. 用户， 2. 课程。
    course = models.ForeignKey(Course, verbose_name="课程")
    user = models.ForeignKey(UserProfile, verbose_name="用户")
    comments = models.CharField(max_length=200, verbose_name="评论")
    add_time = models.DateTimeField(default=datetime.now, verbose_name="评论时间")

    class Meta:
        verbose_name = "课程评论"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return '用户({0})对于《{1}》 评论 :'.format(self.user, self.course)


# 用户对于课程,机构，讲师的收藏
class UserFavorite(models.Model):
    # 会涉及四个外键。用户，课程，机构，讲师import
    user = models.ForeignKey(UserProfile, verbose_name="用户")
    # 直接保存用户的id.
    fav_id = models.IntegerField(default=0)
    # 表明收藏的是哪种类型。
    fav_type = models.IntegerField(
        choices=((1, "课程"), (2, "课程机构"), (3, "讲师")),
        default=1,
        verbose_name="收藏类型")
    add_time = models.DateTimeField(default=datetime.now, verbose_name="评论时间")

    class Meta:
        verbose_name = "用户收藏"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return '用户--{0}--收藏--{1} '.format(self.user.username, "成功")


# 用户消息表
class UserMessage(models.Model):
    # 因为我们的消息有两种:发给全员和发给某一个用户。
    # 所以如果使用外键，每个消息会对应要有用户。很难实现全员消息。
    # 机智版 为0发给所有用户，不为0就是发给用户的id
    user = models.IntegerField(default=0, verbose_name=u"接收用户")
    message = models.CharField(max_length=500, verbose_name=u"消息内容")

    # 是否已读: 布尔类型 BooleanField False未读,True表示已读
    has_read = models.BooleanField(default=False, verbose_name=u"是否已读")
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")


    class Meta:
        verbose_name = u"用户消息"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return '用户--{0}--增加消息--{1} '.format(self.user, self.message)


# 用户课程表
class UserCourse(models.Model):
    # 会涉及两个外键: 1. 用户， 2. 课程。import进来
    user = models.ForeignKey(UserProfile, verbose_name=u"用户")
    course = models.ForeignKey(Course, verbose_name=u"课程")
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")

    class Meta:
        verbose_name = u"用户课程"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return '用户--{0}--增加课程--{1} '.format(self.user, self.course)
