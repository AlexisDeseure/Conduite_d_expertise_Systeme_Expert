;//////////////////////////////////////////////////////////////////
;//////////////////// DEFINITION DES VARIABLES ////////////////////
;//////////////////////////////////////////////////////////////////


(setq *bdr* '(
        (((but excellent =)) ((nb_potion 40 >) (sante 0 >) (but excellent !=)) "A deux doigts de décéder... Bravo tout de même Harry !")
        (((but super =)) ((nb_potion 20 >) (sante 0 >) (but excellent !=) (but super !=)) "Harry est officiellement un maître des potions")
        (((but moyen =)) ((nb_potion 10 >) (sante 0 >) (but excellent !=) (but super !=) (but moyen !=)) "Harry a eu de la chance de tenir jusqu'ici !")

        (((nb_Antidote 1 -) (nb_Poison 1 -)) ((nb_Antidote 0 >) (sante 0 >) (nb_Poison 0 >)) "Parmis tout ce qu'il a bu, un antidote semble avoir fait effet et compense un poison")
        
        (((nb_Poison 1 -) (sante 2 -)) ((nb_Poison 0 >) (sante 0 >)) "Harry ressend les effets d'un précédent poison et perd de la vie")
        
        (((nb_Affaiblissant 1 -) (sante 2 -) (concentration 10 -)) ((nb_Affaiblissant 0 >) (sante 0 >) (concentration 9 >)) "Harry avait bu une potion affaiblissante, il ressend de légère douleurs et est engourdie, sa santé et sa concentration diminue")
        (((nb_Affaiblissant 1 -) (sante 2 -) (concentration 0 =)) ((nb_Affaiblissant 0 >) (sante 0 >) (concentration 9 <=)) "Suite à un effet affaiblissant Harry n'est plus du tout concentré et sa santé diminue")
        
        (((nb_Fortifiant 1 -) (sante 1 +) (concentration 10 +)) ((nb_Fortifiant 0 >) (sante 0 >)) "Coup de bol ! Harry se sent revigouré, sûrement l'effet d'un fortifiant.")
        
        (((nb_Soin 1 -) (sante 2 +) (concentration 10 +)) ((nb_Soin 0 >) (sante 0 >)) "Harry parvient à se soigner en partie grâce à une ancienne potion bu, quoi qu'il en soit, il se send revigouré !")
              
        (((nb_Contrôle-mental 1 -) (sante 1 -) (concentration 15 -)) ((nb_Contrôle-mental 0 >) (sante 0 >) (concentration 14 >)) "Un effet de contrôle-mental fait application sur Harry, il a la tête qui tourne et plus les idées en place... En se cognant le doigt de pieds sur le chaudron, il perd un peu de santé")
        (((nb_Contrôle-mental 1 -) (sante 1 -) (concentration 0 =)) ((nb_Contrôle-mental 0 >) (sante 0 >) (concentration 14 <=)) "Harry n'est plus du tout concentré, les potions bu lui ont épuisé, il serait temps de faire une pause...")

        (((nb_Hallucinogène 1 -) (concentration 20 -)) ((nb_Hallucinogène 0 >) (sante 0 >) (concentration 19 >)) "Harry est dans un état second, les effets d'une potion hallucinogène lui fond perdre drastiquement en concentration")
        (((nb_Hallucinogène 1 -) (concentration 0 =)) ((nb_Hallucinogène 0 >) (sante 0 >) (concentration 19 <=)) "Harry n'est plus du tout concentré, sa maladresse l'a transformé un légume, incapable de se souvenir de son âge. Va t-il se remettre de cette mauvaise passe ?")

        (((nb_Jardin 1 -) (concentration 5 -)) ((sante 0 >) (nb_Jardin 0 >) (concentration 9 >)) "Une potion liée aux jardins fait effet dans le corps d'Harry, après cette sensation bizarre Harry est un peu moins concentré")
        
        (((Potion_d_Actée_en_épi 1 =) (nb_potion 1 +) (nb_Poison 1 +)) ((Actée_en_épi 1 =) (niveau 1 >) (sante 0 >) (Potion_d_Actée_en_épi 0 =) (concentration 30 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion d'Actée en épi")

        (((Potion_affaiblissante 1 =) (nb_potion 1 +) (nb_Affaiblissant 1 +)) ((Actée_en_épi 1 =) (Somnifère 1 =) (Chiendent_étoilé 1 =) (niveau 1 >) (sante 0 >) (Potion_affaiblissante 0 =) (concentration 30 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion affaiblissante")

        (((Potion_d_Aiguise_Méninges 1 =) (concentration 25 +) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Poudre_brune 1 =) (Bile_de_tatou 1 =) (Épine_de_porc_épic 1 =) (niveau 0 >) (sante 0 >) (Potion_d_Aiguise_Méninges 0 =) (concentration 10 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion d'Aiguise-Méninges. Il se sent déjà nettement plus concentré !")

        (((Potion_d_Amnésie 1 =) (nb_potion 1 +) (nb_Contrôle-mental 1 +)) ((Eau_du_fleuve_Léthé 1 =) (Baie_de_gui 1 =) (Ingrédient_standard 1 =) (Valériane 1 =) (niveau 0 >) (sante 0 >) (Potion_d_Amnésie 0 =) (concentration 20 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion d'Amn... De quoi parlait-on déjà ?")

        (((Onguent_d_amnésie_du_Dr_Oubbly 1 =) (nb_potion 1 +) (nb_Contrôle-mental 1 +)) ((Somnifère 1 =) (Vinaigre 1 =) (Urine 1 =) (niveau 1 >) (sante 0 >) (Onguent_d_amnésie_du_Dr_Oubbly 0 =) (concentration 25 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Onguent d'amnésie du Dr Oubbly. Harry mélang... oups je crois me répéter !")

        (((Amortentia 1 =) (nb_potion 1 +) (concentration 10 -) (nb_Contrôle-mental 1 +)) ((Raifort 1 =) (Philtre_d_amour 1 =) (niveau 2 >) (sante 0 >) (Amortentia 0 =) (concentration 30 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Amortentia. Il commence à nous regarder avec des yeux doux..." )

        (((Philtre_d_amour 1 =) (nb_potion 1 +) (nb_Contrôle-mental 1 +)) ((Oeuf_de_Serpencendre 1 =) (Poudre_rouge_sombre 1 =) (Poudre_bleue 1 =) (Poudre_jaune 1 =) (Poudre_verte 1 =) (niveau 2 >) (sante 0 >) (Philtre_d_amour 0 =) (concentration 10 >)) "Harry mélange des ingredients pour former une potion drôlement rose qu'il boit sans se poser de questions : Philtre d'amour")

        (((Antidote_à_un_philtre_d_amour 1 =) (nb_potion 1 +) (nb_Antidote 1 +)) ((Écorce_de_wiggentree 1 =) (Huile_de_ricin 1 =) (Extrait_de_Ravegourde 1 =) (niveau 1 >) (sante 0 >) (Antidote_à_un_philtre_d_amour 0 =) (concentration 10 >)) "HFarry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Antidote à un philtre d'amour")

        (((Onguent_anti_brûlure 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Graine_de_feu 1 =) (Lavande 1 =) (niveau 1 >) (sante 0 >) (Onguent_anti_brûlure 0 =) (concentration 5 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Onguent anti-brûlure")

        (((Potion_anti_feu 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((concentration 50 >) (Corne_de_dragon 1 =) (Essence_de_chassevache 1 =) (Onguent_anti_brûlure 1 =) (niveau 2 >) (sante 0 >) (Potion_anti_feu 0 =)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion anti-feu")

        (((Solution_anti_Nargoles 1 =) (nb_potion 1 +) (nb_Affaiblissant 1 +)) ((concentration 5 >) (Potion_raté 1 =) (niveau 0 >) (sante 0 >) (Solution_anti_Nargoles 0 =)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Solution anti-Nargoles")

        (((Potion_anti_paralysie 1 =) (concentration 10 +) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Mandragore 1 =) (Bulbe_de_scille 1 =) (niveau 1 >) (sante 0 >) (Potion_anti_paralysie 0 =) (concentration 25 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion anti-paralysie")

        (((Antidote_au_Veritaserum 1 =) (nb_potion 1 +) (nb_Antidote 1 +)) ((Veritaserum 1 =) (Tentacules_de_Murlap 1 =) (Oeuf_de_Doxy 1 =) (niveau 2 >) (sante 0 >) (Antidote_au_Veritaserum 0 =) (concentration 70 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Antidote au Veritaserum ! Cette potion est très rare ! Mais elle ne va pas beaucoup lui servir tout seul... à moins qu'elle cache d'autres effets")

        (((Philtre_d_apathie 1 =) (nb_potion 1 +) (concentration 5 +)) ((concentration 30 >) (Fève_sopophorique 1 =) (Caramel_au_beurre 1 =) (Carapace_de_bernard_l_ermite 1 =) (Valériane 1 =) (niveau 2 >) (sante 0 >) (Philtre_d_apathie 0 =)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Philtre d'apathie ... on ne sait toujours pas à quoi elle sert mais Harry est content !")

        (((Potion_d_apocyn 1 =) (nb_potion 1 +) (nb_Poison 1 +) (sante 1 +)) ((Apocyn 1 =) (niveau 1 >) (sante 0 >) (Potion_d_apocyn 0 =) (concentration 10 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion d'apocyn, elle a un goût amer...")

        (((Baume_d_asclépiade_tubéreuse 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Asclépiade_tubéreuse 1 =) (niveau 1 >) (sante 0 >) (Baume_d_asclépiade_tubéreuse 0 =) (concentration 15 >)) "Harry mélange des ingredients pour former une potion qu'il s'applique sur la peau : Baume d'asclépiade tubéreuse")

        (((Potion_aveuglante 1 =) (nb_potion 1 +) (nb_Affaiblissant 1 +)) ((Philtre_d_apathie 1 =) (Huile_de_ricin 1 =) (Actée_en_épi 1 =) (Baie_de_gui ) (niveau 1 >) (sante 0 >) (Potion_aveuglante 0 =) (concentration 15 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion aveuglante. Il a litteralement des étoiles dans les yeux !")

        (((Potion_de_Babillage 1 =) (nb_potion 1 +) (nb_Contrôle-mental 1 +)) ((Aconit 1 =) (niveau 1 >) (sante 0 >) (Potion_de_Babillage 0 =) (concentration 30 >)) "Hry mélnge ds ingrédnts pr formr ne ptin kil bot sn se psr d qstions : Potion de Babillage")

        (((Goutte_Baillon 1 =) (nb_potion 1 +) (nb_Contrôle-mental 1 +)) ((Potion_de_Babillage 1 =) (Asclépiade_tubéreuse 1 =) (Champignon_vénéneux_sauteur 1 =) (niveau 1 >) (sante 0 >) (Goutte_Baillon 0 =) (concentration 25 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Goutte Baillon! Il ne dit plus rien étonnement...")

        (((Baume_pour_le_bec 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Cranson_officinal 1 =) (Bandimon 1 =) (Plume_de_hibou_grand-duc 1 =) (Goutte_Baillon 1 =) (niveau 0 >) (sante 0 >) (Baume_pour_le_bec 0 =)) "Harry mélange des ingredients pour former une potion qu'il se met sur la peau sans se poser de questions : Baume pour le bec, ça à l'air de fonctionner ! Etonnant il n'a pas de bec...")

        (((Potion_de_beauté 1 =) (nb_potion 1 +) (sante 1 +) (concentration 5 -)) ((Rosée_du_matin 1 =) (Pétales_de_rose 1 =) (Alchémille 1 =) (Crin_de_licorne 1 =) (Gingembre 1 =) (Aile_de_fée 1 =) (niveau 2 >) (sante 0 >) (Potion_de_beauté 0 =) (concentration 50 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion de beauté, sa beauté est inégalable et lui a permis de regénérer en partie ses blessures, mais il se déconcentre à force de s'admirer")

        (((Potion_bomboeil 1 =) (nb_potion 1 +) (nb_Affaiblissant 1 +)) ((Goutte_Baillon 1 =) (Potion_explosive 1 =) (niveau 1 >) (sante 0 >) (Potion_bomboeil 0 =) (concentration 20 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion bomboeil")

        (((Philtre_Calmant 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Lavande 1 =) (Coeur_de_crocodile 1 =) (Menthe 1 =) (niveau 1 >) (sante 0 >) (Philtre_Calmant 0 =) (concentration 15 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Philtre Calmant")

        (((Potion_Capillours 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Cirage_à_cornes_revigorant 1 =) (Cranson_officinal 1 =) (Oeuf_de_Runespoor 1 =) (niveau 0 >) (sante 0 >) (Potion_Capillours 0 =) (concentration 10 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion Capillours, ses cheveux commencent à pousser à vue d'oeil mais il se sent revigouré")

        (((Élixir_Cérébral_de_Baruffio 1 =) (nb_potion 1 +) (concentration 50 +)) ((Oeuf_de_Runespoor 1 =) (Champignon_vénéneux_sauteur 1 =) (Cerveau_de_grenouille 1 =) (Griffe_de_dragon 1 =) (niveau 2 >) (sante 0 >) (Élixir_Cérébral_de_Baruffio 0 =) (concentration 40 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Élixir Cérébral de Baruffio, il est plus concentré que jamais !")

        (((Breuvage_de_champignon_mortel 1 =) (nb_potion 1 +) (nb_Poison 1 +)) ((Calice_de_la_mort 1 =) (niveau 1 >) (sante 0 >) (Breuvage_de_champignon_mortel 0 =) (concentration 25 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Breuvage de champignon mortel, il aurait peut être du se renseigner à la pharmacie avant...")

        (((Baume_de_chiendent_étoilé 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Chiendent_étoilé 1 =) (niveau 1 >) (sante 0 >) (Baume_de_chiendent_étoilé 0 =) (concentration 20 >)) "Harry mélange des ingredients pour former une potion qu'il s'applique sans se poser de questions : Baume de chiendent étoilé")

        (((Cirage_à_cornes_revigorant 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Potion_de_régénération 1 =) (Fleur_à_corne 1 =) (niveau 1 >) (sante 0 >) (Cirage_à_cornes_revigorant 0 =) (concentration 25 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Cirage à cornes revigorant")

        (((Philtre_de_Confusion 1 =) (nb_potion 1 +) (nb_Contrôle-mental 1 +)) ((Cranson_officinal 1 =) (Livèche 1 =) (Achillée_sternutatoire 1 =) (niveau 0 >) (sante 0 >) (Philtre_de_Confusion 0 =) (concentration 25 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Philtre de Confusion")

        (((Potion_crache_flammes 1 =) (nb_potion 1 +) (sante 1 -) ) ((Lavande 1 =) (Menthe 1 =) (Graine_de_feu 1 =) (Corne_de_dragon 1 =) (Valériane 1 =) (niveau 0 >) (sante 0 >) (Potion_crache_flammes 0 =) (concentration 10 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion crache-flammes ! Harry commence brûle une table sans faire exprès, lui faisant quelques degats")

        (((Philtre_Dégonflant 1 =) (nb_potion 1 +) (nb_Antidote 1 +)) ((Potion_d_Enflure 1 =) (Champignon 1 =) (Plume 1 =) (niveau 2 >) (sante 0 >) (Philtre_Dégonflant 0 =) (concentration 50 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Philtre Dégonflant")

        (((Goutte_désopilante 1 =) (nb_potion 1 +) (nb_Hallucinogène 1 +)) ((Alihotsy 1 =) (niveau 0 >) (sante 0 >) (Goutte_désopilante 0 =) (concentration 10 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Goutte désopilante")

        (((Essence_de_dictame 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Dictame 1 =) (niveau 0 >) (sante 0 >) (Essence_de_dictame 0 =) (concentration 10 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Essence de dictame")

        (((Doxycide 1 =) (nb_potion 1 +) (nb_Contrôle-mental 1 +)) ((Bandimon 1 =) (Foie_de_dragon 1 =) (Musard 1 =) (Essence_de_chassevache 1 =) (Essence_de_ciguë 1 =) (Teinture_de_tormentille 1 =) (niveau 0 >) (sante 0 >) (Doxycide 0 =) (concentration 15 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Doxycide")

        (((Poison_de_dragon 1 =) (nb_potion 1 +) (nb_Poison 1 +)) ((Partie_de_dragon 1 =) (niveau 2 >) (sante 0 >) (Poison_de_dragon 0 =) (concentration 50 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Poison de dragon")

        (((Dragonfortant 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Plume_de_paon 1 =) (Plume_de_hibou_grand_duc 1 =) (Verrue_de_crapaud_violet_géant 1 =) (niveau 2 >) (sante 0 >) (Dragonfortant 0 =) (concentration 50 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Dragonfortant")

        (((Efface_Boutons_dix_secondes_garanties 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Gomas_Barbadensis 1 =) (Bandimon 1 =) (niveau 1 >) (sante 0 >) (Efface_Boutons_dix_secondes_garanties 0 =) (concentration 10 >)) "Harry mélange des ingredients pour former une potion qu'il s'applique sans se poser de questions : Efface-Boutons dix secondes garanties, ça ressemble drôlement à la creme qu'on retrouve chez les freres Weasley")

        (((Philtre_d_Embrouille 1 =) (nb_potion 1 +) (nb_Contrôle-mental 1 +)) ((Cranson_officinal 1 =) (Livèche 1 =) (Achillée_sternutatoire 1 =) (niveau 1 >) (sante 0 >) (Philtre_d_Embrouille 0 =) (concentration 30 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Philtre d'Embrouille")

        (((Potion_d_Enflure 1 =) (nb_potion 1 +) (nb_Affaiblissant 1 +)) ((Oeil_de_poissons 1 =) (Ortie_séchée 1 =) (Foie_de_chauve_souris 1 =) (niveau 0 >) (sante 0 >) (Potion_d_Enflure 0 =) (concentration 15 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion d'Enflure")

        (((Engrais 1 =) (nb_potion 1 +) (nb_Jardin 1 +)) ((Poudre_rouge_sombre 1 =) (Oeil_de_Boullu 1 =) (Bouse_de_dragon 1 =) (Os 1 =) (Algue_sèche 1 =) (Cervelle_de_paresseux 1 =) (Hippocampe_volant 1 =) (Liquide_blanc 1 =) (Thorax_de_libellules_grillés 1 =) (Rate_de_rat 1 =) (Mandragore 1 =) (niveau 1 >) (sante 0 >) (Engrais 0 =) (concentration 20 >)) "Harry mélange des ingredients pour former une potion qu'il goute sans se poser de questions : Engrais, ça n'a vraiment pas l'air appetissant, Harry recrache une partie")

        (((Élixir_éternel 1 =) (nb_potion 1 +) (concentration 10 +) (nb_Fortifiant 1 +)) ((Potion_de_beauté 1 =) (Huile_de_ricin 1 =) (Philtre_de_Mort_Vivante 1 =) (niveau 2 >) (sante 0 >) (Élixir_éternel 0 =) (concentration 80 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Élixir éternel ! Cette potion est très rare, digne des plus grands maître seulement c'est bien les objets qu'elle rend éternels pas les humains, elle fait l'effet d'un simple fortifiant donc !")

        (((Élixir_d_Euphorie 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Épine_de_porc_épic 1 =) (Menthe 1 =) (Fève_sopophorique 1 =) (Figue 1 =) (Armoise 1 =) (niveau 1 >) (sante 0 >) (Élixir_d_Euphorie 0 =) (concentration 20 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Élixir d'Euphorie")

        (((Everklena 1 =) (nb_potion 1 +) (concentration 5 -)) ((Teinture_de_tormentille 1 =) (Rosée_du_matin 1 =) (niveau 1 >) (sante 0 >) (Everklena 0 =) (concentration 40 >)) "Harry mélange des ingredients pour former une potion : Everklena. On aurait dit un nettoyant mais au lieu de ça ça salit toute la salle...")

        (((Potion_explosive 1 =) (nb_potion 1 +) (sante 5 -)) ((Everklena 1 =) (Potion_jaillissante 1 =) (Gelée_de_pétrole 1 =) (niveau 2 >) (sante 0 >) (Potion_explosive 0 =) (concentration 60 >)) "BAAM ... Harry a créé la Potion explosive !... Sous un nuage de fumée on a du mal a discerner si Harry est vivant mais il sera très affaiblit quoi qu'il en soit.")

        (((Potion_exstimulo 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Lewisie 1 =) (Sang_de_Re_em 1 =) (Perce_neige 1 =) (Poil_de_gronian 1 =) (niveau 0 >) (sante 0 >) (Potion_exstimulo 0 =) (concentration 10 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion exstimulo")

        (((Vapeurs_de_fatigue 1 =) (nb_potion 1 +) (nb_Affaiblissant 1 +)) ((Sang_de_Re_em 1 =) (Rosée_du_matin 1 =) (Poudre_rouge_sombre 1 =) (Oeil_de_Boullu 1 =) (niveau 1 >) (sante 0 >) (Vapeurs_de_fatigue 0 =) (concentration 25 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Vapeurs de fatigue")

        (((Felix_Felicis 1 =) (nb_potion 1 +) (concentration 150 =) ) ((Oeuf_de_Serpencendre 1 =) (Raifort 1 =) (Bulbe_de_scille 1 =) (Tentacules_de_Murlap 1 =) (Alcoolature_dethym 1 =) (Oeuf_d_Occamy 1 =) (Poudre_de_Ruta 1 =) (niveau 2 >) (sante 0 >) (Felix_Felicis 0 =) (concentration 90 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Felix Felicis, il ne s'en rend pas tout de suite compte mais il vient de réaliser une des potions les plus difficiles ! Sa concentration est inégalée !")

        (((Potion_des_flammes_noires 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Potion_fortifiante 1 =) (Poudre_rouge_sombre 1 =) (Infusion_infecte 1 =) (niveau 2 >) (sante 0 >) (Potion_des_flammes_noires 0 =) (concentration 40 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion des flammes noires")

        (((Potion_des_flammes_violettes 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Potion_des_flammes_noires 1 =)  (niveau 2 >) (sante 0 >) (Potion_des_flammes_violettes 0 =) (concentration 40 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion des flammes violettes")

        (((Solution_de_Force 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Sang_de_salamandre 1 =) (Ongle_de_griffon 1 =) (niveau 1 >) (sante 0 >) (Solution_de_Force 0 =) (concentration 20 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Solution de Force")

        (((Potion_fortifiante 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Hippocampe_volant 1 =) (Thorax_de_libellules_grillés 1 =) (Aile_de_fée 1 =) (Oeuf_de_Doxy 1 =) (niveau 1 >) (sante 0 >) (Potion_fortifiante 0 =) (concentration 30 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion fortifiante")

        (((Potions_à_base_de_fromage 1 =) (nb_potion 1 +)) ((Fromage 1 =) (niveau 0 >) (sante 0 >) (Potions_à_base_de_fromage 0 =) ) "Harry mélange du fromage pour former une potion qu'il boit sans se poser de questions : Potions à base de fromage ! Hmmm délicieux mais inutile.")

        (((Potion_fungiface 1 =) (nb_potion 1 +) (nb_Poison 1 +)) ((Liquide_brun 1 =) (Liquide_blanc 1 =) (niveau 0 >) (sante 0 >) (Potion_fungiface 0 =) (concentration 10 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion fungiface")

        (((Remède_contre_les_furoncles 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Épine_de_porc_épic 1 =) (Poudre_verte 1 =) (Ortie_séchée 1 =) (Limace_à_cornes 1 =) (Mucus_de_Veracrasse 1 =) (Liquide_brun 1 =) (Crochet_de_serpent 1 =) (niveau 0 >) (sante 0 >) (Remède_contre_les_furoncles 0 =) (concentration 5 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Remède contre les furoncles")

        (((Gaz_Étrangleur 1 =) (nb_potion 1 +) (nb_Hallucinogène 1 +)) ((Infusion_infecte 1 =) (Potions_à_base_de_fromage 1 =) (Jus_de_Horglup 1 =) (niveau 0 >) (sante 0 >) (Gaz_Étrangleur 0 =) (concentration 10 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Gaz Étrangleur")

        (((Potion_de_Haine 1 =) (nb_potion 1 +) (nb_Contrôle-mental 1 +)) ((Potion_d_Actée_en_épi 1 =) (Urine 1 =) (niveau 0 >) (sante 0 >) (Potion_de_Haine 0 =) (concentration 15 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion de Haine")

        (((Potion_d_haleine_de_chien 1 =) (nb_potion 1 +)) ((Potions_à_base_de_fromage 1 =) (Mucus_de_cervelle_de_paresseux 1 =)  (niveau 1 >) (sante 0 >) (Potion_d_haleine_de_chien 0 =) (concentration 20 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion d'haleine de chien. L'odeur se propage même dans le couloir !")

        (((Herbicide 1 =) (nb_potion 1 +) (nb_Poison 1 +)) ((Ingrédient_standard 1 =) (Mucus_de_Veracrasse 1 =) (Jus_de_Horglup 1 =) (Épine_de_poisson_diable 1 =) (niveau 0 >) (sante 0 >) (Herbicide 0 =) (concentration 20 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Herbicide")

        (((Potion_à_Hérisser_les_Cheveux 1 =) (concentration 5 -) (nb_potion 1 +)) ((Queue_de_rat 1 =) (niveau 1 >) (sante 0 >) (Potion_à_Hérisser_les_Cheveux 0 =) (concentration 35 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion à Hérisser les Cheveux. Ses cheveux se dressent tels un porc épique")

        (((Potion_d_Hilarité 1 =) (nb_potion 1 +) (nb_Affaiblissant 1 +)) ((Potion_à_Hérisser_les_Cheveux 1 =) (Jus_de_Horglup 1 =) (Mucus_de_cervelle_de_paresseux 1 =) (niveau 1 >) (sante 0 >) (Potion_d_Hilarité 0 =) (concentration 20 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion d'Hilarité")

        (((Décoction_Hoqueteuse 1 =) (nb_potion 1 +) (nb_Affaiblissant 1 +)) ((Potion_capillaire_Lissenplis 1 =) (Mélange_de_poudre_d_argent_et_de_dictame 1 =) (niveau 1 >) (sante 0 >) (Décoction_Hoqueteuse 0 =) (concentration 20 >)) "Harry mélange...HIC... des ingredients pour former une ...HIC...potion qu'il boit sans se ...HIC...poser de questions : Décoction Hoqueteuse ...HIC...")

        (((Infusion_infecte 1 =) (nb_potion 1 +) (nb_Poison 1 +)) ((Champignon 1 =) (Plume 1 =) (niveau 1 >) (sante 0 >) (Infusion_infecte 0 =) (concentration 25 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Infusion infecte, il la boit quand même pour l'expérience")

        (((Potion_jaillissante 1 =) (nb_potion 1 +)) ((Éruptif 1 =) (niveau 0 >) (sante 0 >) (Potion_jaillissante 0 =)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion jaillissante ! Aucun intéret particulier mais très amusant !")

        (((Baume_de_lewisie_brûlante 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Lewisie 1 =) (niveau 2 >) (sante 0 >) (Baume_de_lewisie_brûlante 0 =) (concentration 50 >)) "Harry mélange des ingredients pour former une potion qu'il s'applique sans se poser de questions : Baume de lewisie brûlante")

        (((Potion_capillaire_Lissenplis 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Gomas_Barbadensis 1 =) (Cheveux_de_dragon_asiatique 1 =) (Gelée_de_pétrole 1 =) (niveau 1 >) (sante 0 >) (Potion_capillaire_Lissenplis 0 =) (concentration 20 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion capillaire Lissenplis")

        (((Élixir_de_longue_vie 1 =) (nb_potion 1 +) (sante 20 +)) ((Pierre_philosophale 1 =) (niveau 2 >) (sante 0 >) (Élixir_de_longue_vie 0 =) (concentration 90 >=)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Élixir de longue vie, il a réussi l'impossible ! Nicolas Flamel en serait fier ! Harry prolonge grandement sa vie et donc sa sante !")

        (((Mélange_malveillant 1 =) (nb_potion 1 +) (nb_Poison 1 +)) ((Infusion_infecte 1 =) (Sang_d_un_ennemi 1 =) (niveau 0 >) (sante 0 >) (Mélange_malveillant 0 =) (concentration 5 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Mélange malveillant")

        (((Philtre_régénérateur_à_la_mandragore 1 =) (nb_potion 1 +) (nb_Antidote 1 +)) ((Mandragore 1 =) (niveau 2 >) (sante 0 >) (Philtre_régénérateur_à_la_mandragore 0 =) (concentration 50 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Philtre régénérateur à la mandragore")

        (((Mélange_de_bouse_de_dragon_et_d_engrais 1 =) (nb_potion 1 +) (nb_Jardin 1 +)) ((Bouse_de_dragon 1 =) (Engrais 1 =) (niveau 0 >) (sante 0 >) (Mélange_de_bouse_de_dragon_et_d_engrais 0 =)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Mélange de bouse de dragon et d'engrais ... ")

        (((Potion_de_Mémoire 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Menthe 1 =) (Perce_neige 1 =) (Mandragore 1 =) (Feuilles_d_alihotsy 1 =) (Oeil_d_anguille 1 =) (Sauge 1 =) (Plume_de_Jobarbille 1 =) (niveau 2 >) (sante 0 >) (Potion_de_Mémoire 0 =) (concentration 40 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion de Mémoire")

        (((Potion_de_Mort 1 =) (nb_potion 1 +) (sante 0 =)) ((Élixir_de_longue_vie 1 =) (Mélange_malveillant 1 =) (Vapeurs_de_fatigue 1 =) (niveau 1 >) (sante 0 >) (Potion_de_Mort 0 =) (concentration 89 >)) "Pas de chance ! Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion de Mort, Harry meurt donc sur le champs dommage...")

        (((Philtre_de_Mort_Vivante 1 =) (nb_potion 1 +) (nb_Hallucinogène 1 +)) ((Cervelle_de_paresseux 1 =) (Liquide_blanc 1 =) (Fève_sopophorique 1 =) (Mucus_de_Veracrasse 1 =) (Asphodèle 1 =) (Infusion_d_armoise 1 =) (Infusion_d_armoise 1 =) (Liquide_violet 1 =) (Poudre_rose 1 =) (Crochet_de_serpent 1 =) (Valériane 1 =) (niveau 1 >) (sante 0 >) (Philtre_de_Mort_Vivante 0 =) (concentration 15 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Philtre de Mort Vivante")

        (((Mélange_de_poudre_d_argent_et_de_dictame 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Dictame 1 =) (Poudre_d_argent 1 =) (niveau 0 >) (sante 0 >) (Mélange_de_poudre_d_argent_et_de_dictame 0 =) (concentration 10 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Mélange de poudre d'argent et de dictame")

        (((Nettoie_Tout_magique_de_la_Mère_Grattesec 1 =) (nb_potion 1 +)) ((Potion_de_nettoyage 1 =) (Lavande 1 =) (niveau 1 >) (sante 0 >) (Nettoie_Tout_magique_de_la_Mère_Grattesec 0 =)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Nettoie-Tout magique de la Mère Grattesec, il en profite pour nettoyer son chaudron")

        (((Potion_de_nettoyage 1 =) (nb_potion 1 +)) ((Sal_ammoniac 1 =) (Vinaigre 1 =) (niveau 1 >) (sante 0 >) (Potion_de_nettoyage 0 =) (concentration 10 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion de nettoyage, il en profite pour nettoyer son chaudron")

        (((Potion_Oculus 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Poudre_bleue 1 =) (Mandragore 1 =) (Infusion_d_armoise 1 =) (Corne_de_licorne 1 =) (niveau 0 >) (sante 0 >) (Potion_Oculus 0 =) (concentration 15 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion Oculus")

        (((Potion_de_l_Oeil_Vif 1 =) (nb_potion 1 +) (nb_Antidote 1 +)) ((Ingrédient_standard 1 =) (Dard_séché_de_Billywig 1 =) (Tue_loup 1 =) (Crochet_de_serpent 1 =) (niveau 0 >) (sante 0 >) (Potion_de_l_Oeil_Vif 0 =) (concentration 15 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion de l'Œil Vif")

        (((Philtre_de_Paix 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Poudre_bleue 1 =) (Liquide_brun 1 =) (Mandragore 1 =) (Poudre_rose 1 =) (Pierre_de_lune 1 =) (Sirop_d_ellébore 1 =) (niveau 1 >) (sante 0 >) (Philtre_de_Paix 0 =) (concentration 30 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Philtre de Paix")

        (((Panacée 1 =) (nb_potion 1 +) (sante 10000 +)) ((Vinaigre 1 =) (Sel 1 =) (Urine 1 =) (Sal_ammoniac 1 =) (Soufre_vif 1 =) (niveau 2 >) (sante 0 >) (Panacée 0 =) (concentration 90 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Panacée ! Il devient immortel et soigne toutes ses maladies, rien que ça !")

        (((Baume_de_pâquerettes 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Pâquerette 1 =) (niveau 0 >) (sante 0 >) (Baume_de_pâquerettes 0 =) (concentration 5 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Baume de pâquerettes...Attention ! Ne convient pas à un usage orale !")

        (((Potion_Pare_feu 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Sang_de_salamandre 1 =) (Champignon_explosif 1 =) (Champignon_à_verrues 1 =) (niveau 0 >) (sante 0 >) (Potion_Pare_feu 0 =) (concentration 15 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion Pare-feu ! Audacieux de mettre des explosifs puis le boire, attendons son effet...")

        (((Poison_pernicieux 1 =) (nb_potion 1 +) (nb_Poison 1 +)) ((Vinaigre 1 =) (Gelée_de_pétrole 1 =) (Baume_de_pâquerettes 1 =) (niveau 1 >) (sante 0 >) (Poison_pernicieux 0 =) (concentration 20 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Poison pernicieux")

        (((Pimentine 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Éruptif 1 =) (Armoise 1 =) (Baume_de_pâquerettes 1 =) (niveau 0 >) (sante 0 >) (Pimentine 0 =) (concentration 25 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Pimentine")

        (((Antidote_aux_Poisons_Courants 1 =) (nb_potion 1 +) (nb_Antidote 1 +)) ((Baie_de_gui 1 =) (Ingrédient_standard 1 =) (Menthe 1 =) (Mandragore 1 =) (Poudre_rose 1 =) (Bézoard 1 =) (Corne_de_licorne 1 =) (Hydromel 1 =) (niveau 1 >) (sante 0 >) (Antidote_aux_Poisons_Courants 0 =) (concentration 25 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Antidote aux Poisons Courants")

        (((Antidote_des_poisons_rares 1 =) (nb_potion 1 +) (nb_Antidote 2 +)) ((Graine_de_feu 1 =) (Dard_séché_de_Billywig 1 =) (Carapace_de_Ciseburine 1 =) (Corne_de_Grapcorne 1 =) (niveau 0 >) (sante 0 >) (Antidote_des_poisons_rares 0 =) (concentration 75 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Antidote des poisons rares")

        (((Polynectar 1 =) (nb_potion 1 +) (concentration 50 +)) ((Sangsue 1 =) (Peau_de_serpent_d_arbre_du_Cap 1 =) (Corne_de_bicorne 1 =) (Chrysope_cuite 1 =) (Sisymbre 1 =) (Touffe_de_Polygonum 1 =) (Élément_du_corps_de_la_personne_dont_on_souhaite_prendre_l_apparence 1 =) (niveau 2 >) (sante 0 >) (Polynectar 0 =) (concentration 70 >)) "Harry mélange des ingredients pour former un : Polynectar ! Il se transforme en le professeur Rogue car un vieux cheveux trainait dans le chaudron. Il commence à se sentir plus renseigné sur les potions!")

        (((Pommade_pommadante_Grégoire 1 =) (nb_potion 1 +) (nb_Contrôle-mental 1 +)) ((Baume_de_pâquerettes 1 =) (Lavande 1 =) (niveau 1 >) (sante 0 >) (Pommade_pommadante_Grégoire 0 =) (concentration 30 >)) "Harry mélange des ingredients pour former une potion qu'il s'applique sans se poser de questions : Pommade pommadante Grégoire")

        (((Potion_de_cautérisation 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Liquide_blanc 1 =) (Pommade_pommadante_Grégoire 1 =) (niveau 2 >) (sante 0 >) (Potion_de_cautérisation 0 =) (concentration 40 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion de cautérisation")

        (((Potion_de_Regermination 1 =) (nb_potion 1 +) (nb_Jardin 1 +)) ((Engrais 1 =) (Urine 1 =) (niveau 2 >) (sante 0 >) (Potion_de_Regermination 0 =) (concentration 50 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion de Regermination")

        (((Potion_de_Rejutage 1 =) (nb_potion 1 +) (nb_Jardin 1 +) (Liquide_blanc 1 =)) ((Potion_de_Regermination 1 =) (Lavande 1 =) (niveau 1 >) (sante 0 >) (Potion_de_Rejutage 0 =) (concentration 10 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion de Rejutage...SPLASH")

        (((Potion_Potiron 1 =) (nb_potion 1 +) (nb_Affaiblissant 1 +)) ((Pipaillon_de_nuit 1 =) (Digitale 1 =) (Bulbe_sauteur 1 =) (niveau 0 >) (sante 0 >) (Potion_Potiron 0 =) (concentration 10 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion Potiron, sa tête est encore en train de se transformer en potiron !")

        (((Poussos 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Scarabée 1 =) (Chou_mordeur_de_Chine 1 =) (Oeil_de_poisson_hérisson 1 =) (niveau 1 >) (sante 0 >) (Poussos 0 =) (concentration 30 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Poussos")

        (((Potion_à_priser 1 =) (nb_potion 1 +) (nb_Contrôle-mental 1 +)) ((Chou_mordeur_de_Chine 1 =) (Potion_d_haleine_de_chien 1 =) (niveau 1 >) (sante 0 >) (Potion_à_priser 0 =) (concentration 20 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion à priser")

        (((Produit_contre_les_limaces_mangeuses_de_chair 1 =) (nb_potion 1 +)) ((Sal_ammoniac 1 =) (Soufre_vif 1 =) (niveau 1 >) (sante 0 >) (Produit_contre_les_limaces_mangeuses_de_chair 0 =) (concentration 25 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Produit contre les limaces mangeuses de chair. Jusqu'à preuve du contraire, Harry n'est pas une limace mangeuse de chair. La potion n'a aucun effet")

        (((Potion_de_puissance 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Os 1 =) (Crochet_de_serpent 1 =) (Fleur_à_corne 1 =) (niveau 0 >) (sante 0 >) (Potion_de_puissance 0 =) (concentration 5 >)) "Harry mélange des ingredients pour former une potion apprise en première année qu'il boit sans se poser de questions : Potion de puissance")

        (((Poison_de_raisin_de_couleuvre 1 =) (nb_potion 1 +) (nb_Poison 1 +)) ((Raisin_de_couleuvre 1 =) (niveau 1 >) (sante 0 >) (Poison_de_raisin_de_couleuvre 0 =) (concentration 25 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Poison de raisin de couleuvre")

        (((Potion_de_Ratatinage 1 =) (nb_potion 1 +) (concentration 5 -)) ((Poudre_jaune 1 =) (Rate_de_rat 1 =) (Sangsue 1 =) (Chenille 1 =) (Jus_de_figue 1 =) (niveau 0 >) (sante 0 >) (Potion_de_Ratatinage 0 =) (concentration 10 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion de Ratatinage, il devient tout petit !")

        (((Ratconfortant 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Potion_de_Ratatinage 1 =) (Queue_de_rat 1 =) (niveau 0 >) (sante 0 >) (Ratconfortant 0 =) (concentration 5 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Ratconfortant ! Harry se souvient avec plaisir de la fois ou il avait fait payé son tacos par Ron")

        (((Potion_de_régénération 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Os_d_un_père 1 =) (Chair_d_un_serviteur 1 =) (Sang_d_un_ennemi 1 =) (niveau 2 >) (sante 0 >) (Potion_de_régénération 0 =) (concentration 40 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion de régénération")

        (((Potion_de_Régénération_sanguine 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Potion_de_régénération 1 =) (Sang_d_un_ennemi 1 =) (niveau 2 >) (sante 0 >) (Potion_de_Régénération_sanguine 0 =) (concentration 40 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion de Régénération sanguine")

        (((Remontant_de_Pomfresh 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Lavande 1 =) (Liquide_blanc 1 =)  (niveau 2 >) (sante 0 >) (Remontant_de_Pomfresh 0 =) (concentration 40 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Remontant de Pomfresh")

        (((Remède_à_la_dragoncelle 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Remontant_de_Pomfresh 1 =) (Oeuf_de_Doxy 1 =) (niveau 1 >) (sante 0 >) (Remède_à_la_dragoncelle 0 =) (concentration 20 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Remède à la dragoncelle")

        (((Potion_de_restitution 1 =) (nb_potion 1 +) (nb_Antidote 1 +)) ((Potion_de_Régénération_sanguine 1 =) (Antidote_des_poisons_rares 1 =) (niveau 2 >) (sante 0 >) (Potion_de_restitution 0 =) (concentration 60 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion de restitution")

        (((Philtre_Revigorant 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Cranson_officinal 1 =) (Livèche 1 =) (Eau_de_miel 1 =) (Infusion_de_verveine 1 =) (niveau 1 >) (sante 0 >) (Philtre_Revigorant 0 =) (concentration 15 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Philtre Revigorant")

        (((Poison_sang_dragon 1 =) (nb_potion 1 +) (nb_Poison 1 +)) ((Sang_dragon 1 =) (niveau 1 >) (sante 0 >) (Poison_sang_dragon 0 =) (concentration 20 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Poison sang-dragon. Mais que fait un dragon dans le bureau de Rogue ?")

        (((Potion_pour_soins_capillaires_de_Lockhart 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Oeuf_d_Occamy 1 =) (niveau 2 >) (sante 0 >) (Potion_pour_soins_capillaires_de_Lockhart 0 =) (concentration 40 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion pour soins capillaires de Lockhart, il se sent revigouré avec ses beaux cheveux, il le vaux bien !")

        (((Goutte_du_sommeil 1 =) (nb_potion 1 +) (nb_Hallucinogène 1 +)) ((Somnifère 1 =) (Vapeurs_de_fatigue 1 =) (niveau 0 >) (sante 0 >) (Goutte_du_sommeil 0 =) (concentration 20 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Goutte du sommeil")

        (((Potion_pour_un_sommeil_sans_rêves 1 =) (nb_potion 1 +) (nb_Hallucinogène 1 +)) ((Goutte_du_sommeil 1 =) (Liquide_blanc 1 =) (niveau 1 >) (sante 0 >) (Potion_pour_un_sommeil_sans_rêves 0 =) (concentration 30 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion pour un sommeil sans rêves")

        (((Somnifère 1 =) (nb_potion 1 +) (nb_Hallucinogène 1 +)) ((Ingrédient_standard 1 =) (Mucus_de_Veracrasse 1 =) (Brin_de_lavande 1 =) (Valériane 1 =) (niveau 0 >) (sante 0 >) (Somnifère 0 =) (concentration 10 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Somnifère")

        (((Tolipan_Blemish_Blitzer 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Ingrédient_naturel 1 =) (Griffe_de_dragon 1 =) (niveau 1 >) (sante 0 >) (Tolipan_Blemish_Blitzer 0 =) (concentration 30 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Tolipan Blemish Blitzer")

        (((Potion_contre_la_toux 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Pimentine 1 =) (Touffe_de_Polygonum 1 =) (Pâquerette 1 =) (niveau 1 >) (sante 0 >) (Potion_contre_la_toux 0 =) (concentration 30 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion contre la toux")

        (((Potion_Trismus 1 =) (nb_potion 1 +) (nb_Contrôle-mental 1 +)) ((ingredients_à_ajouter) (niveau 1 >) (sante 0 >) (Potion_Trismus 0 =) (concentration 15 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion Trismus, son sourir devient plus intense !... pourtant il est triste")

        (((Goutte_de_trompette_des_anges 1 =) (nb_potion 1 +) (nb_Poison 1 +)) ((Trompette_des_anges 1 =) (niveau 2 >) (sante 0 >) (Goutte_de_trompette_des_anges 0 =) (concentration 50 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Goutte de trompette des anges")

        (((Potion_Tue_loup 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Tue_loup 1 =) (niveau 2 >) (sante 0 >) (Potion_Tue_loup 0 =) (concentration 50 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion Tue-loup, il se sent guérit ! Mais...ce n'est pas un loup garoup...à moins que...")

        (((Veritaserum 1 =) (nb_potion 1 +) (nb_Contrôle-mental 1 +)) ((Sérum_de_vérité 1 =) (Somnifère 1 =) (niveau 2 >) (sante 0 >) (Veritaserum 0 =) (concentration 70 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Veritaserum, il commence à épeler son code de coffre fort")

        (((Sérum_de_vérité 1 =) (nb_potion 1 +) (nb_Contrôle-mental 1 +)) ((Plume_de_Jobarbille 1 =) (niveau 2 >) (sante 0 >) (Sérum_de_vérité 0 =) (concentration 50 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Sérum de vérité")

        (((Potion_vert_émeraude 1 =) (nb_potion 1 +)  (concentration 60 -)) ((Poison_pernicieux 1 =) (Chair_d_un_serviteur 1 =) (Sang_d_un_ennemi 1 =) (niveau 2 >) (sante 0 >) (Potion_vert_émeraude 0 =) (concentration 80 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion vert émeraude, il se trouve dans le même état que Dumbeldort avant sa perte...")

        (((Potion_de_vertige 1 =) (nb_potion 1 +) (nb_Hallucinogène 1 +)) ((Vapeurs_de_fatigue 1 =) (Fleur_à_corne 1 =) (niveau 1 >) (sante 0 >) (Potion_de_vertige 0 =) (concentration 25 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion de vertige")

        (((Potion_de_Vieillissement 1 =) (nb_potion 1 +)) ((Goutte_de_trompette_des_anges 1 =) (Hydromel 1 =) (niveau 0 >) (sante 0 >) (Potion_de_Vieillissement 0 =) (concentration 10 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion de Vieillissement. Le temps passe vite dans le bureau de Rogue !")

        (((Potion_Volubilis 1 =) (nb_potion 1 +) (nb_Antidote 1 +) ) ((Menthe 1 =) (Mandragore 1 =) (Sirop_d_ellébore 1 =) (Hydromel 1 =) (niveau 1 >) (sante 0 >) (Potion_Volubilis 0 =) (concentration 30 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se  de questions : Potion Volubilis")

        (((Potion_Wiggenweld 1 =) (nb_potion 1 +) (nb_Antidote 1 +)) ((Aconit 1 =) (Menthe 1 =) (Dictame 1 =) (Sang_de_salamandre 1 =) (Mucus_de_Veracrasse 1 =) (Jus_de_Horglup 1 =) (Épine_de_poisson_diable 1 =) (Mandragore 1 =) (Corne_de_licorne 1 =) (Eau_de_miel 1 =) (Crochet_de_Ciseburine 1 =) (Écorce_de_sorbier 1 =) (Dard_de_Billywig 1 =) (Jus_d_explobaies 1 =) (Moly 1 =) (Mucus_de_cervelle_de_paresseux 1 =) (Rosée_de_lune 1 =) (niveau 1 >) (sante 0 >) (Potion_Wiggenweld 0 =) (concentration 30 >)) "Harry mélange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion Wiggenweld")

        (((but mort =)) ((sante 0 <=) (but mort !=)) "Harry est enfin mort !")
        )
)

(setq *bdd_menu* '(
        (1 Achillée_sternutatoire "Achillée sternutatoire")
        (2 Aconit "Aconit")
        (3 Actée_en_épi "Actée en épi")
        (4 Aile_de_fée "Aile de fée")
        (5 Alchémille "Alchémille")
        (6 Alcoolature_dethym "Alcoolature dethym")
        (7 Algue_sèche "Algue sèche")
        (8 Alihotsy "Alihotsy")
        (9 Apocyn "Apocyn")
        (10 Armoise "Armoise")
        (11 Asclépiade_tubéreuse "Asclépiade tubéreuse")
        (12 Asphodèle "Asphodèle")
        (13 Baie_de_gui "Baie de gui")
        (14 Bandimon "Bandimon")
        (15 Bile_de_tatou "Bile de tatou")
        (16 Bouse_de_dragon "Bouse de dragon")
        (17 Brin_de_lavande "Brin de lavande")
        (18 Bulbe_de_scille "Bulbe de scille")
        (19 Bulbe_sauteur "Bulbe sauteur")
        (20 Bézoard "Bézoard")
        (21 Calice_de_la_mort "Calice de la mort")
        (22 Caramel_au_beurre "Caramel au beurre")
        (23 Carapace_de_Ciseburine "Carapace de Ciseburine")
        (24 Carapace_de_bernard_l_ermite "Carapace de bernard-l'ermite")
        (25 Cerveau_de_grenouille "Cerveau de grenouille")
        (26 Cervelle_de_paresseux "Cervelle de paresseux")
        (27 Chair_d_un_serviteur "Chair d'un serviteur")
        (28 Champignon "Champignon")
        (29 Champignon_explosif "Champignon explosif")
        (30 Champignon_vénéneux_sauteur "Champignon vénéneux sauteur")
        (31 Champignon_à_verrues "Champignon à verrues")
        (32 Chenille "Chenille")
        (33 Cheveux_de_dragon_asiatique "Cheveux de dragon asiatique")
        (34 Chiendent_étoilé "Chiendent étoilé")
        (35 Chou_mordeur_de_Chine "Chou mordeur de Chine")
        (36 Chrysope_cuite "Chrysope cuite")
        (37 Corne_de_Grapcorne "Corne de Grapcorne")
        (38 Corne_de_bicorne "Corne de bicorne")
        (39 Corne_de_dragon "Corne de dragon")
        (40 Corne_de_licorne "Corne de licorne")
        (41 Cranson_officinal "Cranson officinal")
        (42 Crin_de_licorne "Crin de licorne")
        (43 Crochet_de_Ciseburine "Crochet de Ciseburine")
        (44 Crochet_de_serpent "Crochet de serpent")
        (45 Coeur_de_crocodile "Coeur de crocodile")
        (46 Dard_de_Billywig "Dard de Billywig")
        (47 Dard_séché_de_Billywig "Dard séché de Billywig")
        (48 Dictame "Dictame")
        (49 Digitale "Digitale")
        (50 Eau_de_miel "Eau de miel")
        (51 Eau_du_fleuve_Léthé "Eau du fleuve Léthé")
        (52 Engrais "Engrais")
        (53 Essence_de_chassevache "Essence de chassevache")
        (54 Essence_de_ciguë "Essence de ciguë")
        (55 Extrait_de_Ravegourde "Extrait de Ravegourde")
        (56 Feuilles_d_alihotsy "Feuilles d'alihotsy")
        (57 Figue "Figue")
        (58 Fleur_à_corne "Fleur à corne")
        (59 Foie_de_chauve_souris "Foie de chauve-souris")
        (60 Foie_de_dragon "Foie de dragon")
        (61 Fromage "Fromage")
        (62 Fève_sopophorique "Fève sopophorique")
        (63 Gelée_de_pétrole "Gelée de pétrole")
        (64 Gingembre "Gingembre")
        (65 Gomas_Barbadensis "Gomas Barbadensis")
        (66 Graine_de_feu "Graine de feu")
        (67 Griffe_de_dragon "Griffe de dragon")
        (68 Hippocampe_volant "Hippocampe volant")
        (69 Huile_de_ricin "Huile de ricin")
        (70 Hydromel "Hydromel")
        (71 Infusion_d_armoise "Infusion d'armoise")
        (72 Infusion_de_verveine "Infusion de verveine")
        (73 Ingrédient_naturel "Ingrédient naturel")
        (74 Ingrédient_standard "Ingrédient standard")
        (75 Jus_d_explobaies "Jus d'explobaies")
        (76 Jus_de_Horglup "Jus de Horglup")
        (77 Jus_de_figue "Jus de figue")
        (78 Lavande "Lavande")
        (79 Lewisie "Lewisie")
        (80 Limace_à_cornes "Limace à cornes")
        (81 Liquide_blanc "Liquide blanc")
        (82 Liquide_brun "Liquide brun")
        (83 Liquide_violet "Liquide violet")
        (84 Livèche "Livèche")
        (85 Mandragore "Mandragore")
        (86 Menthe "Menthe")
        (87 Moly "Moly")
        (88 Mucus_de_Veracrasse "Mucus de Veracrasse")
        (89 Mucus_de_cervelle_de_paresseux "Mucus de cervelle de paresseux")
        (90 Musard "Musard")
        (91 Oeil_d_anguille "Oeil d'anguille")
        (92 Oeil_de_Boullu "Oeil de Boullu")
        (93 Oeil_de_poisson_hérisson "Oeil de poisson-hérisson")
        (94 Oeil_de_poissons "Oeil de poissons")
        (95 Oeuf_d_Occamy "Oeuf d'Occamy")
        (96 Oeuf_de_Doxy "Oeuf de Doxy")
        (97 Oeuf_de_Runespoor "Oeuf de Runespoor")
        (98 Oeuf_de_Serpencendre "Oeuf de Serpencendre")
        (99 Ongle_de_griffon "Ongle de griffon")
        (100 Ortie_séchée "Ortie séchée")
        (101 Os "Os")
        (102 Os_d_un_père "Os d'un père")
        (103 Partie_de_dragon "Partie de dragon")
        (104 Peau_de_serpent_d_arbre_du_Cap "Peau de serpent d'arbre du Cap")
        (105 Perce_neige "Perce-neige")
        (106 Pierre_de_lune "Pierre de lune")
        (107 Pierre_philosophale "Pierre philosophale")
        (108 Pipaillon_de_nuit "Pipaillon de nuit")
        (109 Plume "Plume")
        (110 Plume_de_Jobarbille "Plume de Jobarbille")
        (111 Plume_de_hibou_grand_duc "Plume de hibou grand-duc")
        (112 Plume_de_paon "Plume de paon")
        (113 Poil_de_gronian "Poil de gronian")
        (114 Potion_raté "Potion raté")
        (115 Poudre_bleue "Poudre bleue")
        (116 Poudre_brune "Poudre brune")
        (117 Poudre_d_argent "Poudre d'argent")
        (118 Poudre_de_Ruta "Poudre de Ruta")
        (119 Poudre_jaune "Poudre jaune")
        (120 Poudre_rose "Poudre rose")
        (121 Poudre_rouge_sombre "Poudre rouge sombre")
        (122 Poudre_verte "Poudre verte")
        (123 Pâquerette "Pâquerette")
        (124 Pétales_de_rose "Pétales de rose")
        (125 Queue_de_rat "Queue de rat")
        (126 Raifort "Raifort")
        (127 Raisin_de_couleuvre "Raisin de couleuvre")
        (128 Rate_de_rat "Rate de rat")
        (129 Rosée_de_lune "Rosée de lune")
        (130 Rosée_du_matin "Rosée du matin")
        (131 Sal_ammoniac "Sal ammoniac")
        (132 Sang_d_un_ennemi "Sang d'un ennemi")
        (133 Sang_de_Re_em "Sang de Re'em")
        (134 Sang_de_salamandre "Sang de salamandre")
        (135 Sang_dragon "Sang-dragon")
        (136 Sangsue "Sangsue")
        (137 Sauge "Sauge")
        (138 Scarabée "Scarabée")
        (139 Sel "Sel")
        (140 Sirop_d_ellébore "Sirop d'ellébore")
        (141 Sisymbre "Sisymbre")
        (142 Soufre_vif "Soufre vif")
        (143 Teinture_de_tormentille "Teinture de tormentille")
        (144 Tentacules_de_Murlap "Tentacules de Murlap")
        (145 Thorax_de_libellules_grillés "Thorax de libellules grillés")
        (146 Touffe_de_Polygonum "Touffe de Polygonum")
        (147 Trompette_des_anges "Trompette des anges")
        (148 Tue_loup "Tue-loup")
        (149 Urine "Urine")
        (150 Valériane "Valériane")
        (151 Verrue_de_crapaud_violet_géant "Verrue de crapaud violet géant")
        (152 Vinaigre "Vinaigre")
        (153 Écorce_de_sorbier "Écorce de sorbier")
        (154 Écorce_de_wiggentree "Écorce de wiggentree")
        (155 Élément_du_corps_de_la_personne_dont_on_souhaite_prendre_l_apparence "Élément du corps de la personne dont on souhaite prendre l'apparence")
        (156 Épine_de_poisson_diable "Épine de poisson-diable")
        (157 Épine_de_porc_épic "Épine de porc-épic")
        (158 Éruptif "Éruptif")
        )
)

(setq *bdd_potions* '(
        (Potion_d_Actée_en_épi "Potion d'Actée en épi" "La potion d'Actée en épi (  angl.  Baneberry Potion ) est vraisemblablement un poison fait à partir d'actée en épi." "Poison" Poison "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/0/05/Potion_d%27Act%C3%A9e_en_%C3%A9pi.jpg/revision/latest?cb=20151123213442&path-prefix=fr" "Intermédiaire")
        (Potion_affaiblissante "Potion affaiblissante" "La potion affaiblissante (  angl.  Weakness Potion ) est une potion qui affaiblit physiquement et mentalement le buveur." "Affaiblit" Affaiblissant "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/4/46/Potion_affaiblissante.jpg/revision/latest?cb=20151116171804&path-prefix=fr" "Intermédiaire")
        (Potion_d_Aiguise_Méninges "Potion d'Aiguise-Méninges" "La potion d'Aiguise-Méninges (  angl.  Wit-Sharpening Potion ) est probablement un breuvage magique qui permet à celui qui le boit de mieux réfléchir. Cette potion neutralise également les effets du sortilège de Confusion. La potion serait composé de divers ingrédients qui comprendraient entre..." "Stimule la réflexion" Fortifiant "Liquide" "nan" "Harry Potter et la Coupe de Feu" "https://static.wikia.nocookie.net/harrypotter/images/6/65/Potion_d%27Aiguise-M%C3%A9ninges.jpg/revision/latest/scale-to-width-down/350?cb=20170430122817&path-prefix=fr" "Débutant")
        (Potion_d_Amnésie "Potion d'Amnésie" "La potion d'Amnésie (  angl.  Forgetfulness Potion ) est un breuvage qui provoque une perte de mémoire chez celui qui en boit. La recette est présente dans le livre Potions magiques d'Arsenius Beaulitron. Ajouter 2 gouttes d'eau du fleuve Léthé dans le chaudron Faire chauffer à feu doux pendant..." "Fait perdre la mémoire" Contrôle-mental "Liquide" "nan" "Harry Potter à l'école des sorciers" "https://static.wikia.nocookie.net/harrypotter/images/f/f8/Potion_d%27Amn%C3%A9sie.png/revision/latest?cb=20120419132106&path-prefix=fr" "Débutant")
        (Onguent_d_amnésie_du_Dr_Oubbly "Onguent d'amnésie du Dr Oubbly" "L'onguent d'amnésie du Dr Oubbly (  angl.  Dr. Ubbly's Oblivious Unction ) est une potion qui permet d'atténuer les effets des pensées. Madame Pomfresh applique de l'onguent d'amnésie du Dr Oubbly sur les blessures infligées par les tentacules de cerveau du Département des mystères. (  réf.  La..." "Fait perdre la mémoire" Contrôle-mental "Liquide" "Dr Oubbly" "Harry Potter et l'Ordre du Phénix" "nan" "Intermédiaire")
        (Amortentia "Amortentia" "L'Amortentia est le plus puissant philtre d'amour au monde. L'Amortentia peut être identifiée grâce à sa couleur nacrée, sa vapeur qui s'élève en spirales et l'odeur attirante qu'elle dégage, différente pour chacun. Horace Slughorn prépare quelques potions que les élèves devraient être capables..." "Rend amoureux" Contrôle-mental "Fumant" "nan" "Harry Potter et le Prince de Sang-Mêlé" "https://static.wikia.nocookie.net/harrypotter/images/0/05/Amortentia.jpg/revision/latest/scale-to-width-down/350?cb=20120406193500&path-prefix=fr" "Avancé")
        (Philtre_d_amour "Philtre d'amour" "Le philtre d'amour (  angl.  Love Potion ) est le nom générique de potions qui rendent temporairement le receveur amoureux du donneur. De nombreux philtres ont été créés par Laverne de Montmorency. Les œufs de Serpencendre gelés entrent dans la composition des philtres d'amour. Le philtre..." "Rend amoureux" Contrôle-mental "Liquide" "Laverne de Montmorency" "Harry Potter et la Chambre des Secrets" "https://static.wikia.nocookie.net/harrypotter/images/2/20/Philtre_d%27amour.png/revision/latest?cb=20170121121428&path-prefix=fr" "Avancé")
        (Antidote_à_un_philtre_d_amour "Antidote à un philtre d'amour" "L'antidote à un philtre d'amour (  angl.  Love Potion Antidote ) est une potion permettant d'annuler les effets d'un philtre d'amour. Après que Ron a mangé des chocolats au philtre d'amour, Harry l'emmène chez le professeur Slughorn pour lui demander un antidote. Le professeur les laisse entrer..." "Antidote aux philtres d'amour" Antidote "Liquide" "nan" "Harry Potter et le Prince de Sang-Mêlé" "https://static.wikia.nocookie.net/harrypotter/images/f/f2/Antidote_%C3%A0_un_philtre_d%27amour_2.jpg/revision/latest/scale-to-width-down/350?cb=20170430170529&path-prefix=fr" "Intermédiaire")
        (Onguent_anti_brûlure "Onguent anti-brûlure" "L'onguent anti-brûlure (  angl.  Burn-Healing Paste ) est une potion de guérison qui est utilisée pour guérir les brûlures. D'après Harry Potter : Secret à Poudlard, cet onguent est inefficace pour guérir les brûlures engendrées par le sortilège maléfique Protego Diabolica. Dans Secret à..." "Guérir les brûlures" Soin "Pateux" "nan" "Harry Potter et la Coupe de Feu" "nan" "Intermédiaire")
        (Potion_anti_feu "Potion anti-feu" "La potion anti-feu (  angl.  Fire-Protection Potion ) est une potion qui protège son buveur contre les flammes pendant une courte durée. Potion des flammes noires Potion des flammes violettes" "Protège du feu" Fortifiant "Liquide" "nan" "Harry Potter et les Reliques de la Mort : 1ère partie (jeu)" "https://static.wikia.nocookie.net/harrypotter/images/b/b8/Effets_potion_anti-feu_2.jpg/revision/latest/scale-to-width-down/350?cb=20161015194138&path-prefix=fr" "Avancé")
        (Solution_anti_Nargoles "Solution anti-Nargoles" "La solution anti-Nargoles (  angl.  Narglicide ) est une fausse potion censée repousser les Nargoles, des créatures imaginaires. Un jour, Philbert Chivers se rend à Slug & Jiggers et exige qu'on lui fournisse un produit contre les Nargoles. Pour se débarrasser de lui, Humphrey prend de vieilles..." "Repousse les Nargoles" Affaiblissant "Liquide" "Humphrey Balsamo" "Les Animaux Fantastiques : Enquêtes dans le Monde des Sorciers" "https://static.wikia.nocookie.net/harrypotter/images/0/03/Solution_anti-Nargoles.jpg/revision/latest/scale-to-width-down/350?cb=20170425163406&path-prefix=fr" "Débutant")
        (Potion_anti_paralysie "Potion anti-paralysie" "La potion anti-paralysie (  angl.  Anti-Paralysis Potion ) soignant la paralysie de celui qui la boit. De la potion anti-paralysie est vendue à la boutique de l'apothicaire sur le Chemin de Traverse pour vingt mornilles." "Empêche la paralysie" Fortifiant "Liquide" "nan" "Harry Potter et la Chambre des Secrets (jeu)" "https://static.wikia.nocookie.net/harrypotter/images/c/ce/Potion_anti-paralysie.png/revision/latest?cb=20170512125324&path-prefix=fr" "Intermédiaire")
        (Antidote_au_Veritaserum "Antidote au Veritaserum" "L'antidote au Veritaserum (  angl.  antidote to Veritaserum ) permet de contrer les effets du Veritaserum. Quand Dumbledore demande à Harry de récupérer le souvenir d'Horace Slughorn au sujet de Tom Jedusor, Harry réplique qu'il serait plus simple d'utiliser du Veritaserum, ce à quoi Dumbledore..." "Antidote au Veritaserum" Antidote "Liquide" "nan" "Harry Potter et le Prince de Sang-Mêlé" "nan" "Avancé")
        (Philtre_d_apathie "Philtre d'apathie" "Le philtre d'apathie (  angl.  Dawdle Draught ) est une potion magique qui réduit les chances qu'un Sceau disparaisse avec le Retrouvable, ce qui donne plus d'occasions de terminer le trace. Cette potion était préparée et utilisée par les sorciers et sorcières volontaires employés par le Groupe..." "Réduit les chances qu'un Sceau disparaisse avec le Retrouvable" Chance "Liquide" "nan" "Harry Potter: Wizards Unite" "https://static.wikia.nocookie.net/harrypotter/images/b/b6/Dawdle_Draught.png/revision/latest?cb=20190805165933&path-prefix=fr" "Avancé")
        (Potion_d_apocyn "Potion d'apocyn" "La potion d'apocyn (  angl.  Dogbane Potion ) est vraisemblablement un poison pour animaux fait à partir d'apocyn." "Poison pour animaux" Poison "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/2/24/Potion_d%27apocyn.jpg/revision/latest?cb=20151123203614&path-prefix=fr" "Intermédiaire")
        (Baume_d_asclépiade_tubéreuse "Baume d'asclépiade tubéreuse" "Le baume d'asclépiade tubéreuse (  angl.  Butterfly Weed Balm ) est un baume médicinal probablement fait à partir d'asclépiade tubéreuse." "Soigne" Soin "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/8/85/Baume_d%27ascl%C3%A9piade_tub%C3%A9reuse.jpg/revision/latest?cb=20151113153004&path-prefix=fr" "Intermédiaire")
        (Potion_aveuglante "Potion aveuglante" "La potion aveuglante (  angl.  Mopsus Potion ) est une potion qui a pour effet d'aveugler. La potion Oculus permet probablement d'annuler les effets de cette potion." "Aveugle" Affaiblissant "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/a/a1/Potion_aveuglante.jpg/revision/latest/scale-to-width-down/350?cb=20151119234516&path-prefix=fr" "Intermédiaire")
        (Potion_de_Babillage "Potion de Babillage" "La potion de Babillage (  angl.  Babbling Beverage ) est un breuvage magique qui provoque chez le buveur des propos insensés. Dans le jeu Harry Potter : Secret à Poudlard, le cadet de Jacob peut apprendre comment concocter cette potion avec l'aide de son préfet. Le cadet teste d'ailleurs sa..." "Produit des propos insensés" Contrôle-mental "Liquide" "nan" "Harry Potter et l'Ordre du Phénix" "https://static.wikia.nocookie.net/harrypotter/images/c/c5/Potion_de_Babillage.png/revision/latest?cb=20200505154956&path-prefix=fr" "Intermédiaire")
        (Goutte_Baillon "Goutte Baillon" "La Goutte Baillon (  angl.  Muffling Draught ) est une potion qui empêche le buveur de parler. Ses vapeurs suffisent à ce que la personne l'utilisant en ressente les effets." "Empêche de parler" Contrôle-mental "Fumant" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/b/b3/Goutte_Baillon.jpg/revision/latest?cb=20151125144118&path-prefix=fr" "Intermédiaire")
        (Baume_pour_le_bec "Baume pour le bec" "Le baume pour le bec (  angl.  Beak Balm ) est un produit curatif pour le bec de certaines créatures magiques. D'après le site officiel de MinaLima, ce baume est à appliquer avec une cuillère à café sur la zone endommagée du bec et ce, toutes les heures jusqu'à guérison. Si l'infection persiste..." "Soigne" Soin "Liquide" "nan" "Les Animaux fantastiques (film)" "https://static.wikia.nocookie.net/harrypotter/images/e/e4/Baume_pour_le_bec.jpg/revision/latest?cb=20231202095040&path-prefix=fr" "Débutant")
        (Potion_de_beauté "Potion de beauté" "Une potion de beauté (  angl.  Beautifying Potion ou Beautification Potion ) est le nom générique de potions magiques qui permettent de modifier son physique. Sacharissa Tugwood est la pionnière des potions de beauté. Les potions de beauté peuvent être de deux types : Elles peuvent permettre de..." "Rend séduisant" Métamorphose "Liquide" "Zygmunt Budge" "Harry Potter et la Chambre des Secrets (jeu)" "https://static.wikia.nocookie.net/harrypotter/images/9/92/Potion_de_beaut%C3%A9.png/revision/latest?cb=20150227101000&path-prefix=fr" "Avancé")
        (Potion_bomboeil "Potion bombœil" "Le potion bombœil (  angl.  Bulgeye Potion ) est une potion qui affecte probablement la vue." "Aveugle" Affaiblissant "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/9/90/Potion_bomb%C5%93il.jpg/revision/latest?cb=20151122125751&path-prefix=fr" "Intermédiaire")
        (Philtre_Calmant "Philtre Calmant" "Le philtre Calmant (  angl.  Calming Draught ) est une potion utilisée pour détendre une personne stressée ou en état de choc. À l'approche des BUSE, Hannah Abbot fond en larmes pendant un cours de botanique et geint qu'elle est trop stupide pour réussir ses examens et demande à quitter l'école..." "Détend" Soin "Liquide" "nan" "Harry Potter et l'Ordre du Phénix" "https://static.wikia.nocookie.net/harrypotter/images/0/02/Filtre_calmant.jpg/revision/latest?cb=20190722085507&path-prefix=fr" "Intermédiaire")
        (Potion_Capillours "Potion Capillours" "La potion Capillours (  angl.  Manegro Potion ) est une potion qui fait pousser les cheveux du buveur à grande vitesse. Dans la version anglaise, Manegro est probablement composé de deux termes anglais : mane signifiant « crinière (d'un lion, d'un cheval) » et grow (« pousser, grossir..." "Fait pousser les cheveux" Fortifiant "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/5/52/Potion_Capillours.jpg/revision/latest?cb=20151125144009&path-prefix=fr" "Débutant")
        (Élixir_Cérébral_de_Baruffio "Élixir Cérébral de Baruffio" "L'Élixir Cérébral de Baruffio (  angl.  Baruffio's Brain Elixir ) est une potion destinée à augmenter la concentration et l'agilité mentale et à diminuer le besoin de sommeil. Eddie Carmichael fait du marché noir avec une bouteille d'Élixir Cérébral de Baruffio qu'il essaie de vendre à des..." "Stimule la concentration" Fortifiant "Liquide" "Baruffio" "Harry Potter et l'Ordre du Phénix" "https://static.wikia.nocookie.net/harrypotter/images/7/79/%C3%89lixir_C%C3%A9r%C3%A9bral_de_Baruffio.jpg/revision/latest/scale-to-width-down/306?cb=20170418161019&path-prefix=fr" "Avancé")
        (Breuvage_de_champignon_mortel "Breuvage de champignon mortel" "Le breuvage de champignon mortel (  angl.  Death-Cap Draught ) est un poison probablement fait à partir de calice de la mort." "Poison" Poison "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/e/e9/Philtre_du_Calice_de_la_Mort.jpg/revision/latest?cb=20151125185503&path-prefix=fr" "Intermédiaire")
        (Baume_de_chiendent_étoilé "Baume de chiendent étoilé" "La baume de chiendent étoilé (  angl.  Star Grass Salve ) est un baume vraisemblablement fait à partir de chiendent étoilé." "Soigne" Soin "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/a/a7/Baume_de_chiendent_%C3%A9toil%C3%A9.jpg/revision/latest?cb=20151123214755&path-prefix=fr" "Intermédiaire")
        (Cirage_à_cornes_revigorant "Cirage à cornes revigorant" "Le cirage à cornes revigorant (  angl.  Healthy Horn Polish ) est une potion soignante pour les cornes de créatures magiques. Il est particulièrement efficace pour les cornes d'Éruptif, de Grapcorne, de Re'em et de Tébo. Norbert Dragonneau en possède dans sa valise." "Soigne" Soin "Liquide" "nan" "Les Animaux fantastiques (film)" "https://static.wikia.nocookie.net/harrypotter/images/3/36/Cirage_%C3%A0_cornes_revigorant.jpg/revision/latest?cb=20161114164255&path-prefix=fr" "Intermédiaire")
        (Philtre_de_Confusion "Philtre de Confusion" "Le philtre de Confusion (  angl.  Confusing Concoction ou Confusing Draught ) est une potion qui incite à des conduites impétueuses et téméraires, tout comme le philtre d'Embrouille. Les élèves de troisième année doivent préparer pour leur épreuve de potions un philtre d'Embrouille. Harry Potter..." "Incite à des conduites impétueuses et téméraires" Contrôle-mental "Liquide" "nan" "Harry Potter et le prisonnier d'Azkaban" "nan" "Débutant")
        (Potion_crache_flammes "Potion crache-flammes" "La potion crache-flammes (  angl.  Fire-Breathing Potion ) est une potion dangereuse qui peut faire cracher du feu à un individu. Rubeus Hagrid demande au cadet de Jacob de l'aider à concocter cette potion pour libérer son chien des Filets du Diable. Quand le cadet de Jacob demande à Severus..." "Fait cracher des flammes" Pouvoir quelconque "Liquide" "nan" "Harry Potter : Secret à Poudlard" "https://static.wikia.nocookie.net/harrypotter/images/f/fa/Potion_de_Souffle_de_Feu_2.png/revision/latest?cb=20180506080315&path-prefix=fr" "Débutant")
        (Philtre_Dégonflant "Philtre Dégonflant" "Le philtre Dégonflant (  angl.  Deflating Draught ) est une potion qui sert d'antidote à la potion d'Enflure. Harry Potter a fait exploser un pétard du Dr Flibuste dans le chaudron de Gregory Goyle qui contenait de la potion d'Enflure. Hermione Granger profite de la diversion pour sortir de la..." "Antidote à enflure" Antidote "Liquide" "nan" "Harry Potter et la Chambre des Secrets" "nan" "Avancé")
        (Goutte_désopilante "Goutte désopilante" "La goutte désopilante (  angl.  Alihotsy Draught ) est une potion qui provoque l'hystérie." "Rend hystérique" Hallucinogène "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/c/c4/Goutte_d%C3%A9sopilante.png/revision/latest?cb=20151123203503&path-prefix=fr" "Débutant")
        (Essence_de_dictame "Essence de dictame" "L'essence de dictame (  angl.  essence of dittany ) est une potion qui permet de soigner les plaies. Il ne suffit que de quelques gouttes pour que la plaie se referme, comme si elle datait de plusieurs jours, laissant place à une peau neuve. Lorsqu'elle agit, une fumée verdâtre s'élève. Hermione..." "Soigne" Soin "Liquide" "nan" "Harry Potter et les Reliques de la Mort" "https://static.wikia.nocookie.net/harrypotter/images/6/61/Essence_de_dictame.jpg/revision/latest?cb=20180424174607&path-prefix=fr" "Débutant")
        (Doxycide "Doxycide" "Le Doxycide est une potion de couleur noire qui s'applique avec un pulvérisateur. Il sert à éliminer les Doxys qui peuvent peupler les maisons. Il les paralyse temporairement, ce qui permet aux sorciers de s'en débarrasser sans risquer de se faire mordre. Mettre cinq mesures de Bandimon dans le..." "Paralyse les Doxys" Contrôle-mental "Liquide" "Zygmunt Budge" "Harry Potter et l'Ordre du Phénix" "https://static.wikia.nocookie.net/harrypotter/images/8/8c/Doxycide_Pottermore.png/revision/latest?cb=20150215121357&path-prefix=fr" "Débutant")
        (Poison_de_dragon "Poison de dragon" "Le poison de dragon (  angl.  Dragon Poison ) est un poison probablement fait à partir de parties de dragon." "Poison" Poison "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/5/5c/Poison_Dragon.jpg/revision/latest?cb=20151113152858&path-prefix=fr" "Avancé")
        (Dragonfortant "Dragonfortant" "Le Dragonfortant (  angl.  Dragon Tonic ) est une potion médicinale pour dragons. En 1992, d'après le jeu Harry Potter à l'école des sorciers sur PS1, Hagrid concocte du Dragonfortant qu'il donne à son dragon Norbert qui ne se sent pas bien." "Soigne les dragons" Soin "Liquide" "nan" "Harry Potter à l'école des sorciers (jeu)" "nan" "Avancé")
        (Efface_Boutons_dix_secondes_garanties "Efface-Boutons dix secondes garanties" "L'Efface-Boutons dix secondes garanties (  angl.  Guaranted Ten-Second Pimple Vanisher ) est une potion vendue chez Weasley, Farces pour sorciers facétieux. Chez Weasley, Farces pour sorciers facétieux, Ginny essaye de détourner l'attention de ses frères Fred et George qui lui posent des..." "Soin du visage" Soin "Liquide" "nan" "Harry Potter et le Prince de Sang-Mêlé" "https://static.wikia.nocookie.net/harrypotter/images/d/de/Efface-Boutons_dix_secondes_garanties.jpg/revision/latest?cb=20160427153603&path-prefix=fr" "Intermédiaire")
        (Philtre_d_Embrouille "Philtre d'Embrouille" "Le philtre d'Embrouille (  angl.  Befuddlement Draught ) est une potion qui incite à des conduites impétueuses et téméraires, tout comme le philtre de Confusion. Dans un chaudron rempli d'eau et sur le feu : Ajouter du cranson officinal Ajouter de la livèche Ajouter de l'achillée sternutatoire..." "Incite à des conduites impétueuses et téméraires" Contrôle-mental "Liquide" "nan" "Harry Potter et l'Ordre du Phénix" "https://static.wikia.nocookie.net/harrypotter/images/d/de/Philtre_d%27Embrouille.jpg/revision/latest?cb=20151201180656&path-prefix=fr" "Intermédiaire")
        (Potion_d_Enflure "Potion d'Enflure" "La potion d'Enflure (  angl.  Swelling Solution ) est une potion qui fait enfler la personne visée. Ajouter 2 mesures d'orties séchées dans le mortier. Ajouter 3 yeux de poisson dans le mortier. Écraser avec le pilon jusqu'à l'obtention d'une poudre moyenne à fine. Ajouter 2 mesures du mélange..." "Fait enfler" Affaiblissant "Liquide" "nan" "Harry Potter et la Chambre des Secrets" "https://static.wikia.nocookie.net/harrypotter/images/1/10/Potion_d%27Enflure.jpg/revision/latest?cb=20120403163238&path-prefix=fr" "Débutant")
        (Engrais "Engrais" "L'engrais (  angl.  fertiliser ), que l'on appelle aussi fertilisant, est une potion assurant une meilleure croissance aux plantes. L'engrais est souvent utilisé en botanique pour assurer une meilleure croissance aux plantes. Une fois préparé, si l'engrais est mélangé à de la bouse de dragon à..." "Fertilise" Jardin "Liquide" "nan" "Harry Potter et la Chambre des Secrets" "https://static.wikia.nocookie.net/harrypotter/images/5/5c/Engrais_2.jpg/revision/latest/scale-to-width-down/350?cb=20170430201707&path-prefix=fr" "Intermédiaire")
        (Élixir_éternel "Élixir éternel" "L'élixir éternel (  angl.  Everlasting Elixir ) est une potion traitée dans le Manuel avancé de préparation des potions et étudiée en sixième année en cours de potions à Poudlard. Harry Potter étudie à la bibliothèque de Poudlard avec Hermione Granger. Il prend des notes sur les élixirs éternels..." "Rend éternel les objets" Fortifiant "Liquide" "nan" "Harry Potter et le Prince de Sang-Mêlé" "nan" "Avancé")
        (Élixir_d_Euphorie "Élixir d'Euphorie" "L'élixir d'Euphorie (  angl.  Elixir to Induce Euphoria ) est une potion qui met le buveur de bonne humeur. Les effets secondaires qui consistent à donner un peu trop envie de chanter et de tordre le nez d'autrui peuvent être atténués en ajoutant de la menthe. Dans un chaudron rempli d'eau et..." "Rend de bonne humeur" Fortifiant "Liquide" "nan" "Harry Potter et le Prince de Sang-Mêlé" "https://static.wikia.nocookie.net/harrypotter/images/4/40/%C3%89lixir_d%27Euphorie.jpg/revision/latest/scale-to-width-down/350?cb=20151204190227&path-prefix=fr" "Intermédiaire")
        (Everklena "Everklena" "Everklena est une potion sous forme de vaporisateur inventée par Erica Stainwright. Vendue dans les années 1950, cette potion prétendait être un nettoyant efficace, mais son inventrice connut la honte lorsque l'on découvrit qu'elle apportait crasse et moisissures." "Salit" Outil "Liquide" "Erica Stainwright" "Site officiel de J.K. Rowling" "https://static.wikia.nocookie.net/harrypotter/images/f/fd/Everklena.jpg/revision/latest?cb=20160330195650&path-prefix=fr" "Intermédiaire")
        (Potion_explosive "Potion explosive" "La potion explosive (  angl.  Exploding Potion ) est une potion rare et très instable. Si elle est manipulée sans soin, elle peut exploser à tout moment." "Explose" Effet externe "Liquide" "nan" "Harry Potter et les Reliques de la Mort : 1ère partie (jeu)" "https://static.wikia.nocookie.net/harrypotter/images/b/ba/Potion_explosive.jpg/revision/latest?cb=20161013160319&path-prefix=fr" "Avancé")
        (Potion_exstimulo "Potion exstimulo" "La potion exstimulo (  angl.  Exstimulo Potion ) est une potion magique qui permet d'améliorer les incantations dans les traces et les défis de sorciers. La Potion exstimulo renforcée et la Potion exstimulo puissante sont des variantes significativement plus puissante de cette potion. Cette..." "Améliore les incantations dans les traces et les défis de sorciers" Fortifiant "Liquide" "nan" "Harry Potter: Wizards Unite" "https://static.wikia.nocookie.net/harrypotter/images/0/05/Potion_exstimulo.jpg/revision/latest/scale-to-width-down/350?cb=20190804123135&path-prefix=fr" "Débutant")
        (Vapeurs_de_fatigue "Vapeurs de fatigue" "Les vapeurs de fatigue (  angl.  Fatiguing Fusion ) est une potion qui épuise celui qui la boit. Le simple fait d'en inhaler les vapeurs est suffisant pour provoquer la fatigue." "Fatigue" Affaiblissant "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/7/79/Vapeurs_de_fatigue.jpg/revision/latest?cb=20151125152017&path-prefix=fr" "Intermédiaire")
        (Felix_Felicis "Felix Felicis" "Felix Felicis, aussi appelé chance liquide, est une potion qui procure temporairement au buveur une chance exceptionnelle. Elle fut inventée au seizième siècle par le sorcier Zygmunt Budge. Le Felix Felicis est une potion très difficile à préparer. Il faut prévoir six mois pour la préparer. Il..." "Rend chanceux" Chance "Liquide" "Zygmunt Budge" "Harry Potter et le Prince de Sang-Mêlé" "https://static.wikia.nocookie.net/harrypotter/images/7/7a/Felix_Felicis_Pottermore.jpg/revision/latest?cb=20160225133503&path-prefix=fr" "Avancé")
        (Potion_des_flammes_noires "Potion des flammes noires" "La potion des flammes noires (  angl.  Black Fire Potion ), aussi appelée potion de protection contre le feu (  angl.  Fire Protection Potion ) ou potion de glace (  angl.  Ice Potion ) est une potion qui permet à celui qui la boit de passer au travers d'un brasier obscur sans se brûler. Severus..." "Protège d'un brasier obscur" Fortifiant "Liquide" "nan" "Harry Potter à l'école des sorciers" "https://static.wikia.nocookie.net/harrypotter/images/6/64/Potion_des_flammes_noires.jpg/revision/latest?cb=20151124111854&path-prefix=fr" "Avancé")
        (Potion_des_flammes_violettes "Potion des flammes violettes" "La potion des flammes violettes est une potion qui permet à celui qui la boit de passer au travers de flammes violettes sans se brûler. Severus Rogue prépare cette potion pour pouvoir passer les flammes violettes qui font partie des protections de la Pierre philosophale. Dans la nuit du 4 au 5..." "Protège des flammes violettes" Fortifiant "Liquide" "nan" "Harry Potter à l'école des sorciers" "https://static.wikia.nocookie.net/harrypotter/images/a/a5/Potion_des_flammes_violettes.jpg/revision/latest?cb=20151124130908&path-prefix=fr" "Avancé")
        (Solution_de_Force "Solution de Force" "La solution de Force (  angl.  Strengthening Solution ) est une potion qui augmente probablement la force de celui qui la boit. Deux jours sont nécessaires pour préparer une potion de Force efficace.[réf. nécessaire] Les élèves de cinquième année préparent une solution de Force en cours de..." "Augmente la force" Fortifiant "Liquide" "nan" "Harry Potter et l'Ordre du Phénix" "nan" "Intermédiaire")
        (Potion_fortifiante "Potion fortifiante" "La potion fortifiante (  angl.  Girding Potion ) est une potion redonnant des forces à celui qui la boit. À Poudlard, cette potion est enseignée aux élèves de troisième année. Dans un chaudron rempli d'eau et sur le feu : Ajouter une aile de fée pour que la potion devienne verte. Chauffer..." "Augmente la force" Fortifiant "Liquide" "nan" "Harry Potter et le prisonnier d'Azkaban (jeu)" "https://static.wikia.nocookie.net/harrypotter/images/b/be/Potion_fortifiante.jpg/revision/latest/scale-to-width-down/350?cb=20170430122816&path-prefix=fr" "Intermédiaire")
        (Potions_à_base_de_fromage "Potions à base de fromage" "Des potions à base de fromage (  angl.  Cheese-Based Potions ) sont, comme leur nom l'indique, des potions dont l'ingrédient principal est le fromage." "Nourrit" Fortifiant "Liquide" "nan" "Site officiel de J.K. Rowling" "nan" "Débutant")
        (Potion_fungiface "Potion fungiface" "La potion fungiface (  angl.  Fungiface Potion ) est une potion qui fait pousser des champignons sur le visage de la personne ou de la créature qui la boit." "Fait pousser des champignons sur le visage" Poison "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/b/bc/Potion_fungiface.jpg/revision/latest?cb=20151124164901&path-prefix=fr" "Débutant")
        (Remède_contre_les_furoncles "Remède contre les furoncles" "Le remède contre les furoncles (  angl.  Cure for Boils ) est, comme son nom l'indique, une potion qui permet de soigner les furoncles. Elle annule également les effets du sortilège de Furonculose. Ajouter 6 crochets de serpent dans le mortier. Écraser à l'aide du pilon pour obtenir une poudre..." "Soigne les furoncles" Soin "Liquide" "nan" "Harry Potter à l'école des sorciers" "https://static.wikia.nocookie.net/harrypotter/images/b/b0/Rem%C3%A8de_contre_les_furoncles.png/revision/latest?cb=20170227113722&path-prefix=fr" "Débutant")
        (Gaz_Étrangleur "Gaz Étrangleur" "Le Gaz Étrangleur (  angl.  Garrotting Gas ) est une potion qui répand un nuage de gaz faisant s'évanouir toute personne se trouvant dans son rayon d'action. Fred et George Weasley prévoient de lâcher du Gaz Étrangleur dans Poudlard avant de s'enfuir de l'école, mais finissent par abandonner..." "Provoque un évanouissement" Hallucinogène "Liquide" "nan" "Harry Potter et l'Ordre du Phénix" "https://static.wikia.nocookie.net/harrypotter/images/2/26/Gaz_%C3%89trangleur.jpg/revision/latest?cb=20161013160318&path-prefix=fr" "Débutant")
        (Potion_de_Haine "Potion de Haine" "La Potion de Haine (  angl.  Hate Potion ) est une potion qui révèle les pires défauts et habitudes d'une personne visée aux yeux du buveur. D'après The Daily Prophet newsletters, au cours des années 1990, la Gazette du sorcier conseille cette potion aux sorcières et sorciers qui voudraient se..." "Révèle les défauts" Contrôle-mental "Liquide" "nan" "The Daily Prophet newsletters" "nan" "Débutant")
        (Potion_d_haleine_de_chien "Potion d'haleine de chien" "La potion d'haleine de chien (  angl.  Dogbreath Potion ) est un breuvage magique qui donne au buveur un souffle de feu temporaire." "Provoque un souffle de feu" Pouvoir quelconque "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/0/04/Potion_d%27haleine_de_chien.jpg/revision/latest?cb=20120404190127&path-prefix=fr" "Intermédiaire")
        (Herbicide "Herbicide" "L'Herbicide est une potion qui est utilisée pour tuer ou abîmer les plantes. La recette est présente dans le livre Potions magiques d'Arsenius Beaulitron. Ajouter quatre échines de poisson-diable dans le mortier Écraser à l'aide du pilon pour obtenir une poudre grossière Ajouter deux mesures de..." "Détruit les plantes" Poison "Liquide" "nan" "Harry Potter à l'école des sorciers (jeu)" "https://static.wikia.nocookie.net/harrypotter/images/d/d0/Herbicide.png/revision/latest?cb=20120415122720&path-prefix=fr" "Débutant")
        (Potion_à_Hérisser_les_Cheveux "Potion à Hérisser les Cheveux" "La potion à Hérisser les Cheveux (  angl.  Hair-Raising Potion ), parfois appelée potion pour la pousse des cheveux, est une potion qui fait dresser les cheveux sur la tête. Severus Rogue donne un devoir de potions aux élèves de deuxième année qui concerne la potion à Hérisser les Cheveux. La..." "Fait dresser les cheveux sur la tête" Pouvoir quelconque "Liquide" "nan" "Harry Potter et la Chambre des Secrets" "https://static.wikia.nocookie.net/harrypotter/images/3/3b/Hair-Raising_Potion.jpg/revision/latest?cb=20120403162645&path-prefix=fr" "Intermédiaire")
        (Potion_d_Hilarité "Potion d'Hilarité" "La potion d'Hilarité provoque une incontrôlable hilarité. Cette potion requiert une grande finesse. Mal préparée, les résultats peuvent varier d'une folie hystérique à une profonde et inconsolable mélancolie." "Rend hilare" Affaiblissant "Liquide" "nan" "Wonderbook : Le Livre des Potions" "nan" "Intermédiaire")        (Décoction_Hoqueteuse "Décoction Hoqueteuse" "Malefoy rangeait déjà ses affaires, la mine grincheuse. Slughorn avait qualifié sa décoction Hoqueteuse de simplement passable.Cours de potions La décoction Hoqueteuse (  angl.  Hiccoughing Solution ) est une potion qui provoque probablement le hoquet. Le jour du permis de transplanage, seuls..." "Provoque le hoquet" Affaiblissant "Liquide" "nan" "Harry Potter et le Prince de Sang-Mêlé" "https://static.wikia.nocookie.net/harrypotter/images/4/4f/D%C3%A9coction_Hoqueteuse.png/revision/latest?cb=20150718132306&path-prefix=fr" "Intermédiaire")
        (Infusion_infecte "Infusion infecte" "L'infusion infecte (  angl.  Foul Brew ) est un mélange de plusieurs ingrédients de potions nauséabonds. Drago Malefoy semble être en mesure de la préparer. Parmi ses ingrédients figurent des champignons et des plumes." "Poison" Poison "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/8/8e/Infusion_infecte.jpg/revision/latest?cb=20120404161936&path-prefix=fr" "Intermédiaire")
        (Potion_jaillissante "Potion jaillissante" "La potion jaillissante (  angl.  Erumpent Potion ) est une potion aux effets vraisemblablement dangereux." "Dangereux" Effet externe "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/4/4e/Potion_jaillissante.jpg/revision/latest?cb=20151115113133&path-prefix=fr" "Débutant")
        (Baume_de_lewisie_brûlante "Baume de lewisie brûlante" "Le baume de lewisie brûlante (  angl.  Burning Bitterroot Balm ) est probablement un médicament magique." "Soigne" Soin "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/7/74/Baume_de_lewisie_br%C3%BBlante.jpg/revision/latest?cb=20151128140146&path-prefix=fr" "Avancé")
        (Potion_capillaire_Lissenplis "Potion capillaire Lissenplis" "La potion capillaire Lissenplis (  angl.  Sleekeazy's Hair Potion ) est une potion qui permet de rendre les cheveux lisses et soyeux. Selon Harry Potter, le coffret ultime, la potion Lissenplis est fabriquée en Chine. Selon le même coffret, cette potion est créée à base de Gomas Barbadensis, de..." "Permet de rendre les cheveux lisses et soyeux" Fortifiant "Liquide" "Fleamont Potter" "Harry Potter et la Coupe de Feu" "https://static.wikia.nocookie.net/harrypotter/images/0/02/Potion_capillaire_Lissenplis.jpg/revision/latest/scale-to-width-down/350?cb=20200406155832&path-prefix=fr" "Intermédiaire")
        (Élixir_de_longue_vie "Élixir de longue vie" "L'élixir de longue vie (  angl.  Elixir of Life ) est un breuvage magique qui prolonge l'existence de celui qui le boit. L'élixir de longue vie est fabriqué à partir de la Pierre philosophale. Il prolonge l'existence mais il doit être pris régulièrement pour maintenir son immortalité. Selon Les..." "Prolonge l'existence" Fortifiant "Liquide" "nan" "Harry Potter à l'école des sorciers" "https://static.wikia.nocookie.net/harrypotter/images/0/00/%C3%89lixir_de_longue_vie.jpg/revision/latest?cb=20160529093403&path-prefix=fr" "Avancé")
        (Mélange_malveillant "Mélange malveillant" "Le mélange malveillant (  angl.  Malevolent Mixture ) est un breuvage magique qui agit vraisemblablement comme un poison ou a d'autres effets néfastes." "Poison" Poison "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/f/f6/M%C3%A9lange_malveillant.jpg/revision/latest?cb=20151119201657&path-prefix=fr" "Débutant")
        (Philtre_régénérateur_à_la_mandragore "Philtre régénérateur à la mandragore" "Le philtre régénérateur à la mandragore (  angl.  Mandrake Restorative Draught ) est une potion qui est fabriquée à partir de mandragores ayant atteint leur maturité et qui permet de guérir les personnes qui ont été pétrifiées. En 1992, Gilderoy Lockhart souhaite se charger de la préparation de..." "Guérit ceux qui ont été pétrifiés" Antidote "Liquide" "nan" "Harry Potter et la Chambre des Secrets" "nan" "Avancé")
        (Mélange_de_bouse_de_dragon_et_d_engrais "Mélange de bouse de dragon et d'engrais" "Le mélange de bouse de dragon et d'engrais (  angl.  mixture of dragon-dung and fertilisers ) est une expérience de Neville Londubat. Ce mélange a pour effet de provoquer la croissance d'une plante à une très grande vitesse, mais tout en lui donnant des proportions alarmantes. Vers le début de..." "Fertilise" Jardin "Liquide" "Neville Londubat" "Harry Potter et l'Ordre du Phénix (jeu)" "nan" "Débutant")
        (Potion_de_Mémoire "Potion de Mémoire" "La potion de Mémoire (  angl.  Memory Potion ) est une potion qui permet à celui qui l'absorbe d'améliorer l'accès à ses souvenirs. D'après Harry Potter : Secret à Poudlard, les ingrédients nécessaires pour concocter la potion de Mémoire sont des feuilles d'alihotsy, de la menthe poivrée, de la..." "Stimule la mémoire" Fortifiant "Liquide" "nan" "Les Animaux fantastiques" "https://static.wikia.nocookie.net/harrypotter/images/9/9b/Potion_de_M%C3%A9moire.jpg/revision/latest?cb=20161027184224&path-prefix=fr" "Avancé")
        (Potion_de_Mort "Potion de Mort" "La potion de Mort (  angl.  Death potion ) est un liquide magique utilisé dans les Cellules de la mort du MACUSA. Selon le film Les Animaux fantastiques, la potion de Mort est un liquide noir et bouillonnant. Le MACUSA s'en sert dans ses cellules de condamnation à mort. Les bourreaux extraient..." "Mortel" Poison "Liquide" "nan" "Les Animaux fantastiques (film)" "https://static.wikia.nocookie.net/harrypotter/images/7/7a/Potion_de_Mort.gif/revision/latest/scale-to-width-down/350?cb=20200826152624&path-prefix=fr" "Intermédiaire")
        (Philtre_de_Mort_Vivante "Philtre de Mort Vivante" "Le philtre de Mort Vivante (  angl.  Draught of Living Death ) est une potion magique de somnifère également appelée la Goutte du Mort vivant. L'antidote est la potion Wiggenweld. À mi-chemin de la préparation, on obtient un liquide satiné, couleur cassis. Puis la couleur devient lilas. La..." "Somnifère" Hallucinogène "Liquide" "nan" "Harry Potter à l'école des sorciers" "https://static.wikia.nocookie.net/harrypotter/images/2/28/Philtre_de_Mort_Vivante_2.jpg/revision/latest/scale-to-width-down/350?cb=20151205163649&path-prefix=fr" "Intermédiaire")
        (Mélange_de_poudre_d_argent_et_de_dictame "Mélange de poudre d'argent et de dictame" "Un mélange de poudre d'argent et de dictame (  angl.  mixture of powdered silver and dittany ) permet de sceller une morsure de loup-garou, évitant ainsi que la victime ne saigne à mort. Toutefois, certains sorciers auraient préféré mourir de leurs blessures plutôt que de vivre en étant atteint..." "Scelle une morsure de loup-garou" Soin "Liquide" "nan" "Pottermore" "nan" "Débutant")        (Nettoie_Tout_magique_de_la_Mère_Grattesec "Nettoie-Tout magique de la Mère Grattesec" "Le Nettoie-Tout magique de la Mère Grattesec (  angl.  Mrs. Skower's All-Purpose Magical Mess Remover ), également connue sous le nom de Magicprop de madame Prop (  angl.  Mrs Skower's Magical Mess Remover ), est une potion de nettoyage. D'après le jeu Harry Potter et la Chambre des Secrets sur..." "Enlève les taches" Outil "Liquide" "nan" "Harry Potter et la Chambre des Secrets" "https://static.wikia.nocookie.net/harrypotter/images/e/e2/Solution_de_Nettoyage.jpg/revision/latest?cb=20161029112616&path-prefix=fr" "Intermédiaire")
        (Potion_de_nettoyage "Potion de nettoyage" "La potion de nettoyage (  angl.  cleaning potion ) est le nom générique de potions qui permettent de faire le ménage. Nettoie-Tout magique de la mère Grattesec Détergents magiques contenant des sécrétions diluées de Bandimon Fausses potions de nettoyage d'Erica Stainwright" "Nettoie" Outil "Liquide" "Erica Stainwright" "Site officiel de J.K. Rowling" "nan" "Intermédiaire")
        (Potion_Oculus "Potion Oculus" "La potion Oculus (  angl.  Oculus Potion ) est un breuvage magique qui améliore la vision de celui qui le boit. Cette potion permet également de neutraliser les effets du sortilège de Conjonctivite. Dans un chaudron rempli d'eau et sur le feu : Secouer une fiole d'infusion d'armoise puis ajouter..." "Améliore la vision" Fortifiant "Liquide" "nan" "Harry Potter et le Prince de Sang-Mêlé (jeu)" "https://static.wikia.nocookie.net/harrypotter/images/0/04/Potion_Oculus.gif/revision/latest/scale-to-width-down/350?cb=20160226133445&path-prefix=fr" "Débutant")
        (Potion_de_l_Oeil_Vif "Potion de l'Œil Vif" "La potion de l'Œil Vif (  angl.  Wideye Potion ), aussi appelée potion d'Éveil (  angl.  Awakening Potion ), est une potion qui empêche le sommeil ou fait reprendre connaissance après une sédation ou un coup sur la tête. La recette est présente dans le livre Potions magiques d'Arsenius..." "Réveil" Antidote "Liquide" "nan" "Pottermore" "https://static.wikia.nocookie.net/harrypotter/images/d/d3/Potion_de_l%27%C5%92il_Vif.png/revision/latest?cb=20120415115223&path-prefix=fr" "Débutant")
        (Philtre_de_Paix "Philtre de Paix" "Le philtre de Paix (  angl.  Draught of Peace ) est une potion utilisée pour calmer l'anxiété et apaiser l'agitation de la personne qui la boit. Le philtre de Paix est une potion qui est souvent demandée aux épreuves de BUSE de potions. Dans un chaudron rempli d'eau et sur le feu : Ajouter de la..." "Calmant" Fortifiant "Liquide" "nan" "Harry Potter et l'Ordre du Phénix" "https://static.wikia.nocookie.net/harrypotter/images/4/40/Philtre_de_Paix.jpg/revision/latest/scale-to-width-down/350?cb=20170430131229&path-prefix=fr" "Intermédiaire")
        (Panacée "Panacée" "La panacée (  angl.  panacea ), également connue en tant que perfect medecine (  trad. approx.  médecine parfaite ), est une potion censée être un remède universel. D'après un traité d'alchimie mentionné dans un livre qui apparait dans le film Harry Potter à l'école des sorciers, les..." "("Guérir toutes les maladies" "Rendre immortel" )" Soin "Liquide" "Alchimistes" "Harry Potter à l'école des sorciers (film)" "nan" "Avancé")
        (Baume_de_pâquerettes "Baume de pâquerettes" "La baume de pâquerettes (  angl.  Bruisewort Balm ) est un baume vraisemblablement fait à partir de pâquerettes." "Soigne" Soin "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/d/d3/Baume_de_p%C3%A2querettes.jpg/revision/latest?cb=20151117120756&path-prefix=fr" "Débutant")
        (Potion_Pare_feu "Potion Pare-feu" "La potion Pare-feu (  angl.  Fire Protection Potion ) est une potion qui a pour effet de protéger le buveur du feu. Couper le Champignon explosif. Ajouter le Champignon explosif coupé. Remuer dans le sens des aiguilles d'une montre jusqu'à ce que la potion devienne bleue. Ajouter le Sang de..." "Protège du feu" Fortifiant "Liquide" "nan" "LEGO Harry Potter : Années 1 à 4" "https://static.wikia.nocookie.net/harrypotter/images/6/60/Potion_Pare-feu.jpg/revision/latest?cb=20151124135647&path-prefix=fr" "Débutant")
        (Poison_pernicieux "Poison pernicieux" "Le poison pernicieux (  angl.  Noxious Potion ) est un breuvage magique qui peut nuire au buveur. Cette potion produit des nuages ?de fumée verte une fois finie." "Poison" Poison "Fumant" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/2/2e/Poison_pernicieux.jpg/revision/latest?cb=20151124214000&path-prefix=fr" "Intermédiaire")
        (Pimentine "Pimentine" "La Pimentine (  angl.  Pepperup Potion ) est une potion qui permet de soigner le rhume, mais a pour effet secondaire de faire fumer les oreilles pendant plusieurs heures. Bien que la Pimentine ait été inventée par Glover Hipworth, c'est Linfred de Stinchcombe qui en serait à l'origine. Madame..." "Soigne le rhume" Soin "Liquide" "Glover Hipworth" "Harry Potter et la Chambre des Secrets" "https://static.wikia.nocookie.net/harrypotter/images/b/b9/Pepperup_Potion.png/revision/latest?cb=20120511172802&path-prefix=fr" "Débutant")
        (Antidote_aux_Poisons_Courants "Antidote aux Poisons Courants" "L'antidote aux Poisons Courants (  angl.  Antidote to Common Poisons ) est une potion qui annule l'effet des poisons. Ajouter 1 bézoard dans le mortier. Écraser à l'aide du pilon pour obtenir une poudre très fine. Ajouter 4 mesures du Bézoard écrasé dans le chaudron. Ajouter 2 mesures de..." "Antidote aux poisons" Antidote "Liquide" "nan" "Harry Potter à l'école des sorciers (jeu)" "https://static.wikia.nocookie.net/harrypotter/images/7/7c/Antidote_aux_Poisons_Courants.png/revision/latest?cb=20220504083421&path-prefix=fr" "Intermédiaire")
        (Antidote_des_poisons_rares "Antidote des poisons rares" "L'antidote des poisons rares (  angl.  Antidote to Uncommon Poisons ) est une potion permettant de stopper les effets de certains poisons peu communs. Severus Rogue demande à ses élèves de réunir les ingrédients nécessaires à la préparation de cette potion pour leur prochain cours, durant lequel..." "Antidote aux poisons rares" Antidote "Liquide" "nan" "Harry Potter et le prisonnier d'Azkaban (jeu)" "https://static.wikia.nocookie.net/harrypotter/images/2/2e/Antidote_des_poisons_rares.png/revision/latest?cb=20231021124143&path-prefix=fr" "Débutant")
        (Polynectar "Polynectar" "Le Polynectar (  angl.  Polyjuice Potion ) est une potion qui permet à un sorcier de prendre temporairement l'apparence d'un autre être humain. La potion est réservée aux métamorphoses humaines : un humain ne peut pas l'utiliser pour devenir un animal et un demi-géant ne peut pas l'utiliser pour..." "Permet à un humain de prendre l'apparence d'un autre humain durant une heure" Métamorphose "Pateux" "nan" "Harry Potter et la Chambre des Secrets" "https://static.wikia.nocookie.net/harrypotter/images/c/c5/B2C12M2.jpg/revision/latest/scale-to-width-down/350?cb=20170906162203&path-prefix=fr" "Avancé")
        (Pommade_pommadante_Grégoire "Pommade pommadante Grégoire" "La pommade pommadante Grégoire (  angl.  Gregory's Unctuous Unction ) est une potion inventée par Gregory le Hautain qui persuade celui qui l'utilise que celui qui la lui a offerte est son meilleur ami. Gregory le Hautain aurait utilisé cette pommade pour infiltrer la cour du Roi Richard et..." "Persuade celui qui l'utilise que celui qui la lui a offerte est son meilleur ami" Contrôle-mental "Liquide" "Gregory le Hautain" "Harry Potter et la Chambre des Secrets (jeu)" "https://static.wikia.nocookie.net/harrypotter/images/6/6c/Pommade_pommadante_Gr%C3%A9goire_-_HPSP.png/revision/latest?cb=20230901071129&path-prefix=fr" "Intermédiaire")
        (Potion_de_cautérisation "Potion de cautérisation" "Elle nettoya la coupure avec une compresse imbibée d'un liquide violet qui fumait et piquait la peau, puis elle lui toucha l’épaule avec sa baguette magique et il sentit que sa blessure guérissait instantanément.Madame Pomfresh soignant la blessure de Harry Potter La potion de cautérisation..." "Antiseptique" Soin "Fumant" "nan" "Harry Potter et la Coupe de Feu" "https://static.wikia.nocookie.net/harrypotter/images/c/c8/Potion_de_caut%C3%A9risation_%28HPSP%29.png/revision/latest/scale-to-width-down/350?cb=20230902180512&path-prefix=fr" "Avancé")
        (Potion_de_Regermination "Potion de Regermination" "La Potion de Regermination (  angl.  Regerminating Potion ) est une potion pour plante créée par le célèbre botaniste Tilden Toots. D'après le site officiel de J.K. Rowling, Tilden Toots annonce dans son émission radiophonique Toots, Shoots 'n' Roots avoir reçu une lettre de Georgina Smyth qui..." "Redonne à une plante morte la capacité de germer" Jardin "Liquide" "Tilden Toots" "Site officiel de J.K. Rowling" "https://static.wikia.nocookie.net/harrypotter/images/f/ff/Regerminating_Potion.jpg/revision/latest?cb=20170901150554&path-prefix=fr" "Avancé")
        (Potion_de_Rejutage "Potion de Rejutage" "La Potion de Rejutage (  angl.  Rejuicing Potion ) est une potion pour plante créée par le célèbre botaniste Tilden Toots. D'après le site officiel de J.K. Rowling, Tilden Toots annonce dans son émission radiophonique Toots, Shoots 'n' Roots avoir reçu une lettre de Georgina Smyth qui n'aurait..." "Redonne à une plante morte la capacité de produire du jus" Jardin "Liquide" "Tilden Toots" "Site officiel de J.K. Rowling" "https://static.wikia.nocookie.net/harrypotter/images/7/79/Rejuicing_Potion.jpg/revision/latest?cb=20170901150555&path-prefix=fr" "Intermédiaire")
        (Potion_Potiron "Potion Potiron" "La potion Potiron (  angl.  Pompion Potion ) est une potion qui a pour effet d'enfermer temporairement la tête du buveur dans une citrouille. Écraser le Pipaillon de nuit. Ajouter le Pipaillon de nuit écrasé dans le chaudron. Remuer dans le sens des aiguilles d'une montre jusqu'à ce que la..." "Enferme la tête dans une citrouille" Affaiblissant "Liquide" "nan" "LEGO Harry Potter : Années 1 à 4" "https://static.wikia.nocookie.net/harrypotter/images/0/09/Potion_Potiron.gif/revision/latest?cb=20150423112503&path-prefix=fr" "Débutant")
        (Poussos "Poussos" "Le Poussos (  angl.  Skele-Gro ) est une potion servant à réparer ou à faire repousser les os. Madame Pomfresh donne du Poussos à Harry Potter après l'intervention de Gilderoy Lockhart, qui a fait disparaître accidentellement les os de ce dernier. Fleur Delacour donne du Poussos à Gripsec, après..." "Reconstitue les os" Soin "Liquide" "Linfred de Stinchcombe" "Harry Potter et la Chambre des Secrets" "https://static.wikia.nocookie.net/harrypotter/images/8/8b/Poussos.png/revision/latest?cb=20131006133747&path-prefix=fr" "Intermédiaire")
        (Potion_à_priser "Potion à priser" "La potion à priser (  angl.  Snuffling Potion ) est une potion qui provoque un reniflement incontrôlable." "Reniflement incontrôlable" Contrôle-mental "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/9/9f/Potion_%C3%A0_priser.jpg/revision/latest?cb=20151124140245&path-prefix=fr" "Intermédiaire")
        (Produit_contre_les_limaces_mangeuses_de_chair "Produit contre les limaces mangeuses de chair" "Le produit contre les limaces mangeuses de chair (  angl.  Flesh-Eating Slug Repellent ) est un pesticide visant à neutraliser ces créatures. Le produit contre les limaces mangeuses de chair est un répulsif qui peut s'acheter dans l'Allée des Embrumes. Dans le jeu Harry Potter : Secret à..." "Neutralise les limaces mangeuses de chair" Poison "Liquide" "nan" "Harry Potter et la Chambre des Secrets" "https://static.wikia.nocookie.net/harrypotter/images/d/df/Produit_contre_les_limaces_mangeuses_de_chair.png/revision/latest?cb=20131006162559&path-prefix=fr" "Intermédiaire")
        (Potion_de_puissance "Potion de puissance" "La potion de puissance (  angl.  Strength Potion ) est une potion augmentant considérablement la force de celui qui la boit. Severus Rogue apprend cette potion à des élèves de première année. Solution de Force" "Augmente la force" Fortifiant "Liquide" "nan" "LEGO Harry Potter : Années 1 à 4" "https://static.wikia.nocookie.net/harrypotter/images/1/14/Potion_de_puissance.gif/revision/latest/scale-to-width-down/350?cb=20160302143923&path-prefix=fr" "Avancé")
        (Poison_de_raisin_de_couleuvre "Poison de raisin de couleuvre" "Le poison de raisin de couleuvre (  angl.  Moonseed Poison ) est un poison vraisemblablement fait à partir de raisin de couleuvre." "Poison" Poison "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/5/5a/Poison_de_raisin_de_couleuvre.JPG/revision/latest?cb=20150322191137&path-prefix=fr" "Intermédiaire")
        (Potion_de_Ratatinage "Potion de Ratatinage" "La potion de Ratatinage ou solution de Ratatinage (  angl.  Shrinking Solution ou Shrinking Potion ) est une potion magique qui permet de faire rétrécir les objets. Elle permet également d'inverser le processus de vieillissement. Si on commet une erreur durant la préparation, la potion devient..." "("Fait rétrécir les objets" "Inverse le processus de vieillissement" )" Métamorphose "Liquide" "nan" "Harry Potter et le prisonnier d'Azkaban" "https://static.wikia.nocookie.net/harrypotter/images/d/d0/Potion_de_Ratatinage.jpg/revision/latest/scale-to-width-down/350?cb=20170430122816&path-prefix=fr" "Débutant")
        (Ratconfortant "Ratconfortant" "Le Ratconfortant (  angl.  rat tonic ) est un tonique pour les rats. Il est notamment vendu à la Ménagerie magique dans un flacon rouge. La vendeuse de la Ménagerie magique propose du Ratconfortant pour tonifier Croûtard qui n'est pas en forme. Alors que Ron Weasley s'apprête à payer le..." "Tonifie les rats" Fortifiant "Liquide" "nan" "Harry Potter et le prisonnier d'Azkaban" "https://static.wikia.nocookie.net/harrypotter/images/e/ee/Ratconfortant.png/revision/latest?cb=20131006133848&path-prefix=fr" "Débutant")
        (Potion_de_régénération "Potion de régénération" "La potion de régénération est une potion de magie noire permettant aux sorciers ayant perdu leur corps de le retrouver. La préparation de la potion de régénération requiert un chaudron suffisamment grand pour qu'un homme adulte puisse s'y asseoir. La première étape consiste à y verser de l'eau..." "Restaure le corps d'un sorcier qui en est privé" Soin "Liquide" "nan" "Harry Potter et la Coupe de Feu" "https://static.wikia.nocookie.net/harrypotter/images/5/5d/Potion_de_r%C3%A9g%C3%A9n%C3%A9ration.png/revision/latest?cb=20150204145804&path-prefix=fr" "Avancé")
        (Potion_de_Régénération_sanguine "Potion de Régénération sanguine" "La potion de Régénération sanguine (  angl.  Blood-Replenishing Potion ) est une potion qui aide à reconstituer le sang. Elle est notamment utilisée par les guérisseurs de l'hôpital Ste Mangouste. Arthur Weasley doit prendre une potion de Régénération sanguine toutes les heures après avoir été..." "Reconstitue le sang" Soin "Liquide" "nan" "Harry Potter et l'Ordre du Phénix" "https://static.wikia.nocookie.net/harrypotter/images/5/50/Potion_de_R%C3%A9g%C3%A9n%C3%A9ration_sanguine.jpg/revision/latest?cb=20150204190509&path-prefix=fr" "Avancé")
        (Remontant_de_Pomfresh "Remontant de Pomfresh" "Le remontant de Pomfresh (  angl.  Pomfrey's Pick-Me-Up ) est un tonique magique pour tonifier l'organisme après des dommages physiques mineurs." "Tonifie l'organisme" Fortifiant "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/1/1b/Le_remontant_de_Pomfresh.jpg/revision/latest?cb=20120404200014&path-prefix=fr" "Avancé")
        (Remède_à_la_dragoncelle "Remède à la dragoncelle" "Le remède à la dragoncelle a été inventé par Gunhilda de Gorsemoor entre 1556 et 1639." "Guérit la dragoncelle" Soin "Liquide" "Gunhilda de Gorsemoor" "Harry Potter à l'école des sorciers (jeu)" "https://static.wikia.nocookie.net/harrypotter/images/c/c4/Rem%C3%A8de_%C3%A0_la_dragoncelle.jpg/revision/latest?cb=20160531163256&path-prefix=fr" "Intermédiaire")
        (Potion_de_restitution "Potion de restitution" "La potion de restitution (  angl.  Restoration Potion ) est une potion qui annule les effets d'un sortilège sur un objet ou une créature." "Annule les effets d'un sortilège" Antidote "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/3/35/Potion_de_Restauration.jpg/revision/latest?cb=20151125152947&path-prefix=fr" "Avancé")
        (Philtre_Revigorant "Philtre Revigorant" "Le philtre Revigorant (  angl.  Invigoration Draught ) est une potion qui redonne des forces à son buveur. Le philtre Revigorant fait l'objet d'un cours pratique de potions. À la fin du cours, Harry va rendre sa potion au professeur Rogue en estimant l'avoir correctement réussie, mais le..." "Revigore" Fortifiant "Liquide" "nan" "Harry Potter et l'Ordre du Phénix" "https://static.wikia.nocookie.net/harrypotter/images/8/8d/Philtre_Revigorant.png/revision/latest?cb=20160519142435&path-prefix=fr" "Intermédiaire")
        (Poison_sang_dragon "Poison sang-dragon" "Le poison sang-dragon (  angl.  Bloodroot Poison ) est un poison vraisemblablement fait à partir de sang-dragon." "Poison" Poison "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/1/13/Poison_sang-dragon.jpg/revision/latest?cb=20151116202615&path-prefix=fr" "Intermédiaire")
        (Potion_pour_soins_capillaires_de_Lockhart "Potion pour soins capillaires de Lockhart" "La potion pour soins capillaires de Lockhart (  angl.  Lockhart's Hair-Care Potion ) est une potion qui garantie à son utilisateur des cheveux bouclés et étincelants. Malgré son efficacité incontestable, ce produit n'a jamais été lancé sur le marché car les ingrédients qui entrent dans sa..." "Rend les cheveux bouclés et étincelants" Fortifiant "Liquide" "Gilderoy Lockhart" "Harry Potter et la Chambre des Secrets" "https://static.wikia.nocookie.net/harrypotter/images/c/ca/Potions_pour_soins_capillaires_de_Lockhart.jpg/revision/latest?cb=20170702104236&path-prefix=fr" "Avancé")
        (Goutte_du_sommeil "Goutte du sommeil" "La goutte du sommeil (  angl.  Drowsiness Draught ) est une potion qui a pour effet d'induire une somnolence menant jusqu'à l'endormissement. Ses vapeurs, d'un rose violacé, suffisent à faire sombrer une personne dans le sommeil. Dans le jeu Harry Potter : Secret à Poudlard, Penny Haywood et le..." "Endort" Hallucinogène "Fumant" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/3/38/Goutte_du_sommeil.jpg/revision/latest/scale-to-width-down/350?cb=20151117214445&path-prefix=fr" "Débutant")
        (Potion_pour_un_sommeil_sans_rêves "Potion pour un sommeil sans rêves" "Une potion pour un sommeil sans rêves (  angl.  Potion for Dreamless Sleep ) est une potion permettant de s'endormir. Madame Pomfresh donne une potion pour un sommeil sans rêves à Harry. Somnifère" "Plonge dans un sommeil sans rêves" Hallucinogène "Liquide" "nan" "Harry Potter et la Coupe de Feu" "https://static.wikia.nocookie.net/harrypotter/images/b/be/Potion_pour_un_sommeil_sans_r%C3%AAves.png/revision/latest?cb=20141104143714&path-prefix=fr" "Intermédiaire")
        (Somnifère "Somnifère" "Le Somnifère ou potion de Sommeil (  angl.  Sleeping Draught ) est une potion plongeant dans un sommeil temporaire. Ajouter quatre brins de lavande dans le mortier Ajouter deux mesures de l'Ingrédient Standard dans le mortier Écraser à l'aide du pilon pour obtenir une pâte crémeuse Ajouter deux..." "Sommeil temporaire" Hallucinogène "Liquide" "nan" "Harry Potter et la Chambre des Secrets" "https://static.wikia.nocookie.net/harrypotter/images/5/56/Somnif%C3%A8re.png/revision/latest?cb=20120419132050&path-prefix=fr" "Débutant")
        (Tolipan_Blemish_Blitzer "Tolipan Blemish Blitzer" "Tolipan Blemish Blitzer (  trad. approx.  effaceur de boutons Tolipan ) est une crème anti-boutons pour le visage. Selon l'étiquette du produit créé pour les films Harry Potter, le Tolipan Blemish Blitzer a été créé en 1907. Dans le film Harry Potter et l'Ordre du Phénix, en 1996, La Gazette du..." "Soin du visage" Soin "Pateux" "nan" "Harry Potter et l'Ordre du Phénix (film)" "https://static.wikia.nocookie.net/harrypotter/images/0/0a/Tolipan_Blemish_Blitzer.png/revision/latest/scale-to-width-down/350?cb=20220423175806&path-prefix=fr" "Intermédiaire")
        (Potion_contre_la_toux "Potion contre la toux" "La potion contre la toux (  angl.  cough potion ) est une potion médicinale qui soigne la toux. L'un des services proposés par Weasley, Farces pour sorciers facétieux est d'envoyer des philtres d'amour à Poudlard en les faisant passer pour de la potion contre la toux. Dans la bibliothèque de..." "Soigne la toux" Soin "Liquide" "nan" "Harry Potter et le Prince de Sang-Mêlé" "nan" "Intermédiaire")
        (Potion_Trismus "Potion Trismus" "La potion Trismus (  angl.  Jawbind Potion ) est une potion qui contracte les muscles de la mâchoire du buveur." "Provoque un trismus" Contrôle-mental "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/3/3e/Potion_Trismus.jpg/revision/latest?cb=20151116153225&path-prefix=fr" "Intermédiaire")
        (Goutte_de_trompette_des_anges "Goutte de trompette des anges" "La goutte de trompette des anges (  angl.  Angel's Trumpet Draught ) est un poison vraisemblablement fait à partir de trompettes des anges." "Poison" Poison "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/1/1f/Philtre_de_la_Trompette_des_Anges.jpg/revision/latest?cb=20151111131709&path-prefix=fr" "Avancé")
        (Potion_Tue_loup "Potion Tue-loup" "La potion Tue-loup (  angl.  Wolfsbane Potion ) permet de soulager les symptômes les plus terribles de ceux qui deviennent des loups-garous à la pleine lune. Elle porte le nom de Tue-loup, une plante qui entre dans sa composition. La potion Tue-loup est une invention récente de Damoclès, l'oncle..." "Soulage les symptômes des loups-garous" Soin "Liquide" "Damoclès" "Harry Potter et le prisonnier d'Azkaban" "https://static.wikia.nocookie.net/harrypotter/images/1/10/HP3-chapitre08.jpg/revision/latest?cb=20110903193746&path-prefix=fr" "Avancé")
        (Veritaserum "Veritaserum" "Le Veritaserum est un puissant sérum de vérité, une potion qui provoque chez celui qui l'absorbe une incapacité à mentir. L'usage du Veritaserum est soumis à une réglementation du ministère de la Magie. La potion doit mûrir pendant un cycle complet de la lune et environ un mois est donc..." "Provoque une incapacité à mentir" Contrôle-mental "Liquide" "nan" "Harry Potter et la Coupe de Feu" "https://static.wikia.nocookie.net/harrypotter/images/d/d9/Veritaserum.jpg/revision/latest/scale-to-width-down/350?cb=20160518104211&path-prefix=fr" "Avancé")
        (Sérum_de_vérité "Sérum de vérité" "Le sérum de vérité (  angl.  Truth Serum ou Truth Potion ) est le nom générique de potions qui provoquent chez celui qui l'absorbe une incapacité à mentir. Le plus puissant sérum de vérité est le Veritaserum. Sérum de vérité sur Wikipédia (version française)" "Provoque une incapacité à mentir" Contrôle-mental "Liquide" "nan" "Les Animaux fantastiques" "nan" "Avancé")
        (Potion_vert_émeraude "Potion vert émeraude" "La potion vert émeraude (  angl.  Emerald Potion ) est un poison phosphorescent conçu pour ne pas pouvoir être bu jusqu'à la fin. La potion affaiblit celui qui la boit et semble lui donner des cauchemars, voire des hallucinations. Lord Voldemort utilise cette potion pour protéger l'un de ses..." "("Affaiblit" "Provoque des cauchemars et des hallucinations" "Assoiffe" )" Affaiblissant "Liquide" "Tom Jedusor" "Harry Potter et le Prince de Sang-Mêlé" "https://static.wikia.nocookie.net/harrypotter/images/9/96/Potion_vert_%C3%A9meraude_livre.jpg/revision/latest?cb=20151017183231&path-prefix=fr" "Avancé")
        (Potion_de_vertige "Potion de vertige" "La potion de vertige (  angl.  Dizziness Draught ) est une potion qui provoque des vertiges." "Provoque des vertiges" Hallucinogène "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/e/e8/Philtre_de_Vertige.jpg/revision/latest?cb=20151125194747&path-prefix=fr" "Intermédiaire")
        (Potion_de_Vieillissement "Potion de Vieillissement" "La potion de Vieillissement (  angl.  Ageing Potion ) est une potion, qui comme son nom l'indique, permet de devenir plus âgé. Plus la quantité de potion avalée est grande, plus le buveur vieilli. En 1994, Albus Dumbledore a tracé une Limite d'Âge autour de la Coupe de Feu afin que seuls les..." "Permet de se rendre plus âgé" Métamorphose "Liquide" "nan" "Harry Potter et la Coupe de Feu" "https://static.wikia.nocookie.net/harrypotter/images/f/f5/Potion_de_Vieillissement_Pottermore.png/revision/latest?cb=20150309151042&path-prefix=fr" "Avancé")
        (Potion_Volubilis "Potion Volubilis" "La potion Volubilis est un breuvage qui permet de restaurer le volume de la voix d'une personne et neutralise également les effets du sortilège de Mutisme. Dans un chaudron rempli d'eau et sur le feu : Chauffer jusqu'à ce que la potion devienne rouge. Chauffer jusqu'à ce que la potion devienne..." "Restaure le volume de la voix" Antidote "Liquide" "nan" "Harry Potter et le Prince de Sang-Mêlé (jeu)" "https://static.wikia.nocookie.net/harrypotter/images/5/5b/Potion_Volubilis.jpg/revision/latest/scale-to-width-down/350?cb=20170430122817&path-prefix=fr" "Intermédiaire")
        (Potion_Wiggenweld "Potion Wiggenweld" "La potion Wiggenweld (  angl.  Wiggenweld Potion ) est une potion qui soigne les blessures et restaure un peu la santé de la personne qui la boit. Elle permet également de neutraliser les effets d'une potion de sommeil et est un antidote à la Goutte du Mort vivant. Dans un chaudron rempli d'eau..." "Neutralise les effets des somnifères" Antidote "Liquide" "nan" "Harry Potter à l'école des sorciers (jeu)" "https://static.wikia.nocookie.net/harrypotter/images/e/e0/Potion_Wiggenweld_2.jpg/revision/latest/scale-to-width-down/350?cb=20170430201708&path-prefix=fr" "Intermédiaire")
        )
)


;////////////////////////////////////////////////////////////////////////////////
;////////////////////FONCTION AUXILIAIRES MOTEUR D INFERENCE ////////////////////
;////////////////////////////////////////////////////////////////////////////////

;Imprime la phrase associée à la régle
(defun nom-regle(regle)
  (caddr regle)
)

;renvoie la liste des premisses de la régle
(defun lister-premisses(regle)
  (cadr regle)
)

;renvoie la liste des conclusions de la régle
(defun lister-conclusions(regle)
  (car regle)
)


;prend en argument une premisse sous forme (variable valeur operateur)
;renvoie true si le premisse donnée est vrai et nil sinon
;Les operateurs valides sont <, >, =, <=, >=, !=

(defun verifier-premisse (premisse bdf)
  (let ((variable (cadr (assoc (car premisse) bdf)))
        (valeur (cadr premisse))
        (operateur (caddr premisse))) ;recuperation de l'operateur
    (cond ;Vérification du type d'operateur et calcule associés
      ((and (string-equal operateur '>) (> variable valeur)) t)
      ((and (string-equal operateur '<) (< variable valeur)) t)
      ((and (string-equal operateur '>=) (>= variable valeur)) t)
      ((and (string-equal operateur '<=) (<= variable valeur)) t)
      ((and (string-equal operateur '=) (eq variable valeur)) t)
      ((and (string-equal operateur '!=) (not (eq variable valeur))) t)
    )
  )
)


;prend en argument une règle et la base de faits 
;renvoie True si la règle est vérifié et false sinon

(defun verifier-regle(regle bdf)
  (let ((liste_premisses (lister-premisses regle)))
    (if (null liste_premisses)
        T
        (if (verifier-premisse (car liste_premisses) bdf) ;On applique "verifier-premisse" sur chaque premisses de la règle par une méthode récursive 
            (progn
              (setq regle (cons (car regle) (append (list (cdr liste_premisses)) (cddr regle))))
              (verifier-regle regle bdf)) ;appel récursif de la fonction
        )
    )
  )
)

;prend en argument une règle et la base de fait
;permet d'appliquer la conclusion d'une règle à la base de faits en modifiants les variables concernées 

(defun appliquer-conclusion(regle bdf)
  (progn
    (dolist (conclusion (lister-conclusions regle) bdf)
      (let ((variable (car conclusion)) (valeur (cadr conclusion)) (operateur (caddr conclusion)))
          (cond
            ((string-equal operateur '+) (setf (cadr (assoc variable bdf)) (+ (cadr (assoc variable bdf)) valeur)))
            ((string-equal operateur '-) (setf (cadr (assoc variable bdf)) (- (cadr (assoc variable bdf)) valeur)))
            ((string-equal operateur '*) (setf (cadr (assoc variable bdf)) (* (cadr (assoc variable bdf)) valeur)))
            ((string-equal operateur '/) (when (/= valeur 0) (setf (cadr (assoc variable bdf)) (/ (cadr (assoc variable bdf)) valeur))))
            ((string-equal operateur '=) (setf  (cadr (assoc variable bdf)) valeur))
            (t (format t "Erreur : Opérateur non pris en charge ou Division par 0 !~%"))
          )
       )
    )
  )
) 



;////////////////////////////////////////////////////////////
;//////////////////// MOTEUR D INFERENCE ////////////////////
;////////////////////////////////////////////////////////////

;Moteur d'inférence caractérisé en chainage avant et parcour en profondeur 
;Prend en argument un but, une base de fait, une base de règles et de façon optionnelle une liste de toutes les règles vérifiés 

(defun moteur_chainage_avant (but bdf bdr &optional (regles_verifie))
  (let (resultat_recursivite) ;Pour verifier le nombre de regles verifié lors de la boucle
    (dolist (regle bdr) ; Pour toutes les regles de la base de regle
      (if (not (eq (cadr (assoc 'but bdf)) but))
        (if (verifier-regle regle bdf) ;Si la regle n'a pas déjà été verifié, on cherche à vérifier la règle
          (progn
            (setq regles_verifie (append regles_verifie (list (nom-regle regle)))) ;On ajoute la regle à la liste des regles verifié
            (setq bdf (appliquer-conclusion regle bdf)) ;on applique la conclusion à la base de fait 
            (setq resultat_recursivite (moteur_chainage_avant but bdf bdr regles_verifie)) ;appel recursif de la fonction, avec la liste des règles déjà vérifiés
            (setq bdf (car resultat_recursivite))
            (setq regles_verifie (cadr resultat_recursivite))
          )
        )
        (return-from moteur_chainage_avant (list bdf regles_verifie))  ; Si le but est atteint, on arrete le programme avec return-from et on renvoie un tuple (bdf regles_verifie)
      )
    )
    (list bdf regles_verifie) ; le programme se termine et on renvoie un tuple (bdf regles-verifie) qui sera réutiliser par les pères dans l'arbre des appels récursifs  
  ) 
)


; ///////////////////////////////////////////////////////////////////////////////////////
; ////////////////////// FONCTION ANNEXE DE LA FONCTION PRINCIPALE //////////////////////
; ///////////////////////////////////////////////////////////////////////////////////////

; renvoie la ligne de la bdd_ing d'indice index
;(recup-line-ingredient 3 *bdd_menu*)
;=>(3 ACTÉE_EN_ÉPI "Actée en épi")

(defun recup-line-ingredient (index bdd_ing)
  (assoc index bdd_ing)
)


; renvoie le nom  de l'ingredient en donnant une ligne "indice variable nom_ingredient "
; Ex : (recup-nom-ingredient '(3 ACTÉE_EN_ÉPI "Actée en épi"))
; => "Actée en épi"

(defun recup-nom-ingredient (ing)
  (car (last ing ))
)


; renvoie la variable  de l'ingredient en donnant une ligne "indice variable nom_ingredient "
;EX : (recup-var-ingredient '(3 ACTÉE_EN_ÉPI "Actée en épi"))
; => "Actée_en_épi

(defun recup-var-ingredient (ing)
  (cadr ing)
  )


;renvoie la ligne associé à l'ingrédient donné en argument et présent dans la bdd_ing
;(recup_line_avec_var_ingredient 'Actée_en_épi *bdd_menu*)
;(ACTÉE_EN_ÉPI "Actée en épi" . 3)

(defun recup_line_avec_var_ingredient (var_ing bdd_ing)
  (assoc var_ing (mapcar (lambda (l) (append (cdr l) (car l))) bdd_ing))
  )


;prend en argument la bdd_ing 
;affiche la bdd_ing et permet le choix des ingrédients 

(defun afficher-menu-ingredients (bdd_ing)
  (format t "Choisissez un ingrédient parmi ceux ci-dessous à l'aide de leurs index:~%")
  (dolist (ing bdd_ing)
    (format t "~a- ~a ~%" (car ing) (recup-nom-ingredient ing))
  )
)

;prend en argument la bdd_ing et une liste d'ingrédients 
;permet la récupareration des differents ingrédients saisi par l'utilisateur 

(defun recap_ingredient (ingredients bdd_ing)
  (format t "Pour l'instant, vous avez sélectionné les ingredients :~%")
  (dolist (ing ingredients)
   (if (= (cadr ing)  1)
       (format t "~a~%" (recup-nom-ingredient (recup_line_avec_var_ingredient (car ing) bdd_ing)))
    )
  )  
  (format t "~%")
)

;attention, cette fonction peut entraîner des bugs après avoir tenter d'évaluer avec ctrl+e alors
;que read était en cours d'execution. Pour y remedier il faut relancer allegro cl
;premet le choix et la recuperaion de touts les ingrédients saisi par l'utilisateur de deux façons differentes : 
; 1° soit par une saisie des ingrédient un par un
; 2° soit par l'execution de cette fonction avec une liste d'ingrédients déjà donné en argument sous la forme d'un liste de nombres entre 1 et 158

(defun choisir-ingredient (bdd_ing &optional liste_ingredients)
  (let (ingredients lecture)
    (dolist (ing bdd_ing)
      (push (list (cadr ing) 0) ingredients)
    )
    (if (or (null liste_ingredients) (not (listp liste_ingredients))) ;on test si une liste d'ingredient a été passée en paramètre, si c'est le cas on l'utilise et on affiche pas de menu pour leur choix
      (progn 
        (afficher-menu-ingredients bdd_ing)
        (format t "Une fois que vous avez fini d'entrer les ingrédients, entrez 0 pour continuer :~%")
        (while (or (not (integerp (setq lecture (read)))) (not (= lecture 0)))
          (if (integerp lecture)
              (progn 
                (if (and (> lecture 0) (<= lecture (length ingredients)))
                    (progn
                      (if (= (cadr (assoc (recup-var-ingredient (recup-line-ingredient lecture bdd_ing)) ingredients)) 1)
                        (format t "Vous avez déjà choisi cet ingredient veuillez continuer.~%")
                        (progn
                          (setf (cadr (assoc (recup-var-ingredient (recup-line-ingredient lecture bdd_ing)) ingredients)) 1)
                          (format t "Vous avez choisi l'ingredient : ~a~%" (recup-nom-ingredient (recup-line-ingredient lecture bdd_ing)))
                          (recap_ingredient ingredients bdd_ing)
                        )
                    )
                  )
                  (progn
                    (afficher-menu-ingredients bdd_ing)
                    (format t "Entrée incorrecte. Veuillez choisir un ingrédient parmi ceux de la liste précédente ~%")
                  )
                 )
              )
              (format t "Entrée incorrecte. Veuillez entrer un nombre entier correspondant à l'index de l'ingredient choisi.~%")
          )
          (format t "Une fois que vous avez fini d'entrer les ingrédients, entrez 0 pour continuer :~%")
        )
      )
      (progn
        (dolist (ing liste_ingredients)
          (if (and (integerp ing) (>= ing 1) (<= ing 158))
              (setf (cadr (assoc (recup-var-ingredient (recup-line-ingredient ing bdd_ing)) ingredients)) 1)
          )
        )          
      )
    )
    ingredients
  )
)

;cette fonction permet de sélectionner et renvoyer le couple clé-valeur d'un paramètre

(defun choix_paramètre (param)
  (let (lecture (lecture_conf 0))
    (format t "Choisissez la valeur du paramètre \"~a\" (0 pour laisser la valeur par défault qui est de ~a) :~%" (car param) (cadr param))
    (while (and (not (and (symbolp lecture_conf) (eq lecture_conf 'o))) (or (not (integerp (setq lecture (read)))) (not (= lecture 0))))
      (if (and (integerp lecture) (> lecture 0))
        (progn
          (format t "Vous avez choisi la valeur : ~a, pour le paramètre \"~a\"~%" lecture (car param))
          (format t "Confirmer ? (o/n) :~%")
          (setq lecture_conf (read))
          (if (and (symbolp lecture_conf) (eq lecture_conf 'o))
            (progn
              (setf (cadr param) lecture)
              (format t "Valeur modifiée avec succès !~%")
            )
            (format t "Saisie annulée. ~%Choisissez la valeur du paramètre \"~a\" (0 pour laisser la valeur par défault qui est de ~a) :~%" (car param) (cadr param))
            )
         )
        (format t "Format non supporté ou valeur incorrecte...~%Choisissez la valeur du paramètre \"~a\" (entier > 0) (0 pour laisser la valeur par défault qui est de ~a) :~%" (car param) (cadr param))
      )
    )
    param
  )
)

(defun ajouter_potions_bdf (bdf bdd_potion)
  (dolist (potion bdd_potion bdf)
    (setq bdf (cons (list (car potion) 0) bdf))
  )
)


;prend en argument la base de fait
;cette fonction initialise les differents paramètres associés au comptage des potions crées

(defun initialiser_params_potions (bdf)
  (push (list 'nb_potion 0) bdf)
  (push (list 'nb_Fortifiant 0) bdf)
  (push (list 'nb_Hallucinogène 0) bdf)
  (push (list 'nb_Poison 0) bdf)
  (push (list 'nb_Contrôle-mental 0) bdf)
  (push (list 'nb_Antidote 0) bdf)
  (push (list 'nb_Affaiblissant 0) bdf)
  (push (list 'nb_Soin 0) bdf)
  (push (list 'nb_Jardin 0) bdf)
)

;///////////////////////////////////////////////////////////////
;///////////////////// FONCTION PRINCIPALE /////////////////////
;///////////////////////////////////////////////////////////////


;prend en argument la base de règle, les base de données des ingrédients et des potions, et une liste d'ingrédient dans le cas d'une saisie d'ingrédients automatique 
;cette fonction est la fonction qui sera lancé par l'utilisateur et s'occupe de coordonner l'initialisation de la base de fait et le lancement du moteur d'inférence

(defun fonction-principale (bdr bdd_ing bdd_potion &optional liste_ingredients)
  (let (bdf (but 0) choix result_chainage (niveau 3) (sante 10) (concentration 100))
       (format t "Bienvenu dans le Système expert \"Harry le potionniste\" ! ~%")
       (format t "Pour la petite histoire, pendant les vacances de Noel, comme à son habitude Harry reste à Poudlard tandis que tous~% ses camarades et ses professeurs sont de retour chez eux. Harry s'ennuyant, il rentre par hasard dans le bureau du~% professeur de potions Rogue puis ... BAM ! La porte se ferme violemment et il est impossible de l'ouvrir. Ennuyé de rester bloquer~% ici pendant deux semaines, Harry explore la salle et tombe sur la réserve d'ingrédients secrets de Rogue ! Ayant de grosses lacunes~% dans la confection de potions, Harry mélange des ingredients n'importe comment et goûte ses créations...~% Va t-il survivre à ses expériences ou mourir intoxiqué ?~%")
       (format t "Vous allez choisir à tour de rôle la valeur des variables paramètres de la base de faits (elles seront déterminantes dans la survie de Harry):~%")
       (setq niveau (choix_paramètre (list (quote niveau) niveau)))
       (setq sante (choix_paramètre (list (quote sante) sante)))
       (setq concentration (choix_paramètre (list (quote concentration) concentration)))
       (setq bdf (choisir-ingredient bdd_ing liste_ingredients))
       (push niveau bdf)
       (push sante bdf)
       (push concentration bdf)
       (format t "Choisissez le but : ~%")
       (format t "1- Excellent : Harry a réussi à survivre en faisant plus de 40 potions sans mourir ~%")
       (format t "2- Super : Harry a réussi à survivre en faisant plus de 20 potions ~%")
       (format t "3- Moyen : Harry a réussi à survivre en faisant plus de 10 potions ~%")
       (format t "4- Morbide : Harry est mort avant d'avoir fait toutes les potions (c'est votre choix)~%")
       (while (or (not (integerp choix)) (numberp but))
          (setq choix (read))
          (if (and (integerp choix) (and (>= choix 1) (<= choix 4)))
              (cond ((= choix 1) (setq but 'excellent))
                    ((= choix 2) (setq but 'super))
                    ((= choix 3) (setq but 'moyen))
                    ((= choix 4) (setq but 'mort))
                    (t "Erreur inattendue...~%")
              )
              (format t "Erreur de sélection !~%")
          )
       )
       (push (list 'but 'mauvais) bdf)
       (setq bdf (ajouter_potions_bdf bdf bdd_potion))
       (setq bdf (initialiser_params_potions bdf))
       (format t "Lancement du SE...~%")
       (setq result_chainage (moteur_chainage_avant but bdf bdr))
       (format t "Execution du SE terminé avec succès !~%") ;Donc que l'execution est terminé 
       (if (null (cadr result_chainage)) ;Si la liste des regles verifié est vide
          (format t "Aucune regle n'a pu etre verifié !~%")
          (progn 
            (format t "Les regles vérifiées sont : ~%")
            (dolist (regle (cadr result_chainage)) ; On affiche toutes les regles verifiées
              (format t "~a~%~%" regle) 
            )
          )
        )
        (if (eq but (cadr (assoc 'but (car result_chainage))))
            (format t "Le but '~a' a été atteint avec succès !~%~%" (cadr (assoc 'but (car result_chainage))))
            (format t "Malheureusement, le but initial '~a' n'a pas été atteint !~%A la place, c'est le but '~a' qui la été...~%~%" but (cadr (assoc 'but (car result_chainage))))
        )
        (format t "Harry fini son expérience avec une santé de ~a et une concentration de ~a~%Au total Harry a fait ~a potion(s)" (cadr (assoc 'sante (car result_chainage))) (cadr (assoc 'concentration (car result_chainage))) (cadr (assoc 'nb_potion (car result_chainage))))
  )
)


;/////////////////////////////////////////////////////////////////
;///////////////////////// JEUX DE TESTS /////////////////////////
;/////////////////////////////////////////////////////////////////

; Voici differentes façons de faire fonctionner notre système expert. Executer une des fonctions suivantes et suivez les instructions données par le programme.

;fonction principale : Executer cette fonction tel quel
;Les paramètres de la base de fait seront choisi après. 
(fonction-principale *bdr* *bdd_menu* *bdd_potions*)

; //////////////////// Pour gagner du temps ////////////////////
;Ces jeux de tests permetent d'éviter d'entrer énormément d'ingrédients à la main. Saisie automatique des ingrédients. 

;Fonction avec tous les ingrédients répertoriés 
;(fonction-principale *bdr* *bdd_menu* *bdd_potions* '(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158))

;D'autres séléction d'ingrédients
;(fonction-principale *bdr* *bdd_menu* *bdd_potions* '(94 23 56 102 7 85 42 119 30 67 150 12 38 76 5 81 99 62 27 137 50 114 18 73 3 90 125 16 68 9 52 133 79 37 110 69 45 126 14 72 115 41 98 51 88 31 104 60 10 47))
;(fonction-principale *bdr* *bdd_menu* *bdd_potions* '(25 103 54 82 14 67 111 36 79 48 92 7 130 61 98 72 43 5 117 89 23 76 38 145 12 55 93 30 64 19 141 51 85 10 126 59 34 74 99 45 28 134 69 16 120 40 78 107 2 57))
;(fonction-principale *bdr* *bdd_menu* *bdd_potions* '(27 92 14 105 43 76 8 150 62 38 121 4 83 52 113 99 18 64 37 55 126 12 95 70 81 33 147 7 136 59 124 28 145 9 100 2 79 49 132 16 69 131 48 98 5 25 141 72 35 153 85 22 139 117 57 142 51 106 91 44 75 20 134 61 153 10 138 30 89 68 146 115 40 60 77 127 24 87 111 74 3 119))
;(fonction-principale *bdr* *bdd_menu* *bdd_potions* '(107 132 28 109 92 121 130 133))
