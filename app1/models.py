from django.db import models


class API_Data(models.Model):
    Symbol = models.CharField(max_length=20)
    DayDate = models.DateField()
    OpenValue = models.FloatField()
    HighValue = models.FloatField()
    LowValue = models.FloatField()
    CloseValue = models.FloatField()
    VolumeValue = models.IntegerField()

    def __str__(self):
        return self.Symbol + '  ' + str(self.DayDate)
