from django import forms
import os 
from django.core.exceptions import ValidationError
class FileUploadForm(forms.Form):
    file= forms.FileField()

