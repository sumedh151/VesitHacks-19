from django.shortcuts import render
from django.shortcuts import *
from django.contrib.auth import logout
import mysql.connector
from django.db import connection
import json
import time

conn=mysql.connector.connect(host="localhost",database="ratingSystem",user="root",password="")
cursor=conn.cursor()

def team_incharge_edit(request):
    return render(request, "team_incharge/team_incharge_edit_profile.html")
    pass
# Create your views here.
def index(request):
    return render(request,'index.html')

def edit(request):
    return render(request, "team_member/edit_profile.html")
    
    #return render(request,'layout/index.html')

def team_incharge_index(request):
    return render(request,'team_incharge/team_incharge_index.html')

def rating(request):
    return render(request, "team_incharge/team_incharge_rating.html")

def admin_index(request):
    return render(request,'admin/admin_index.html')

def admin_rating(request):
    return render(request, "admin/admin_rating.html")

def render_login(request):
    return render(request,'login.html')

def login(request):
    global cursor
    
    res=cursor.execute("select ssn,email,t_id,name from user where email='{}'".format(request.user.email))


    res=cursor.fetchall()
    
    #print(str(request.session.items()))
    result=dict()
    if len(res)==0:
        return render(request,'login.html',{"error" : "You are not part of the registery of the domain"})
    
    else:
        request.session["email"]= request.user.email
        request.session["ssn"]=res[0][0]
        request.session["id"] = res[0][0]
        request.session["name"] = res[0][-1]
        if len(res[0][2])>1:
            result=eval(res[0][2])
            #print(result)
            x=list(result.keys())
            #print(x)
            roles=dict()
            i = 0
                
            for k,v in result.items():
                t=dict()
                t["role"]=v[0]
                t["designation"]=v[1]
                t["team_id"]=k
                #print(k)
                team_details=cursor.execute("select team_name from team where t_id = {}".format(x[i]))
                team_details=cursor.fetchall()
                t["team_name"]=team_details[0][0]
                #print(t)
                roles[i]=t
                i+=1
            #print(roles)

            request.session["roles"]=roles
            request.session["error"]=""
            # return HttpResponse(str(request.session.items()))
            #return HttpResponse(str(request.session['email']))
            #print(request.session.items())
            #data = {
                #'email' : request.session['email']
            #}
            data=dict()
            for i in range(len(request.session["roles"])):
                data[i]=request.session["roles"][i]
            print(data)
            #print(type(data))
            return render(request,'team_incharge/dabba.html',{"data": data})
        elif res[0][2]=="0":
            return render(request,'team_member/dabba.html')
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
    return render(request, "index.html")

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

def add_user(request):
    with connection.cursor() as cursor:
        x=dict()
        x[request.session["current_team"]]=[1,'team member']
        sql = "Select email from user where email='{}'".format(request.POST["email"])
        # return HttpResponse(sql)
        res=cursor.execute(sql)
        res=cursor.fetchall()
        # print(res)
        # return HttpResponse(str(res))
        if len(res)>0:
            return HttpResponseRedirect('/team_member/dabba',{"Error ": "This member already exists in the organization ","Success": ""})
        else :
            print(123)
            sql = "SELECT max(ssn) from user"
            cursor.execute(sql)
            res = cursor.fetchall()[0][0]
            ssn = int(res) + 1 
            sql = "Insert into user(ssn,name,email,dob,t_id) values('{}','{}','{}','{}',{})".format(ssn,request.POST["name"],request.POST["email"],request.POST["dob"],'"' + str(x) + '"')
            # print(sql)
            # return HttpResponse(sql)
            res=cursor.execute(sql)
            # cursor.commit()
            sql = "select ssn,t_id from user  where email='{}'".format(request.POST["email"])
            cursor.execute(sql)
            res = cursor.fetchall()
            # print(res)
            return HttpResponseRedirect('/team_member/dabba',{"success":"","error":""})

def team_member_dashboard_render(request, id):
    team_id = int(id)
    request.session["current_team"] = id
    #email = "2017.harshita.singh@ves.ac.in"
    #print(request.session.items())
    cursor.execute("SELECT name, t_id FROM user WHERE ssn = {}".format(request.session["ssn"]))
    result = cursor.fetchone()
    #print(eval(result[1]))
    details = {
        "name" : result[0],
        "designation" : eval(result[1])[team_id][1]
    }
    
    cursor.execute("SELECT task_id, deadline, rating from tasks where team_id = {} and ssn = {}".format(id,request.session["ssn"]))
    result = cursor.fetchall()
    l = list(range(0,len(result)))
    data = dict()

    i = 0

    for x in result:
        deadlines = list(eval(x[2]).items())
        d=list()
        for _ in deadlines:
            if _[1] == {}:
                d.append({str(_[0]):0})
            else:
                d.append({str(_[0]):1})
        #data.append({"task_id" : x[0], "deadline" : deadlines}) 
        data[str(i)] = {"task_id" : x[0], "deadline" : d}
        i+=1
    context = dict()
    context["data"] = data
    context["details"] = details
    context["len"] = i
    try:
        request.session["team_member_details"] = context
    except Exception as identifier:
        pass
    
    return render(request,'team_member/team_member_index.html', context)

def team_member_history(request):
    return render(request, "team_member/team_member_history.html")

