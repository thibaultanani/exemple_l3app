from django.contrib.auth.hashers import make_password
from django.shortcuts import render, redirect, HttpResponse
from .forms import InscriptionForm

from django.contrib.auth.hashers import check_password  # Pour vérifier le mot de passe
from django.contrib import messages
from App1.models import Utilisateur

# Create your views here.


def index(request):
    return HttpResponse("Hello, world. You're at the App1 index.")


def inscription(request):
    if request.method == 'POST':
        form = InscriptionForm(request.POST)
        if form.is_valid():
            utilisateur = form.save(commit=False)
            # Hachage du mot de passe avant de sauvegarder
            utilisateur.mot_de_passe = make_password(form.cleaned_data['mot_de_passe'])
            utilisateur.save()
            form.save_m2m()  # Sauvegarder les relations Many-to-Many (groupes)
            return redirect('connexion')  # Redirigez vers une page de connexion
    else:
        form = InscriptionForm()
    return render(request, 'inscription.html', {'form': form})


def connexion(request):
    if request.method == 'POST':
        email = request.POST.get('email')
        mot_de_passe = request.POST.get('mot_de_passe')

        # Vérification de l'utilisateur
        try:
            utilisateur = Utilisateur.objects.get(email=email)
        except Utilisateur.DoesNotExist:
            messages.error(request, "Adresse email incorrecte.")
            return render(request, 'connexion.html')

        # Vérification du mot de passe
        if check_password(mot_de_passe, utilisateur.mot_de_passe):
            # Sauvegarde de l'utilisateur dans la session
            request.session['utilisateur_id'] = utilisateur.id
            request.session['utilisateur_nom'] = utilisateur.nom
            return redirect('dashboard')  # Redirection après connexion
        else:
            messages.error(request, "Mot de passe incorrect.")
            return render(request, 'connexion.html')

    return render(request, 'connexion.html')


def dashboard(request):
    # Vérification de l'utilisateur connecté
    utilisateur_id = request.session.get('utilisateur_id')
    if not utilisateur_id:
        return redirect('connexion')  # Redirige vers la page de connexion si non connecté

    utilisateur = Utilisateur.objects.get(id=utilisateur_id)
    return render(request, 'dashboard.html', {'utilisateur': utilisateur})


def deconnexion(request):
    request.session.flush()  # Supprime toutes les données de session
    return redirect('connexion')  # Redirection vers la page de connexion

