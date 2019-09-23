from django.shortcuts import render,HttpResponse
import json

def dashboard(request):
	return render(request,'user/add_team.html')

def add_teamMember(request):
	return HttpResponse(json.dumps({'name': 'vignesh'}), content_type="application/json")