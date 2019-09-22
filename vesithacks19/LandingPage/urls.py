from django.urls import path
from django.urls import include
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from . import views
from django.conf.urls import url

urlpatterns=[
    path('',views.index,name='index'),


    url(r'^test/$', views.test, name="test"),
    url(r'^history/$', views.history, name="history"),
    url(r'^edit/$', views.edit, name="edit"),

    path('login',views.render_login,name="view_login"),
    path('login_check',views.login,name='login'),
    path('log_out',views.log_out,name='logout'),
    path('submit',views.check_if_submitted,name="check_if_submitted"),

	url(r'^team_incharge_index/$', views.team_incharge_index, name="team_incharge_index"),
	url(r'^rating/$', views.rating, name="rating"),
    #url(r'^test/$', views.test, name="test"),
    #url(r'^history/$', views.history, name="history"),
    #url(r'^edit/$', views.edit, name="edit"),
    path('login_check',views.login,name="login_check"),
    #path('team_member/dabba',views.render_dabba,name="render_dabba"),
    path('add_user',views.add_user,name="add_user")
]