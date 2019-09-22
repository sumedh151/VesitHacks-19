print("Hello World!") #make changes here and push
print("Jay Tested this")

def test(request):
    return render(request,'team_member/team_member_index.html')

def history(request):
    return render(request, "team_member/team_member_history.html")

def edit(request):
    return render(request, "team_member/edit_profile.html")