# -*- coding:utf-8 -*-
""" 
@author: dongfei 
@file: urls.py 
@time: 2018-05-19 11:30
"""

from django.conf.urls import url, include
from .views import UserInfoView, ImageUploadView, UpdatePwdView, SendEmailCodeView
from .views import UpdateEmailView, MyCourseView, MyFavOrgView, MyFavTeacherView, MyFavCourseView
from .views import MymessageView
urlpatterns = [

    # 用户信息
    # url(r'^info/(?P<course_id>\d+)/$', UserInfoView.as_view(), name='user_info'),
    url(r'^info/$', UserInfoView.as_view(), name='user_info'),

    # 用户头像上传
    url(r'^image/upload/$', ImageUploadView.as_view(), name='image_upload'),

    # 用户个人中心修改密码
    url(r'^update/pwd/$', UpdatePwdView.as_view(), name="update_pwd"),

    # 发送邮箱验证码
    url(r'^sendemail_code/$', SendEmailCodeView.as_view(), name="sendemail_code"),

    # 修改邮箱
    url(r'^update_email/$', UpdateEmailView.as_view(), name="update_email"),

    # 我的课程信息
    url(r'^mycourse/$', MyCourseView.as_view(), name="mycourse"),

    # 我的收藏课程机构信息
    url(r'^myfav/org/$', MyFavOrgView.as_view(), name="myfav_org"),

    # 我的收藏课程信息
    url(r'^myfav/course/$', MyFavCourseView.as_view(), name="myfav_course"),

    # 我的收藏讲师信息
    url(r'^myfav/teacher/$', MyFavTeacherView.as_view(), name="myfav_teacher"),

    # 我的消息
    url(r'^mymessage/$', MymessageView.as_view(), name="mymessage"),

]
