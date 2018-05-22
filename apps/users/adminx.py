# -*- coding:utf-8 -*-
""" 
@author:dongfei 
@file: adminx.py 
@time: 2018-05-16 16:31
"""

import xadmin
from xadmin import views
from xadmin.plugins.auth import UserAdmin
from .models import EmailVerifyRecord, Banner


class BaseSetting(object):
    enable_themes = True
    use_bootswatch = True


class GlobalSettings(object):
    site_title = "慕学后台管理系统"
    site_footer = "慕学在线网"
    menu_style = "accordion"


class EmailVerifyRecordAdmin(object):
    # 定义显示顺序
    list_display = ['email', 'code', 'send_type', 'send_time']
    # 指定搜索字段
    search_fields = ['email', 'code', 'send_type', ]
    # 设置过滤器
    list_filter = ['email', 'code', 'send_type', 'send_time']
    model_icon = 'fa fa-address-book'


class BannerAdmin(object):
    list_display = ['title', 'image', 'url', 'index', 'add_time']
    search_fields = ['title', 'image', 'url', 'index']
    list_filter = ['title', 'image', 'url', 'index', 'add_time']


xadmin.site.register(EmailVerifyRecord, EmailVerifyRecordAdmin)
xadmin.site.register(Banner, BannerAdmin)
xadmin.site.register(views.BaseAdminView, BaseSetting)
xadmin.site.register(views.CommAdminView, GlobalSettings)

# from django.contrib.auth.models import User
# from .models import UserProfile
#
# class UserProfileAdmin(UserAdmin):
#     pass
# xadmin.site.unregister(User)
# xadmin.site.register(User, UserAdmin)
# xadmin.site.unregister(UserProfile)
# xadmin.site.register(UserProfile, UserProfileAdmin)
