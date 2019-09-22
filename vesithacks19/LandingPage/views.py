from django.shortcuts import render
from django.shortcuts import *
from django.contrib.auth import logout
# import mysql.connector
from django.db import connection
import json

# conn=mysql.connector.connect(host="localhost",database="ratingSystem",user="root",password="")
# cursor=conn.cursor()
# Create your views here.
def index(request):
    return render(request,'index.html')

def test(request):
    return render(request,'team_member/team_member_index.html')

def history(request):
    return render(request, "team_member/team_member_history.html")


def edit(request):
    return render(request, "team_member/edit_profile.html")

def team_incharge_index(request):
    return render(request,'team_incharge/team_incharge_index.html')

def team_incharge_dabba(request):
    return render(request,'team_incharge/dabba.html')

def team_incharge_index(request):
    return render(request,'team_incharge/team_incharge_index.html')

def rating(request):
    return render(request, "team_incharge/team_incharge_rating.html")

def render_login(request):
    return render(request,'login.html')

def login(request):
    with connection.cursor() as cursor:        
        res=cursor.execute("select ssn,email,t_id from user where email='{}'".format(request.user.email))
        res=cursor.fetchall()
        if len(res)==0:
            return render(request,'login.html',{"error" : "You are not part of the registery of the domain"})
        else:
            request.session["email"]= request.user.email
            request.session["ssn"]=res[0][0]
            if len(res[0][2])>1:
                result=eval(res[0][2])
                x=list(result.keys())
                print(x)
                roles=dict()
                for i in range(len(x)):
                    t=dict()
                    for k,v in result.items():
                        t["role"]=v[0]
                        t["designation"]=v[1]
                        t["team_id"]=k
                        team_details=cursor.execute("select team_name from team where t_id = {}".format(x[i]))
                        team_details=cursor.fetchall()
                        t["team_name"]=team_details[0][0]
                    roles[i]=t
                request.session["roles"]=roles
                return HttpResponse(str(request.session.items()))
                return render(request,'login.html',{"error": ''})
            elif res[0][2]=="0":
                return render(request,'dashboard.html')
                
    
def log_out(request):
    logout(request)
    return HttpResponseRedirect('/login')

def check_if_submitted(request):
    request.session["current_team"]=1
    res=cursor.execute("select members from team where t_id= {} ".format(request.session["current_team"]))
    res=cursor.fetchone()
    ssn_array=eval(res[0])
    ssn_array=list(ssn_array)
    rating=dict()
    k=0
    for i in range(len(ssn_array)):
        res=cursor.execute("select task_id,rating from tasks where team_id= {} and ssn = {}".format(request.session["current_team"],ssn_array[i]))
        res=cursor.fetchall()
        #print(res)
        for j in range(len(res)):
            if(res==[]):
                t={
                    "ssn": ssn_array[i],
                    "rating": "not found",
                    "task_id" : -1
                }
            else:
                try:
                    y= eval(res[j][1]),
                except:
                    y=""
                t={
                    "ssn": ssn_array[i],
                    "rating": y,
                    "task_id": res[j][0]
                }
            rating[k]=t
            k+=1
        #print(ssn_array[i],rating[i])
        #print(rating)  
    a=0
    final_rating=dict()
    for i in rating.values():
        #print(i)
        if(i["rating"]=="not found" or i["rating"]==""):
                continue
        #print(v)
        r=int()
        k=0
        for x in i["rating"][0].values():
            for z in x.values():
                r+=float(z)
                k+=1
        r=r/k
        final_rating[a]={
            "ssn":i["ssn"],
            "task_id": i["task_id"],
            "final_rating": r
        }
        a+=1
    #print(final_rating)
#print(rating)
    return HttpResponse("In the function")
