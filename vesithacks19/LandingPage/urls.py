from django.urls import path
from django.urls import include
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from . import views
from django.conf.urls import url

urlpatterns=[
    path('',views.index,name='index'),
    url(r'^test/$', views.test, name="test"),
]