from show.views import *
from django.urls import include, re_path
urlpatterns=[
    re_path(r'$', show, name='show'),
]