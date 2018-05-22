# -*- coding:utf-8 -*-
""" 
@author: dongfei 
@file: mixin_utils.py 
@time: 2018-05-19 20:35
"""

from django.contrib.auth.decorators import login_required
from django.utils.decorators import method_decorator


class LoginRequireMixin(object):
    @method_decorator(login_required(login_url='/login/'))
    def dispatch(self, request, *args, **kwargs):
        return super(LoginRequireMixin, self).dispatch(request, *args, **kwargs)