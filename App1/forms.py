from django import forms
from .models import Utilisateur, Role, Groupe


class InscriptionForm(forms.ModelForm):
    mot_de_passe = forms.CharField(widget=forms.PasswordInput, label="Mot de passe")
    confirmer_mot_de_passe = forms.CharField(widget=forms.PasswordInput, label="Confirmer le mot de passe")
    groupes = forms.ModelMultipleChoiceField(
        queryset=Groupe.objects.all(),
        widget=forms.CheckboxSelectMultiple,
        required=False,
        label="Groupes"
    )

    class Meta:
        model = Utilisateur
        fields = ['nom', 'email', 'mot_de_passe', 'role', 'groupes']
        labels = {
            'nom': 'Nom',
            'email': 'Email',
            'role': 'Rôle',
        }

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        # Définir le rôle par défaut comme "Utilisateur"
        self.fields['role'].initial = Role.objects.filter(nom="Utilisateur").first()

    def clean(self):
        cleaned_data = super().clean()
        mot_de_passe = cleaned_data.get("mot_de_passe")
        confirmer_mot_de_passe = cleaned_data.get("confirmer_mot_de_passe")
        if mot_de_passe != confirmer_mot_de_passe:
            self.add_error('confirmer_mot_de_passe', "Les mots de passe ne correspondent pas.")
        return cleaned_data
