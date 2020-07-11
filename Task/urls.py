"""Task URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from app1 import views as app1
from rest_framework import routers

R = routers.DefaultRouter()
R.register('', app1.API_Data)

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', app1.index, name='index'),
    path('insert/', app1.insert, name='insert'),
    path('IBM/', app1.IBM, name='IBM'),
    path('MSFT/', app1.MSFT, name='MSFT'),
    path('json/', app1.API_List.as_view()),
    path('json2/', include(R.urls)),
    path('erase/', app1.erase, name='erase'),
]
