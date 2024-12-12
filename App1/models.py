from django.db import models

# Create your models here.


class Role(models.Model):
    nom = models.CharField(max_length=50)

    class Meta:
        db_table = 'app1_role'

    def __str__(self):
        return self.nom


class Groupe(models.Model):
    nom = models.CharField(max_length=100)

    class Meta:
        db_table = 'app1_groupe'

    def __str__(self):
        return self.nom


class Utilisateur(models.Model):
    nom = models.CharField(max_length=100)
    email = models.EmailField(unique=True)
    mot_de_passe = models.CharField(max_length=255)
    role = models.ForeignKey(Role, on_delete=models.SET_NULL, null=True)
    groupes = models.ManyToManyField(Groupe, blank=True)

    class Meta:
        db_table = 'app1_utilisateur'

    def __str__(self):
        return self.nom