def team_incharge_index(request, id):
    request.session["current_team"] = id
    cursor.execute("SELECT name, t_id FROM user WHERE ssn = {}".format(request.session["ssn"]))
    result = cursor.fetchone()
    #print(eval(result[1]))
    details = {
        "name" : result[0],
        "designation" : eval(result[1])[id][1]
    }
    cursor.execute("SELECT members, team_status FROM team WHERE t_id = {} and mgr_ssn = {}".format(id,request.session["ssn"]))
    users = list(eval(cursor.fetchone()[0]).keys())
    print(users)
    data = dict()
    d = list()
    param = []
    p = dict()
    for i in users :
        cursor.execute("SELECT name FROM user WHERE ssn = {}".format(i))
        name = cursor.fetchone()[0] 
        cursor.execute("SELECT task_id,rating FROM tasks WHERE team_id = {} and ssn = {}".format(id,i))
        result = cursor.fetchall()
        #print(result)
        if result == [] or result == None:
            data[str(id)] = {"name" : name, "submitted" : 0, "ranking" : -1, "task_id" : 0}
        else :
            for x in result:
                if x[1] == "" or x[1] == None:
                    data[str(i)] = {"name" : name, "submitted" : 0, "ranking" : -1, "task_id" : x[0]}
                    #d.append(data)
                else : 
                    #d = list(map(int,eval(x[1]).values()))
                    d = list(eval(x[1]).values())
                    p = eval(x[1])
                    if param == [] :
                        k = list(p.keys())
                        for _ in k:
                            param = list(p[_].keys())
                    
                    avg = 0
                    l = 0
                    for y in d:
                        y = list(map(int,y.values()))
                        l += len(y)
                        avg += sum(y)
                    avg  = int(avg/l)
                data[str(i)] = {"name" : name, "submitted" : 1, "total_rating" : avg, "task_id" : x[0], "param" : p}
        #print(data)
    context = {"data" : data, "details" : details}
    request.session["team_incharge_details"] = context
    request.session["param"] = param    
    print(p)
    return render(request, "team_incharge/team_incharge_index.html", context)

    request.session["team_member_details"] = context
    return render(request,'team_member/team_member_index.html', context)

def rating(request):
    data = request.session["team_incharge_details"]["data"]
    for i,j in data.items():
        if "param" in list(j.keys()):
            for _ in list(j["param"].keys()):
                l = list(j["param"][_].values())
                avg = int(sum(l)/len(l))
                j["param"][_]["rating"] = avg
    return render(request, "team_incharge/team_incharge_rating_view.html")

def render_dabba(request):
    return redirect('/login_check')
    # return render("team_member.html/dabba.html")

def create_notification(request):
    # return HttpResponse("123")
    with connection.cursor() as cursor:
        try:
            ssn = request.session['ssn']
        except:
            ssn = 1
            # pass
        # content = request.POST['content']
        content = "456465"
        # to = request.POST['to']
        to = 25

        # Find sedner team path
        # sender_team_id = request.POST['sender_team_id']
        sender_team_id = 1
        sql = "SELECT team_path from team where t_id = '{}'".format(sender_team_id)
        # return HttpResponse(sql)
        cursor.execute(sql)
        res = eval(cursor.fetchall()[0][0])
        # return HttpResponse(res[1]) 
        sender_team_path = res
        # return HttpResponse(sender_team_path)

        # Find receiver team path
        # receiver_team_id = request.POST['receiver_team_id']
        receiver_team_id = 2
        sql = "SELECT team_path from team where t_id = '{}'".format(receiver_team_id)
        cursor.execute(sql)
        res = eval(cursor.fetchall()[0][0])
        receiver_team_path = res
        index_r = None
        index_s = None
        # return HttpResponse(len(receiver_team_path))
        for i in sender_team_path:
            if(i in receiver_team_path):
                index_r = receiver_team_path.index(i)
                index_s = sender_team_path.index(i)
                break
        # sql = "select * from user where ssn = '1'"
        # cursor.execute(sql)
        # res = cursor.fetchall()[0]
        # return HttpResponse(str(res[1]))
        # return HttpResponse("{} {}".format(index_r,index_s))
        if(index_r):
            sender_team_path = sender_team_path[:(index_s+1)]
            receiver_team_path = receiver_team_path[:(index_r+1)]
            dict1 = {ssn:{'1':[sender_team_path[0]],'0':[],'to':to}}

            # return HttpResponse(dict1.items())
            # Find maaximum notification id
            sql = "SELECT max(note_id) from notifications"
            cursor.execute(sql)
            res = cursor.fetchone()[0]
            # print(res,type(res))
            # return HttpResponse(123)
            note_id = res+1
            # return HttpResponse(str(note_id))
            init = time.strftime('%Y-%m-%d %H:%M:%S')
            sql = "INSERT into notifications(note_id,ssn,initiated_at,content) values ('{}','{}','{}',{})".format(note_id,ssn,init,'"' + str(dict1) + '"')
            # print(sql)
            cursor.execute(sql)
            # res = curso   r.fetchall()

            # Check a tuple exists for the person if not insert or update it
            sql = "SELECT count(*) from store_notifications where ssn = {}".format(sender_team_path[0])
            cursor.execute(sql)
            res = cursor.fetchall()[0]
            if(res):
                sql = "SELECT last_updated,note_list from store_notifications where ssn = {}".format(ssn)
                cursor.execute(sql)
                res = cursor.fetchall()[0]
                last_updated = init
                notify = res[1].insert(0,[to,1,content])
                sql = "INSERT into store_notifications(ssn,last_updated,note_list) values('{}','{}',{})".format(ssn,last_updated,'"' + str(notify) + '"')
                cursor.execute(sql)
            else:
                sql = "INSERT into store_notifications(ssn,last_updated,note_list) values('{}','{}',{})".format(ssn,init,'NULL')
                cursor.execute(sql)
        return redirect('/login_check')


def forward_notification(request):
    pass


def display_notification(request):
    try:
        ssn = request.session['ssn']
    except:
        ssn = 1
        # pass
    content = request.POST['content']
    to = request.POST['to']
    try:
        forward = request.POST['formard']

    except:
        pass
