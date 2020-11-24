from django.http import HttpResponse
from django.shortcuts import render
from rest_framework.response import Response
import joblib
import json
from rest_framework.decorators import api_view

def home(request):
	return HttpResponse("<h1>This is home</h1>")

@api_view()
def result(Request,country):
	filename = country+'_predictModel.sav'
	print("name of country: ",country)
	cls = joblib.load(filename)
	'''s = str(cls)
	json_str = json.dumps(s)
	print(json_str)'''
	return Response({"ans":cls})
	#return render(request,"result.html", {"ans" : cls})