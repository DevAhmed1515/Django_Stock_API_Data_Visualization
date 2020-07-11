from . import models
from rest_framework import serializers


class JsonAPI_Data(serializers.ModelSerializer):
    class Meta:
        model = models.API_Data
        fields = '__all__'
