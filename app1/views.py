from django.db import connection
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render
from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework import viewsets
from . import models, json
import requests


# ONLY GET
class API_List(APIView):
    def get(self, request):
        v1 = models.API_Data.objects.all()
        v2 = json.JsonAPI_Data(v1, many=True)
        return Response(v2.data)


# All CRUD Operations
class API_Data(viewsets.ModelViewSet):
    queryset = models.API_Data.objects.all()
    serializer_class = json.JsonAPI_Data


def insert(request):
    api = 'https://www.alphavantage.co/query?function=TIME_SERIES_DAILY&symbol=IBM&apikey=demo'
    api2 = 'https://www.alphavantage.co/query?function=TIME_SERIES_DAILY&symbol=MSFT&apikey=demo'
    IBM_Data = requests.get(api).json()
    MSFT_Data = requests.get(api2).json()

    for key in IBM_Data['Time Series (Daily)']:
        obj = models.API_Data(Symbol='IBM', DayDate=key,
                              OpenValue=IBM_Data['Time Series (Daily)'][key]['1. open'],
                              HighValue=IBM_Data['Time Series (Daily)'][key]['2. high'],
                              LowValue=IBM_Data['Time Series (Daily)'][key]['3. low'],
                              CloseValue=IBM_Data['Time Series (Daily)'][key]['4. close'],
                              VolumeValue=IBM_Data['Time Series (Daily)'][key]['5. volume']
                              )
        obj.save()
    for key2 in MSFT_Data['Time Series (Daily)']:
        obj2 = models.API_Data(Symbol='MSFT', DayDate=key2,
                               OpenValue=MSFT_Data['Time Series (Daily)'][key2]['1. open'],
                               HighValue=MSFT_Data['Time Series (Daily)'][key2]['2. high'],
                               LowValue=MSFT_Data['Time Series (Daily)'][key2]['3. low'],
                               CloseValue=MSFT_Data['Time Series (Daily)'][key2]['4. close'],
                               VolumeValue=MSFT_Data['Time Series (Daily)'][key2]['5. volume']
                               )
        obj2.save()

    return HttpResponseRedirect('/')


def IBM(request):
    data = models.API_Data.objects.filter(Symbol='IBM').order_by('-DayDate')
    data1 = [{'id': blog.id, 'Symbol': blog.Symbol,
              'DayDate': blog.DayDate,
              'OpenValue': blog.OpenValue,
              'HighValue': blog.HighValue,
              'LowValue': blog.LowValue,
              'CloseValue': blog.CloseValue,
              'VolumeValue': blog.VolumeValue} for blog in data]

    Dates = [];   Open = [];   High = [];   Low = [];   Close = [];   Volume = []

    for i in range(len(data1)):
        Dates.append(str(data1[i]["DayDate"].strftime("%d %b")))
        Open.append(data1[i]["OpenValue"])
        High.append(data1[i]["HighValue"])
        Low.append(data1[i]["LowValue"])
        Close.append(data1[i]["CloseValue"])
        Volume.append(data1[i]["VolumeValue"])

    return render(request, 'IBM.html',
                  {'Dates': Dates, 'Open': Open, 'High': High, 'Low': Low, 'Close': Close, 'Volume': Volume})


def MSFT(request):
    data = models.API_Data.objects.filter(Symbol='MSFT').order_by('-DayDate')
    data1 = [{'id': blog.id, 'Symbol': blog.Symbol,
              'DayDate': blog.DayDate,
              'OpenValue': blog.OpenValue,
              'HighValue': blog.HighValue,
              'LowValue': blog.LowValue,
              'CloseValue': blog.CloseValue,
              'VolumeValue': blog.VolumeValue} for blog in data]

    Dates = [];   Open = [];   High = [];   Low = [];   Close = [];   Volume = []

    for i in range(len(data1)):
        Dates.append(str(data1[i]["DayDate"].strftime("%d %b")))
        Open.append(data1[i]["OpenValue"])
        High.append(data1[i]["HighValue"])
        Low.append(data1[i]["LowValue"])
        Close.append(data1[i]["CloseValue"])
        Volume.append(data1[i]["VolumeValue"])

    return render(request, 'MSFT.html',
                  {'Dates': Dates, 'Open': Open, 'High': High, 'Low': Low, 'Close': Close, 'Volume': Volume})


def index(request):
    return render(request, 'index.html', {})


def erase(request):
    cursor = connection.cursor()
    cursor.execute("TRUNCATE TABLE `app1_api_data`")
    return HttpResponseRedirect('/')