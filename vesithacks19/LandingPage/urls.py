from django.urls import path
from django.urls import include
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from . import views

urlpatterns=[
    path('',views.index,name='index'),
]