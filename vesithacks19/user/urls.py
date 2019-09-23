from django.urls import path
from django.urls import include
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.conf.urls import url
from . import views


urlpatterns = [
	path('',views.dashboard,name="dashboard"),
	url('addMember',views.add_teamMember,name="add_teamMember"),
	
]