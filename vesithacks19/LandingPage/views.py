from django.shortcuts import render
from django.shortcuts import HttpResponse

# Create your views here.
def index(request):
    return render(request,'index.html')

def test(request):
    return render(request,'team_member/team_member_index.html')

def history(request):
    return render(request, "team_member/team_member_history.html")

def edit(request):
    return render(request, "team_member/edit_profile.html")