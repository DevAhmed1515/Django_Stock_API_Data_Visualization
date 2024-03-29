# Generated by Django 2.0.7 on 2020-07-09 15:45

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='API_Data',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Symbol', models.CharField(max_length=20)),
                ('DayDate', models.DateField()),
                ('OpenValue', models.DecimalField(decimal_places=7, max_digits=7)),
                ('HighValue', models.DecimalField(decimal_places=7, max_digits=7)),
                ('LowValue', models.DecimalField(decimal_places=7, max_digits=7)),
                ('CloseValue', models.DecimalField(decimal_places=7, max_digits=7)),
                ('VolumeValue', models.DecimalField(decimal_places=7, max_digits=7)),
            ],
        ),
    ]
