# Generated by Django 2.0.7 on 2020-07-09 16:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app1', '0002_auto_20200709_1708'),
    ]

    operations = [
        migrations.AlterField(
            model_name='api_data',
            name='CloseValue',
            field=models.FloatField(),
        ),
        migrations.AlterField(
            model_name='api_data',
            name='HighValue',
            field=models.FloatField(),
        ),
        migrations.AlterField(
            model_name='api_data',
            name='LowValue',
            field=models.FloatField(),
        ),
        migrations.AlterField(
            model_name='api_data',
            name='OpenValue',
            field=models.FloatField(),
        ),
    ]