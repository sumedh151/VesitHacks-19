from django.shortcuts import render
from django.shortcuts import HttpResponse
# Create your views here.
def index(request):
    return HttpResponse("<h1>Hi</h1><a href=/login/google-oauth2>Login</a>")
