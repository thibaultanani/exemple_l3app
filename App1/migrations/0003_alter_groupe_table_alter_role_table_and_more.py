# Generated by Django 5.1.3 on 2024-11-21 00:19

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('App1', '0002_alter_groupe_table_alter_role_table'),
    ]

    operations = [
        migrations.AlterModelTable(
            name='groupe',
            table='app1_groupe',
        ),
        migrations.AlterModelTable(
            name='role',
            table='app1_role',
        ),
        migrations.AlterModelTable(
            name='utilisateur',
            table='app1_utilisateur',
        ),
    ]
