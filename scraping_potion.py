import pandas as pd
from bs4 import BeautifulSoup
import requests
import re
import html as htm

def recup_potions(url):
    '''Cette fonction permet de récupérer les liens et les titres de toutes les potions présentent
    sur la page d'acceuil du wiki, elle stocke le résultat dans un dataframe pandas qu'elle renvoie à la fin'''
    response = requests.get(url)
    html = response.content
    soupe_obj = BeautifulSoup(html, 'html.parser')
    potions = soupe_obj.find_all(class_="category-page__member-link")
    potions = [[i.get("title"), "https://harrypotter.fandom.com"+i.get("href")] for i in potions] 
    df = pd.DataFrame(potions, columns=['titres_potions', 'liens'])
    df = df[~df['titres_potions'].str.contains(':|^Potion$')] #permet d'enlever les éléments qui ne sont pas des potions
    df = df.reset_index(drop=True)
    return df


def create_csv(df1):
    '''cette fonction parcours les différents url du datframe passé en paremètres pour récolter les informations des potions 
    du site directement sur leur pages dédiées'''
    info_potions = []
    compteur = 1
    for i in df1.iloc[:, 1]: #le parcours 
        print(f"\r{compteur}/{len(df1.iloc[:, 1])}", end='', flush=True) #affichage instantané d'un compteur qui écrase l'ancien pour afficher une seule ligne
        response = requests.get(i)
        html = response.content
        soupe_obj = BeautifulSoup(html, 'html.parser') #on parse a page html obtenue avec beautifulsoup

        #ce qui suit constitue uniquement du traitement de dataframe et de la récolte d'informations avec l'obj 
        #correspondant au html parsé entre des balises spécifiques que l'on a observé en amont
        effect = soupe_obj.find('div', {'data-source': 'Effets'})
        effect = soupe_obj.find('div', {'data-source': 'Effets secondaires'}) if not(effect) else effect
        if effect:
            effect = effect.find('div', class_='pi-data-value')
            if effect:
                effect = effect.get_text(strip=True)

        desc_visuelle = soupe_obj.find('div', {'data-source': 'Description'})
        if desc_visuelle:
            desc_visuelle = desc_visuelle.find('div', class_='pi-data-value')
            if desc_visuelle:
                if desc_visuelle.find_all('li'):
                    desc_visuelle = [i.get_text(strip=True) for i in desc_visuelle.find_all('li')]
                else:
                    desc_visuelle = desc_visuelle.get_text(strip=True)

        ingredients = soupe_obj.find('div', {'data-source': 'Ingrédients'})
        if ingredients:
            ingredients = ingredients.find('div', class_='pi-data-value')
            if ingredients:
                if ingredients.find('li'):
                    ingredients = ingredients.find_all('li')
                    for j in range(len(ingredients)):
                        ingredients[j] = re.sub(r'<[^>]+>','', ingredients[j].get_text(strip=True))
                        ingredients[j] = re.sub(r'\[[^\]]+\]','', ingredients[j])
                else :
                    if ingredients.find('a'):
                        ingredients = [i.get_text(strip=True) for i in ingredients.find_all('a', title=True)]
                    elif ingredients.find('span'):
                        ingredients = [i.get_text(strip=True) for i in ingredients.find_all('span')]
                    else:
                        ingredients = ingredients.get_text(strip=True)

        inventeur = soupe_obj.find('div', {'data-source': 'Inventeur'})
        if inventeur:
            inventeur = inventeur.find('div', class_='pi-data-value')
            if inventeur:
                inventeur = inventeur.find('a', title=True).get_text(strip=True)

        difficulté = soupe_obj.find('div', {'data-source': 'Difficulté'})
        if difficulté:
            difficulté = difficulté.find('div', class_='pi-data-value')
            if difficulté:
                difficulté = difficulté.get_text(strip=True)
        
        lien_image = soupe_obj.find('figure', {'data-source': 'Image'})
        if lien_image:
            lien_image = lien_image.find('img')
            if lien_image:
                lien_image = lien_image.get("src")
        
        premiere_apparition = soupe_obj.find('div', {'data-source': 'Première'})
        if premiere_apparition:
            premiere_apparition = premiere_apparition.find('div', class_='pi-data-value')
            if premiere_apparition:
                premiere_apparition = premiere_apparition.find('a', title=True).get("title")

        categories = soupe_obj.find('ul', {'class': 'categories'})
        if categories:
            categories = categories.find_all('span', class_='name')
            categories = [i.find('a').get_text(strip=True) for i in categories]

        desc_globale = soupe_obj.find('meta', {'name': 'description'})
        if desc_globale:
            desc_globale = htm.unescape(desc_globale.get("content"))
            
        info_potions.append([desc_globale, effect, desc_visuelle, inventeur, ingredients, premiere_apparition, categories, difficulté, lien_image])
        compteur+=1
    
    #on transforme le tableau en df qu'on concatène avec df1 qui contenait titre + lien et on écris tout ça dans un csv bdd_potions_init.csv
    df2 = pd.DataFrame(info_potions, columns=['desc_globale', 'effects', 'desc_visuelle', 'inventeur', 'ingredients', 'premiere_apparition', 'categories', 'difficulté', 'lien_image'])
    result = pd.concat([df1, df2], axis=1)
    result.to_csv('bdd_potions_init.csv', sep=';')

def main():
    '''main du programme, il définit la variable url et appel les 2 fonctions utiles'''
    url = "https://harrypotter.fandom.com/fr/wiki/Cat%C3%A9gorie:Potions"
    df = recup_potions(url)
    create_csv(df)
    
    
if __name__ == "__main__" :
    main()