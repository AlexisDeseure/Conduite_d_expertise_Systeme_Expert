;//////////////////////////////////////////////////////////////////
;//////////////////// DEFINITION DES VARIABLES ////////////////////
;//////////////////////////////////////////////////////////////////


(setq *bdr* '(
        (((but excellent =)) ((nb_potion 40 >) (sante 0 >) (but excellent !=)) "A deux doigts de d�c�der... Bravo tout de m�me Harry !")
        (((but super =)) ((nb_potion 20 >) (sante 0 >) (but excellent !=) (but super !=)) "Harry est officiellement un ma�tre des potions")
        (((but moyen =)) ((nb_potion 10 >) (sante 0 >) (but excellent !=) (but super !=) (but moyen !=)) "Harry a eu de la chance de tenir jusqu'ici !")

        (((nb_Antidote 1 -) (nb_Poison 1 -)) ((nb_Antidote 0 >) (sante 0 >) (nb_Poison 0 >)) "Parmis tout ce qu'il a bu, un antidote semble avoir fait effet et compense un poison")
        
        (((nb_Poison 1 -) (sante 2 -)) ((nb_Poison 0 >) (sante 0 >)) "Harry ressend les effets d'un pr�c�dent poison et perd de la vie")
        
        (((nb_Affaiblissant 1 -) (sante 2 -) (concentration 10 -)) ((nb_Affaiblissant 0 >) (sante 0 >) (concentration 9 >)) "Harry avait bu une potion affaiblissante, il ressend de l�g�re douleurs et est engourdie, sa sant� et sa concentration diminue")
        (((nb_Affaiblissant 1 -) (sante 2 -) (concentration 0 =)) ((nb_Affaiblissant 0 >) (sante 0 >) (concentration 9 <=)) "Suite � un effet affaiblissant Harry n'est plus du tout concentr� et sa sant� diminue")
        
        (((nb_Fortifiant 1 -) (sante 1 +) (concentration 10 +)) ((nb_Fortifiant 0 >) (sante 0 >)) "Coup de bol ! Harry se sent revigour�, s�rement l'effet d'un fortifiant.")
        
        (((nb_Soin 1 -) (sante 2 +) (concentration 10 +)) ((nb_Soin 0 >) (sante 0 >)) "Harry parvient � se soigner en partie gr�ce � une ancienne potion bu, quoi qu'il en soit, il se send revigour� !")
              
        (((nb_Contr�le-mental 1 -) (sante 1 -) (concentration 15 -)) ((nb_Contr�le-mental 0 >) (sante 0 >) (concentration 14 >)) "Un effet de contr�le-mental fait application sur Harry, il a la t�te qui tourne et plus les id�es en place... En se cognant le doigt de pieds sur le chaudron, il perd un peu de sant�")
        (((nb_Contr�le-mental 1 -) (sante 1 -) (concentration 0 =)) ((nb_Contr�le-mental 0 >) (sante 0 >) (concentration 14 <=)) "Harry n'est plus du tout concentr�, les potions bu lui ont �puis�, il serait temps de faire une pause...")

        (((nb_Hallucinog�ne 1 -) (concentration 20 -)) ((nb_Hallucinog�ne 0 >) (sante 0 >) (concentration 19 >)) "Harry est dans un �tat second, les effets d'une potion hallucinog�ne lui fond perdre drastiquement en concentration")
        (((nb_Hallucinog�ne 1 -) (concentration 0 =)) ((nb_Hallucinog�ne 0 >) (sante 0 >) (concentration 19 <=)) "Harry n'est plus du tout concentr�, sa maladresse l'a transform� un l�gume, incapable de se souvenir de son �ge. Va t-il se remettre de cette mauvaise passe ?")

        (((nb_Jardin 1 -) (concentration 5 -)) ((sante 0 >) (nb_Jardin 0 >) (concentration 9 >)) "Une potion li�e aux jardins fait effet dans le corps d'Harry, apr�s cette sensation bizarre Harry est un peu moins concentr�")
        
        (((Potion_d_Act�e_en_�pi 1 =) (nb_potion 1 +) (nb_Poison 1 +)) ((Act�e_en_�pi 1 =) (niveau 1 >) (sante 0 >) (Potion_d_Act�e_en_�pi 0 =) (concentration 30 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion d'Act�e en �pi")

        (((Potion_affaiblissante 1 =) (nb_potion 1 +) (nb_Affaiblissant 1 +)) ((Act�e_en_�pi 1 =) (Somnif�re 1 =) (Chiendent_�toil� 1 =) (niveau 1 >) (sante 0 >) (Potion_affaiblissante 0 =) (concentration 30 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion affaiblissante")

        (((Potion_d_Aiguise_M�ninges 1 =) (concentration 25 +) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Poudre_brune 1 =) (Bile_de_tatou 1 =) (�pine_de_porc_�pic 1 =) (niveau 0 >) (sante 0 >) (Potion_d_Aiguise_M�ninges 0 =) (concentration 10 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion d'Aiguise-M�ninges. Il se sent d�j� nettement plus concentr� !")

        (((Potion_d_Amn�sie 1 =) (nb_potion 1 +) (nb_Contr�le-mental 1 +)) ((Eau_du_fleuve_L�th� 1 =) (Baie_de_gui 1 =) (Ingr�dient_standard 1 =) (Val�riane 1 =) (niveau 0 >) (sante 0 >) (Potion_d_Amn�sie 0 =) (concentration 20 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion d'Amn... De quoi parlait-on d�j� ?")

        (((Onguent_d_amn�sie_du_Dr_Oubbly 1 =) (nb_potion 1 +) (nb_Contr�le-mental 1 +)) ((Somnif�re 1 =) (Vinaigre 1 =) (Urine 1 =) (niveau 1 >) (sante 0 >) (Onguent_d_amn�sie_du_Dr_Oubbly 0 =) (concentration 25 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Onguent d'amn�sie du Dr Oubbly. Harry m�lang... oups je crois me r�p�ter !")

        (((Amortentia 1 =) (nb_potion 1 +) (concentration 10 -) (nb_Contr�le-mental 1 +)) ((Raifort 1 =) (Philtre_d_amour 1 =) (niveau 2 >) (sante 0 >) (Amortentia 0 =) (concentration 30 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Amortentia. Il commence � nous regarder avec des yeux doux..." )

        (((Philtre_d_amour 1 =) (nb_potion 1 +) (nb_Contr�le-mental 1 +)) ((Oeuf_de_Serpencendre 1 =) (Poudre_rouge_sombre 1 =) (Poudre_bleue 1 =) (Poudre_jaune 1 =) (Poudre_verte 1 =) (niveau 2 >) (sante 0 >) (Philtre_d_amour 0 =) (concentration 10 >)) "Harry m�lange des ingredients pour former une potion dr�lement rose qu'il boit sans se poser de questions : Philtre d'amour")

        (((Antidote_�_un_philtre_d_amour 1 =) (nb_potion 1 +) (nb_Antidote 1 +)) ((�corce_de_wiggentree 1 =) (Huile_de_ricin 1 =) (Extrait_de_Ravegourde 1 =) (niveau 1 >) (sante 0 >) (Antidote_�_un_philtre_d_amour 0 =) (concentration 10 >)) "HFarry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Antidote � un philtre d'amour")

        (((Onguent_anti_br�lure 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Graine_de_feu 1 =) (Lavande 1 =) (niveau 1 >) (sante 0 >) (Onguent_anti_br�lure 0 =) (concentration 5 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Onguent anti-br�lure")

        (((Potion_anti_feu 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((concentration 50 >) (Corne_de_dragon 1 =) (Essence_de_chassevache 1 =) (Onguent_anti_br�lure 1 =) (niveau 2 >) (sante 0 >) (Potion_anti_feu 0 =)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion anti-feu")

        (((Solution_anti_Nargoles 1 =) (nb_potion 1 +) (nb_Affaiblissant 1 +)) ((concentration 5 >) (Potion_rat� 1 =) (niveau 0 >) (sante 0 >) (Solution_anti_Nargoles 0 =)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Solution anti-Nargoles")

        (((Potion_anti_paralysie 1 =) (concentration 10 +) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Mandragore 1 =) (Bulbe_de_scille 1 =) (niveau 1 >) (sante 0 >) (Potion_anti_paralysie 0 =) (concentration 25 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion anti-paralysie")

        (((Antidote_au_Veritaserum 1 =) (nb_potion 1 +) (nb_Antidote 1 +)) ((Veritaserum 1 =) (Tentacules_de_Murlap 1 =) (Oeuf_de_Doxy 1 =) (niveau 2 >) (sante 0 >) (Antidote_au_Veritaserum 0 =) (concentration 70 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Antidote au Veritaserum ! Cette potion est tr�s rare ! Mais elle ne va pas beaucoup lui servir tout seul... � moins qu'elle cache d'autres effets")

        (((Philtre_d_apathie 1 =) (nb_potion 1 +) (concentration 5 +)) ((concentration 30 >) (F�ve_sopophorique 1 =) (Caramel_au_beurre 1 =) (Carapace_de_bernard_l_ermite 1 =) (Val�riane 1 =) (niveau 2 >) (sante 0 >) (Philtre_d_apathie 0 =)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Philtre d'apathie ... on ne sait toujours pas � quoi elle sert mais Harry est content !")

        (((Potion_d_apocyn 1 =) (nb_potion 1 +) (nb_Poison 1 +) (sante 1 +)) ((Apocyn 1 =) (niveau 1 >) (sante 0 >) (Potion_d_apocyn 0 =) (concentration 10 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion d'apocyn, elle a un go�t amer...")

        (((Baume_d_ascl�piade_tub�reuse 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Ascl�piade_tub�reuse 1 =) (niveau 1 >) (sante 0 >) (Baume_d_ascl�piade_tub�reuse 0 =) (concentration 15 >)) "Harry m�lange des ingredients pour former une potion qu'il s'applique sur la peau : Baume d'ascl�piade tub�reuse")

        (((Potion_aveuglante 1 =) (nb_potion 1 +) (nb_Affaiblissant 1 +)) ((Philtre_d_apathie 1 =) (Huile_de_ricin 1 =) (Act�e_en_�pi 1 =) (Baie_de_gui ) (niveau 1 >) (sante 0 >) (Potion_aveuglante 0 =) (concentration 15 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion aveuglante. Il a litteralement des �toiles dans les yeux !")

        (((Potion_de_Babillage 1 =) (nb_potion 1 +) (nb_Contr�le-mental 1 +)) ((Aconit 1 =) (niveau 1 >) (sante 0 >) (Potion_de_Babillage 0 =) (concentration 30 >)) "Hry m�lnge ds ingr�dnts pr formr ne ptin kil bot sn se psr d qstions : Potion de Babillage")

        (((Goutte_Baillon 1 =) (nb_potion 1 +) (nb_Contr�le-mental 1 +)) ((Potion_de_Babillage 1 =) (Ascl�piade_tub�reuse 1 =) (Champignon_v�n�neux_sauteur 1 =) (niveau 1 >) (sante 0 >) (Goutte_Baillon 0 =) (concentration 25 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Goutte Baillon! Il ne dit plus rien �tonnement...")

        (((Baume_pour_le_bec 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Cranson_officinal 1 =) (Bandimon 1 =) (Plume_de_hibou_grand-duc 1 =) (Goutte_Baillon 1 =) (niveau 0 >) (sante 0 >) (Baume_pour_le_bec 0 =)) "Harry m�lange des ingredients pour former une potion qu'il se met sur la peau sans se poser de questions : Baume pour le bec, �a � l'air de fonctionner ! Etonnant il n'a pas de bec...")

        (((Potion_de_beaut� 1 =) (nb_potion 1 +) (sante 1 +) (concentration 5 -)) ((Ros�e_du_matin 1 =) (P�tales_de_rose 1 =) (Alch�mille 1 =) (Crin_de_licorne 1 =) (Gingembre 1 =) (Aile_de_f�e 1 =) (niveau 2 >) (sante 0 >) (Potion_de_beaut� 0 =) (concentration 50 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion de beaut�, sa beaut� est in�galable et lui a permis de reg�n�rer en partie ses blessures, mais il se d�concentre � force de s'admirer")

        (((Potion_bomboeil 1 =) (nb_potion 1 +) (nb_Affaiblissant 1 +)) ((Goutte_Baillon 1 =) (Potion_explosive 1 =) (niveau 1 >) (sante 0 >) (Potion_bomboeil 0 =) (concentration 20 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion bomboeil")

        (((Philtre_Calmant 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Lavande 1 =) (Coeur_de_crocodile 1 =) (Menthe 1 =) (niveau 1 >) (sante 0 >) (Philtre_Calmant 0 =) (concentration 15 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Philtre Calmant")

        (((Potion_Capillours 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Cirage_�_cornes_revigorant 1 =) (Cranson_officinal 1 =) (Oeuf_de_Runespoor 1 =) (niveau 0 >) (sante 0 >) (Potion_Capillours 0 =) (concentration 10 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion Capillours, ses cheveux commencent � pousser � vue d'oeil mais il se sent revigour�")

        (((�lixir_C�r�bral_de_Baruffio 1 =) (nb_potion 1 +) (concentration 50 +)) ((Oeuf_de_Runespoor 1 =) (Champignon_v�n�neux_sauteur 1 =) (Cerveau_de_grenouille 1 =) (Griffe_de_dragon 1 =) (niveau 2 >) (sante 0 >) (�lixir_C�r�bral_de_Baruffio 0 =) (concentration 40 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : �lixir C�r�bral de Baruffio, il est plus concentr� que jamais !")

        (((Breuvage_de_champignon_mortel 1 =) (nb_potion 1 +) (nb_Poison 1 +)) ((Calice_de_la_mort 1 =) (niveau 1 >) (sante 0 >) (Breuvage_de_champignon_mortel 0 =) (concentration 25 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Breuvage de champignon mortel, il aurait peut �tre du se renseigner � la pharmacie avant...")

        (((Baume_de_chiendent_�toil� 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Chiendent_�toil� 1 =) (niveau 1 >) (sante 0 >) (Baume_de_chiendent_�toil� 0 =) (concentration 20 >)) "Harry m�lange des ingredients pour former une potion qu'il s'applique sans se poser de questions : Baume de chiendent �toil�")

        (((Cirage_�_cornes_revigorant 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Potion_de_r�g�n�ration 1 =) (Fleur_�_corne 1 =) (niveau 1 >) (sante 0 >) (Cirage_�_cornes_revigorant 0 =) (concentration 25 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Cirage � cornes revigorant")

        (((Philtre_de_Confusion 1 =) (nb_potion 1 +) (nb_Contr�le-mental 1 +)) ((Cranson_officinal 1 =) (Liv�che 1 =) (Achill�e_sternutatoire 1 =) (niveau 0 >) (sante 0 >) (Philtre_de_Confusion 0 =) (concentration 25 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Philtre de Confusion")

        (((Potion_crache_flammes 1 =) (nb_potion 1 +) (sante 1 -) ) ((Lavande 1 =) (Menthe 1 =) (Graine_de_feu 1 =) (Corne_de_dragon 1 =) (Val�riane 1 =) (niveau 0 >) (sante 0 >) (Potion_crache_flammes 0 =) (concentration 10 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion crache-flammes ! Harry commence br�le une table sans faire expr�s, lui faisant quelques degats")

        (((Philtre_D�gonflant 1 =) (nb_potion 1 +) (nb_Antidote 1 +)) ((Potion_d_Enflure 1 =) (Champignon 1 =) (Plume 1 =) (niveau 2 >) (sante 0 >) (Philtre_D�gonflant 0 =) (concentration 50 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Philtre D�gonflant")

        (((Goutte_d�sopilante 1 =) (nb_potion 1 +) (nb_Hallucinog�ne 1 +)) ((Alihotsy 1 =) (niveau 0 >) (sante 0 >) (Goutte_d�sopilante 0 =) (concentration 10 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Goutte d�sopilante")

        (((Essence_de_dictame 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Dictame 1 =) (niveau 0 >) (sante 0 >) (Essence_de_dictame 0 =) (concentration 10 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Essence de dictame")

        (((Doxycide 1 =) (nb_potion 1 +) (nb_Contr�le-mental 1 +)) ((Bandimon 1 =) (Foie_de_dragon 1 =) (Musard 1 =) (Essence_de_chassevache 1 =) (Essence_de_cigu� 1 =) (Teinture_de_tormentille 1 =) (niveau 0 >) (sante 0 >) (Doxycide 0 =) (concentration 15 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Doxycide")

        (((Poison_de_dragon 1 =) (nb_potion 1 +) (nb_Poison 1 +)) ((Partie_de_dragon 1 =) (niveau 2 >) (sante 0 >) (Poison_de_dragon 0 =) (concentration 50 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Poison de dragon")

        (((Dragonfortant 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Plume_de_paon 1 =) (Plume_de_hibou_grand_duc 1 =) (Verrue_de_crapaud_violet_g�ant 1 =) (niveau 2 >) (sante 0 >) (Dragonfortant 0 =) (concentration 50 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Dragonfortant")

        (((Efface_Boutons_dix_secondes_garanties 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Gomas_Barbadensis 1 =) (Bandimon 1 =) (niveau 1 >) (sante 0 >) (Efface_Boutons_dix_secondes_garanties 0 =) (concentration 10 >)) "Harry m�lange des ingredients pour former une potion qu'il s'applique sans se poser de questions : Efface-Boutons dix secondes garanties, �a ressemble dr�lement � la creme qu'on retrouve chez les freres Weasley")

        (((Philtre_d_Embrouille 1 =) (nb_potion 1 +) (nb_Contr�le-mental 1 +)) ((Cranson_officinal 1 =) (Liv�che 1 =) (Achill�e_sternutatoire 1 =) (niveau 1 >) (sante 0 >) (Philtre_d_Embrouille 0 =) (concentration 30 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Philtre d'Embrouille")

        (((Potion_d_Enflure 1 =) (nb_potion 1 +) (nb_Affaiblissant 1 +)) ((Oeil_de_poissons 1 =) (Ortie_s�ch�e 1 =) (Foie_de_chauve_souris 1 =) (niveau 0 >) (sante 0 >) (Potion_d_Enflure 0 =) (concentration 15 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion d'Enflure")

        (((Engrais 1 =) (nb_potion 1 +) (nb_Jardin 1 +)) ((Poudre_rouge_sombre 1 =) (Oeil_de_Boullu 1 =) (Bouse_de_dragon 1 =) (Os 1 =) (Algue_s�che 1 =) (Cervelle_de_paresseux 1 =) (Hippocampe_volant 1 =) (Liquide_blanc 1 =) (Thorax_de_libellules_grill�s 1 =) (Rate_de_rat 1 =) (Mandragore 1 =) (niveau 1 >) (sante 0 >) (Engrais 0 =) (concentration 20 >)) "Harry m�lange des ingredients pour former une potion qu'il goute sans se poser de questions : Engrais, �a n'a vraiment pas l'air appetissant, Harry recrache une partie")

        (((�lixir_�ternel 1 =) (nb_potion 1 +) (concentration 10 +) (nb_Fortifiant 1 +)) ((Potion_de_beaut� 1 =) (Huile_de_ricin 1 =) (Philtre_de_Mort_Vivante 1 =) (niveau 2 >) (sante 0 >) (�lixir_�ternel 0 =) (concentration 80 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : �lixir �ternel ! Cette potion est tr�s rare, digne des plus grands ma�tre seulement c'est bien les objets qu'elle rend �ternels pas les humains, elle fait l'effet d'un simple fortifiant donc !")

        (((�lixir_d_Euphorie 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((�pine_de_porc_�pic 1 =) (Menthe 1 =) (F�ve_sopophorique 1 =) (Figue 1 =) (Armoise 1 =) (niveau 1 >) (sante 0 >) (�lixir_d_Euphorie 0 =) (concentration 20 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : �lixir d'Euphorie")

        (((Everklena 1 =) (nb_potion 1 +) (concentration 5 -)) ((Teinture_de_tormentille 1 =) (Ros�e_du_matin 1 =) (niveau 1 >) (sante 0 >) (Everklena 0 =) (concentration 40 >)) "Harry m�lange des ingredients pour former une potion : Everklena. On aurait dit un nettoyant mais au lieu de �a �a salit toute la salle...")

        (((Potion_explosive 1 =) (nb_potion 1 +) (sante 5 -)) ((Everklena 1 =) (Potion_jaillissante 1 =) (Gel�e_de_p�trole 1 =) (niveau 2 >) (sante 0 >) (Potion_explosive 0 =) (concentration 60 >)) "BAAM ... Harry a cr�� la Potion explosive !... Sous un nuage de fum�e on a du mal a discerner si Harry est vivant mais il sera tr�s affaiblit quoi qu'il en soit.")

        (((Potion_exstimulo 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Lewisie 1 =) (Sang_de_Re_em 1 =) (Perce_neige 1 =) (Poil_de_gronian 1 =) (niveau 0 >) (sante 0 >) (Potion_exstimulo 0 =) (concentration 10 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion exstimulo")

        (((Vapeurs_de_fatigue 1 =) (nb_potion 1 +) (nb_Affaiblissant 1 +)) ((Sang_de_Re_em 1 =) (Ros�e_du_matin 1 =) (Poudre_rouge_sombre 1 =) (Oeil_de_Boullu 1 =) (niveau 1 >) (sante 0 >) (Vapeurs_de_fatigue 0 =) (concentration 25 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Vapeurs de fatigue")

        (((Felix_Felicis 1 =) (nb_potion 1 +) (concentration 150 =) ) ((Oeuf_de_Serpencendre 1 =) (Raifort 1 =) (Bulbe_de_scille 1 =) (Tentacules_de_Murlap 1 =) (Alcoolature_dethym 1 =) (Oeuf_d_Occamy 1 =) (Poudre_de_Ruta 1 =) (niveau 2 >) (sante 0 >) (Felix_Felicis 0 =) (concentration 90 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Felix Felicis, il ne s'en rend pas tout de suite compte mais il vient de r�aliser une des potions les plus difficiles ! Sa concentration est in�gal�e !")

        (((Potion_des_flammes_noires 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Potion_fortifiante 1 =) (Poudre_rouge_sombre 1 =) (Infusion_infecte 1 =) (niveau 2 >) (sante 0 >) (Potion_des_flammes_noires 0 =) (concentration 40 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion des flammes noires")

        (((Potion_des_flammes_violettes 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Potion_des_flammes_noires 1 =)  (niveau 2 >) (sante 0 >) (Potion_des_flammes_violettes 0 =) (concentration 40 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion des flammes violettes")

        (((Solution_de_Force 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Sang_de_salamandre 1 =) (Ongle_de_griffon 1 =) (niveau 1 >) (sante 0 >) (Solution_de_Force 0 =) (concentration 20 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Solution de Force")

        (((Potion_fortifiante 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Hippocampe_volant 1 =) (Thorax_de_libellules_grill�s 1 =) (Aile_de_f�e 1 =) (Oeuf_de_Doxy 1 =) (niveau 1 >) (sante 0 >) (Potion_fortifiante 0 =) (concentration 30 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion fortifiante")

        (((Potions_�_base_de_fromage 1 =) (nb_potion 1 +)) ((Fromage 1 =) (niveau 0 >) (sante 0 >) (Potions_�_base_de_fromage 0 =) ) "Harry m�lange du fromage pour former une potion qu'il boit sans se poser de questions : Potions � base de fromage ! Hmmm d�licieux mais inutile.")

        (((Potion_fungiface 1 =) (nb_potion 1 +) (nb_Poison 1 +)) ((Liquide_brun 1 =) (Liquide_blanc 1 =) (niveau 0 >) (sante 0 >) (Potion_fungiface 0 =) (concentration 10 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion fungiface")

        (((Rem�de_contre_les_furoncles 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((�pine_de_porc_�pic 1 =) (Poudre_verte 1 =) (Ortie_s�ch�e 1 =) (Limace_�_cornes 1 =) (Mucus_de_Veracrasse 1 =) (Liquide_brun 1 =) (Crochet_de_serpent 1 =) (niveau 0 >) (sante 0 >) (Rem�de_contre_les_furoncles 0 =) (concentration 5 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Rem�de contre les furoncles")

        (((Gaz_�trangleur 1 =) (nb_potion 1 +) (nb_Hallucinog�ne 1 +)) ((Infusion_infecte 1 =) (Potions_�_base_de_fromage 1 =) (Jus_de_Horglup 1 =) (niveau 0 >) (sante 0 >) (Gaz_�trangleur 0 =) (concentration 10 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Gaz �trangleur")

        (((Potion_de_Haine 1 =) (nb_potion 1 +) (nb_Contr�le-mental 1 +)) ((Potion_d_Act�e_en_�pi 1 =) (Urine 1 =) (niveau 0 >) (sante 0 >) (Potion_de_Haine 0 =) (concentration 15 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion de Haine")

        (((Potion_d_haleine_de_chien 1 =) (nb_potion 1 +)) ((Potions_�_base_de_fromage 1 =) (Mucus_de_cervelle_de_paresseux 1 =)  (niveau 1 >) (sante 0 >) (Potion_d_haleine_de_chien 0 =) (concentration 20 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion d'haleine de chien. L'odeur se propage m�me dans le couloir !")

        (((Herbicide 1 =) (nb_potion 1 +) (nb_Poison 1 +)) ((Ingr�dient_standard 1 =) (Mucus_de_Veracrasse 1 =) (Jus_de_Horglup 1 =) (�pine_de_poisson_diable 1 =) (niveau 0 >) (sante 0 >) (Herbicide 0 =) (concentration 20 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Herbicide")

        (((Potion_�_H�risser_les_Cheveux 1 =) (concentration 5 -) (nb_potion 1 +)) ((Queue_de_rat 1 =) (niveau 1 >) (sante 0 >) (Potion_�_H�risser_les_Cheveux 0 =) (concentration 35 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion � H�risser les Cheveux. Ses cheveux se dressent tels un porc �pique")

        (((Potion_d_Hilarit� 1 =) (nb_potion 1 +) (nb_Affaiblissant 1 +)) ((Potion_�_H�risser_les_Cheveux 1 =) (Jus_de_Horglup 1 =) (Mucus_de_cervelle_de_paresseux 1 =) (niveau 1 >) (sante 0 >) (Potion_d_Hilarit� 0 =) (concentration 20 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion d'Hilarit�")

        (((D�coction_Hoqueteuse 1 =) (nb_potion 1 +) (nb_Affaiblissant 1 +)) ((Potion_capillaire_Lissenplis 1 =) (M�lange_de_poudre_d_argent_et_de_dictame 1 =) (niveau 1 >) (sante 0 >) (D�coction_Hoqueteuse 0 =) (concentration 20 >)) "Harry m�lange...HIC... des ingredients pour former une ...HIC...potion qu'il boit sans se ...HIC...poser de questions : D�coction Hoqueteuse ...HIC...")

        (((Infusion_infecte 1 =) (nb_potion 1 +) (nb_Poison 1 +)) ((Champignon 1 =) (Plume 1 =) (niveau 1 >) (sante 0 >) (Infusion_infecte 0 =) (concentration 25 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Infusion infecte, il la boit quand m�me pour l'exp�rience")

        (((Potion_jaillissante 1 =) (nb_potion 1 +)) ((�ruptif 1 =) (niveau 0 >) (sante 0 >) (Potion_jaillissante 0 =)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion jaillissante ! Aucun int�ret particulier mais tr�s amusant !")

        (((Baume_de_lewisie_br�lante 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Lewisie 1 =) (niveau 2 >) (sante 0 >) (Baume_de_lewisie_br�lante 0 =) (concentration 50 >)) "Harry m�lange des ingredients pour former une potion qu'il s'applique sans se poser de questions : Baume de lewisie br�lante")

        (((Potion_capillaire_Lissenplis 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Gomas_Barbadensis 1 =) (Cheveux_de_dragon_asiatique 1 =) (Gel�e_de_p�trole 1 =) (niveau 1 >) (sante 0 >) (Potion_capillaire_Lissenplis 0 =) (concentration 20 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion capillaire Lissenplis")

        (((�lixir_de_longue_vie 1 =) (nb_potion 1 +) (sante 20 +)) ((Pierre_philosophale 1 =) (niveau 2 >) (sante 0 >) (�lixir_de_longue_vie 0 =) (concentration 90 >=)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : �lixir de longue vie, il a r�ussi l'impossible ! Nicolas Flamel en serait fier ! Harry prolonge grandement sa vie et donc sa sante !")

        (((M�lange_malveillant 1 =) (nb_potion 1 +) (nb_Poison 1 +)) ((Infusion_infecte 1 =) (Sang_d_un_ennemi 1 =) (niveau 0 >) (sante 0 >) (M�lange_malveillant 0 =) (concentration 5 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : M�lange malveillant")

        (((Philtre_r�g�n�rateur_�_la_mandragore 1 =) (nb_potion 1 +) (nb_Antidote 1 +)) ((Mandragore 1 =) (niveau 2 >) (sante 0 >) (Philtre_r�g�n�rateur_�_la_mandragore 0 =) (concentration 50 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Philtre r�g�n�rateur � la mandragore")

        (((M�lange_de_bouse_de_dragon_et_d_engrais 1 =) (nb_potion 1 +) (nb_Jardin 1 +)) ((Bouse_de_dragon 1 =) (Engrais 1 =) (niveau 0 >) (sante 0 >) (M�lange_de_bouse_de_dragon_et_d_engrais 0 =)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : M�lange de bouse de dragon et d'engrais ... ")

        (((Potion_de_M�moire 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Menthe 1 =) (Perce_neige 1 =) (Mandragore 1 =) (Feuilles_d_alihotsy 1 =) (Oeil_d_anguille 1 =) (Sauge 1 =) (Plume_de_Jobarbille 1 =) (niveau 2 >) (sante 0 >) (Potion_de_M�moire 0 =) (concentration 40 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion de M�moire")

        (((Potion_de_Mort 1 =) (nb_potion 1 +) (sante 0 =)) ((�lixir_de_longue_vie 1 =) (M�lange_malveillant 1 =) (Vapeurs_de_fatigue 1 =) (niveau 1 >) (sante 0 >) (Potion_de_Mort 0 =) (concentration 89 >)) "Pas de chance ! Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion de Mort, Harry meurt donc sur le champs dommage...")

        (((Philtre_de_Mort_Vivante 1 =) (nb_potion 1 +) (nb_Hallucinog�ne 1 +)) ((Cervelle_de_paresseux 1 =) (Liquide_blanc 1 =) (F�ve_sopophorique 1 =) (Mucus_de_Veracrasse 1 =) (Asphod�le 1 =) (Infusion_d_armoise 1 =) (Infusion_d_armoise 1 =) (Liquide_violet 1 =) (Poudre_rose 1 =) (Crochet_de_serpent 1 =) (Val�riane 1 =) (niveau 1 >) (sante 0 >) (Philtre_de_Mort_Vivante 0 =) (concentration 15 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Philtre de Mort Vivante")

        (((M�lange_de_poudre_d_argent_et_de_dictame 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Dictame 1 =) (Poudre_d_argent 1 =) (niveau 0 >) (sante 0 >) (M�lange_de_poudre_d_argent_et_de_dictame 0 =) (concentration 10 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : M�lange de poudre d'argent et de dictame")

        (((Nettoie_Tout_magique_de_la_M�re_Grattesec 1 =) (nb_potion 1 +)) ((Potion_de_nettoyage 1 =) (Lavande 1 =) (niveau 1 >) (sante 0 >) (Nettoie_Tout_magique_de_la_M�re_Grattesec 0 =)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Nettoie-Tout magique de la M�re Grattesec, il en profite pour nettoyer son chaudron")

        (((Potion_de_nettoyage 1 =) (nb_potion 1 +)) ((Sal_ammoniac 1 =) (Vinaigre 1 =) (niveau 1 >) (sante 0 >) (Potion_de_nettoyage 0 =) (concentration 10 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion de nettoyage, il en profite pour nettoyer son chaudron")

        (((Potion_Oculus 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Poudre_bleue 1 =) (Mandragore 1 =) (Infusion_d_armoise 1 =) (Corne_de_licorne 1 =) (niveau 0 >) (sante 0 >) (Potion_Oculus 0 =) (concentration 15 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion Oculus")

        (((Potion_de_l_Oeil_Vif 1 =) (nb_potion 1 +) (nb_Antidote 1 +)) ((Ingr�dient_standard 1 =) (Dard_s�ch�_de_Billywig 1 =) (Tue_loup 1 =) (Crochet_de_serpent 1 =) (niveau 0 >) (sante 0 >) (Potion_de_l_Oeil_Vif 0 =) (concentration 15 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion de l'�il Vif")

        (((Philtre_de_Paix 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Poudre_bleue 1 =) (Liquide_brun 1 =) (Mandragore 1 =) (Poudre_rose 1 =) (Pierre_de_lune 1 =) (Sirop_d_ell�bore 1 =) (niveau 1 >) (sante 0 >) (Philtre_de_Paix 0 =) (concentration 30 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Philtre de Paix")

        (((Panac�e 1 =) (nb_potion 1 +) (sante 10000 +)) ((Vinaigre 1 =) (Sel 1 =) (Urine 1 =) (Sal_ammoniac 1 =) (Soufre_vif 1 =) (niveau 2 >) (sante 0 >) (Panac�e 0 =) (concentration 90 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Panac�e ! Il devient immortel et soigne toutes ses maladies, rien que �a !")

        (((Baume_de_p�querettes 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((P�querette 1 =) (niveau 0 >) (sante 0 >) (Baume_de_p�querettes 0 =) (concentration 5 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Baume de p�querettes...Attention ! Ne convient pas � un usage orale !")

        (((Potion_Pare_feu 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Sang_de_salamandre 1 =) (Champignon_explosif 1 =) (Champignon_�_verrues 1 =) (niveau 0 >) (sante 0 >) (Potion_Pare_feu 0 =) (concentration 15 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion Pare-feu ! Audacieux de mettre des explosifs puis le boire, attendons son effet...")

        (((Poison_pernicieux 1 =) (nb_potion 1 +) (nb_Poison 1 +)) ((Vinaigre 1 =) (Gel�e_de_p�trole 1 =) (Baume_de_p�querettes 1 =) (niveau 1 >) (sante 0 >) (Poison_pernicieux 0 =) (concentration 20 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Poison pernicieux")

        (((Pimentine 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((�ruptif 1 =) (Armoise 1 =) (Baume_de_p�querettes 1 =) (niveau 0 >) (sante 0 >) (Pimentine 0 =) (concentration 25 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Pimentine")

        (((Antidote_aux_Poisons_Courants 1 =) (nb_potion 1 +) (nb_Antidote 1 +)) ((Baie_de_gui 1 =) (Ingr�dient_standard 1 =) (Menthe 1 =) (Mandragore 1 =) (Poudre_rose 1 =) (B�zoard 1 =) (Corne_de_licorne 1 =) (Hydromel 1 =) (niveau 1 >) (sante 0 >) (Antidote_aux_Poisons_Courants 0 =) (concentration 25 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Antidote aux Poisons Courants")

        (((Antidote_des_poisons_rares 1 =) (nb_potion 1 +) (nb_Antidote 2 +)) ((Graine_de_feu 1 =) (Dard_s�ch�_de_Billywig 1 =) (Carapace_de_Ciseburine 1 =) (Corne_de_Grapcorne 1 =) (niveau 0 >) (sante 0 >) (Antidote_des_poisons_rares 0 =) (concentration 75 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Antidote des poisons rares")

        (((Polynectar 1 =) (nb_potion 1 +) (concentration 50 +)) ((Sangsue 1 =) (Peau_de_serpent_d_arbre_du_Cap 1 =) (Corne_de_bicorne 1 =) (Chrysope_cuite 1 =) (Sisymbre 1 =) (Touffe_de_Polygonum 1 =) (�l�ment_du_corps_de_la_personne_dont_on_souhaite_prendre_l_apparence 1 =) (niveau 2 >) (sante 0 >) (Polynectar 0 =) (concentration 70 >)) "Harry m�lange des ingredients pour former un : Polynectar ! Il se transforme en le professeur Rogue car un vieux cheveux trainait dans le chaudron. Il commence � se sentir plus renseign� sur les potions!")

        (((Pommade_pommadante_Gr�goire 1 =) (nb_potion 1 +) (nb_Contr�le-mental 1 +)) ((Baume_de_p�querettes 1 =) (Lavande 1 =) (niveau 1 >) (sante 0 >) (Pommade_pommadante_Gr�goire 0 =) (concentration 30 >)) "Harry m�lange des ingredients pour former une potion qu'il s'applique sans se poser de questions : Pommade pommadante Gr�goire")

        (((Potion_de_caut�risation 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Liquide_blanc 1 =) (Pommade_pommadante_Gr�goire 1 =) (niveau 2 >) (sante 0 >) (Potion_de_caut�risation 0 =) (concentration 40 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion de caut�risation")

        (((Potion_de_Regermination 1 =) (nb_potion 1 +) (nb_Jardin 1 +)) ((Engrais 1 =) (Urine 1 =) (niveau 2 >) (sante 0 >) (Potion_de_Regermination 0 =) (concentration 50 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion de Regermination")

        (((Potion_de_Rejutage 1 =) (nb_potion 1 +) (nb_Jardin 1 +) (Liquide_blanc 1 =)) ((Potion_de_Regermination 1 =) (Lavande 1 =) (niveau 1 >) (sante 0 >) (Potion_de_Rejutage 0 =) (concentration 10 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion de Rejutage...SPLASH")

        (((Potion_Potiron 1 =) (nb_potion 1 +) (nb_Affaiblissant 1 +)) ((Pipaillon_de_nuit 1 =) (Digitale 1 =) (Bulbe_sauteur 1 =) (niveau 0 >) (sante 0 >) (Potion_Potiron 0 =) (concentration 10 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion Potiron, sa t�te est encore en train de se transformer en potiron !")

        (((Poussos 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Scarab�e 1 =) (Chou_mordeur_de_Chine 1 =) (Oeil_de_poisson_h�risson 1 =) (niveau 1 >) (sante 0 >) (Poussos 0 =) (concentration 30 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Poussos")

        (((Potion_�_priser 1 =) (nb_potion 1 +) (nb_Contr�le-mental 1 +)) ((Chou_mordeur_de_Chine 1 =) (Potion_d_haleine_de_chien 1 =) (niveau 1 >) (sante 0 >) (Potion_�_priser 0 =) (concentration 20 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion � priser")

        (((Produit_contre_les_limaces_mangeuses_de_chair 1 =) (nb_potion 1 +)) ((Sal_ammoniac 1 =) (Soufre_vif 1 =) (niveau 1 >) (sante 0 >) (Produit_contre_les_limaces_mangeuses_de_chair 0 =) (concentration 25 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Produit contre les limaces mangeuses de chair. Jusqu'� preuve du contraire, Harry n'est pas une limace mangeuse de chair. La potion n'a aucun effet")

        (((Potion_de_puissance 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Os 1 =) (Crochet_de_serpent 1 =) (Fleur_�_corne 1 =) (niveau 0 >) (sante 0 >) (Potion_de_puissance 0 =) (concentration 5 >)) "Harry m�lange des ingredients pour former une potion apprise en premi�re ann�e qu'il boit sans se poser de questions : Potion de puissance")

        (((Poison_de_raisin_de_couleuvre 1 =) (nb_potion 1 +) (nb_Poison 1 +)) ((Raisin_de_couleuvre 1 =) (niveau 1 >) (sante 0 >) (Poison_de_raisin_de_couleuvre 0 =) (concentration 25 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Poison de raisin de couleuvre")

        (((Potion_de_Ratatinage 1 =) (nb_potion 1 +) (concentration 5 -)) ((Poudre_jaune 1 =) (Rate_de_rat 1 =) (Sangsue 1 =) (Chenille 1 =) (Jus_de_figue 1 =) (niveau 0 >) (sante 0 >) (Potion_de_Ratatinage 0 =) (concentration 10 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion de Ratatinage, il devient tout petit !")

        (((Ratconfortant 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Potion_de_Ratatinage 1 =) (Queue_de_rat 1 =) (niveau 0 >) (sante 0 >) (Ratconfortant 0 =) (concentration 5 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Ratconfortant ! Harry se souvient avec plaisir de la fois ou il avait fait pay� son tacos par Ron")

        (((Potion_de_r�g�n�ration 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Os_d_un_p�re 1 =) (Chair_d_un_serviteur 1 =) (Sang_d_un_ennemi 1 =) (niveau 2 >) (sante 0 >) (Potion_de_r�g�n�ration 0 =) (concentration 40 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion de r�g�n�ration")

        (((Potion_de_R�g�n�ration_sanguine 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Potion_de_r�g�n�ration 1 =) (Sang_d_un_ennemi 1 =) (niveau 2 >) (sante 0 >) (Potion_de_R�g�n�ration_sanguine 0 =) (concentration 40 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion de R�g�n�ration sanguine")

        (((Remontant_de_Pomfresh 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Lavande 1 =) (Liquide_blanc 1 =)  (niveau 2 >) (sante 0 >) (Remontant_de_Pomfresh 0 =) (concentration 40 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Remontant de Pomfresh")

        (((Rem�de_�_la_dragoncelle 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Remontant_de_Pomfresh 1 =) (Oeuf_de_Doxy 1 =) (niveau 1 >) (sante 0 >) (Rem�de_�_la_dragoncelle 0 =) (concentration 20 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Rem�de � la dragoncelle")

        (((Potion_de_restitution 1 =) (nb_potion 1 +) (nb_Antidote 1 +)) ((Potion_de_R�g�n�ration_sanguine 1 =) (Antidote_des_poisons_rares 1 =) (niveau 2 >) (sante 0 >) (Potion_de_restitution 0 =) (concentration 60 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion de restitution")

        (((Philtre_Revigorant 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Cranson_officinal 1 =) (Liv�che 1 =) (Eau_de_miel 1 =) (Infusion_de_verveine 1 =) (niveau 1 >) (sante 0 >) (Philtre_Revigorant 0 =) (concentration 15 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Philtre Revigorant")

        (((Poison_sang_dragon 1 =) (nb_potion 1 +) (nb_Poison 1 +)) ((Sang_dragon 1 =) (niveau 1 >) (sante 0 >) (Poison_sang_dragon 0 =) (concentration 20 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Poison sang-dragon. Mais que fait un dragon dans le bureau de Rogue ?")

        (((Potion_pour_soins_capillaires_de_Lockhart 1 =) (nb_potion 1 +) (nb_Fortifiant 1 +)) ((Oeuf_d_Occamy 1 =) (niveau 2 >) (sante 0 >) (Potion_pour_soins_capillaires_de_Lockhart 0 =) (concentration 40 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion pour soins capillaires de Lockhart, il se sent revigour� avec ses beaux cheveux, il le vaux bien !")

        (((Goutte_du_sommeil 1 =) (nb_potion 1 +) (nb_Hallucinog�ne 1 +)) ((Somnif�re 1 =) (Vapeurs_de_fatigue 1 =) (niveau 0 >) (sante 0 >) (Goutte_du_sommeil 0 =) (concentration 20 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Goutte du sommeil")

        (((Potion_pour_un_sommeil_sans_r�ves 1 =) (nb_potion 1 +) (nb_Hallucinog�ne 1 +)) ((Goutte_du_sommeil 1 =) (Liquide_blanc 1 =) (niveau 1 >) (sante 0 >) (Potion_pour_un_sommeil_sans_r�ves 0 =) (concentration 30 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion pour un sommeil sans r�ves")

        (((Somnif�re 1 =) (nb_potion 1 +) (nb_Hallucinog�ne 1 +)) ((Ingr�dient_standard 1 =) (Mucus_de_Veracrasse 1 =) (Brin_de_lavande 1 =) (Val�riane 1 =) (niveau 0 >) (sante 0 >) (Somnif�re 0 =) (concentration 10 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Somnif�re")

        (((Tolipan_Blemish_Blitzer 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Ingr�dient_naturel 1 =) (Griffe_de_dragon 1 =) (niveau 1 >) (sante 0 >) (Tolipan_Blemish_Blitzer 0 =) (concentration 30 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Tolipan Blemish Blitzer")

        (((Potion_contre_la_toux 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Pimentine 1 =) (Touffe_de_Polygonum 1 =) (P�querette 1 =) (niveau 1 >) (sante 0 >) (Potion_contre_la_toux 0 =) (concentration 30 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion contre la toux")

        (((Potion_Trismus 1 =) (nb_potion 1 +) (nb_Contr�le-mental 1 +)) ((ingredients_�_ajouter) (niveau 1 >) (sante 0 >) (Potion_Trismus 0 =) (concentration 15 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion Trismus, son sourir devient plus intense !... pourtant il est triste")

        (((Goutte_de_trompette_des_anges 1 =) (nb_potion 1 +) (nb_Poison 1 +)) ((Trompette_des_anges 1 =) (niveau 2 >) (sante 0 >) (Goutte_de_trompette_des_anges 0 =) (concentration 50 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Goutte de trompette des anges")

        (((Potion_Tue_loup 1 =) (nb_potion 1 +) (nb_Soin 1 +)) ((Tue_loup 1 =) (niveau 2 >) (sante 0 >) (Potion_Tue_loup 0 =) (concentration 50 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion Tue-loup, il se sent gu�rit ! Mais...ce n'est pas un loup garoup...� moins que...")

        (((Veritaserum 1 =) (nb_potion 1 +) (nb_Contr�le-mental 1 +)) ((S�rum_de_v�rit� 1 =) (Somnif�re 1 =) (niveau 2 >) (sante 0 >) (Veritaserum 0 =) (concentration 70 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Veritaserum, il commence � �peler son code de coffre fort")

        (((S�rum_de_v�rit� 1 =) (nb_potion 1 +) (nb_Contr�le-mental 1 +)) ((Plume_de_Jobarbille 1 =) (niveau 2 >) (sante 0 >) (S�rum_de_v�rit� 0 =) (concentration 50 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : S�rum de v�rit�")

        (((Potion_vert_�meraude 1 =) (nb_potion 1 +)  (concentration 60 -)) ((Poison_pernicieux 1 =) (Chair_d_un_serviteur 1 =) (Sang_d_un_ennemi 1 =) (niveau 2 >) (sante 0 >) (Potion_vert_�meraude 0 =) (concentration 80 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion vert �meraude, il se trouve dans le m�me �tat que Dumbeldort avant sa perte...")

        (((Potion_de_vertige 1 =) (nb_potion 1 +) (nb_Hallucinog�ne 1 +)) ((Vapeurs_de_fatigue 1 =) (Fleur_�_corne 1 =) (niveau 1 >) (sante 0 >) (Potion_de_vertige 0 =) (concentration 25 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion de vertige")

        (((Potion_de_Vieillissement 1 =) (nb_potion 1 +)) ((Goutte_de_trompette_des_anges 1 =) (Hydromel 1 =) (niveau 0 >) (sante 0 >) (Potion_de_Vieillissement 0 =) (concentration 10 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion de Vieillissement. Le temps passe vite dans le bureau de Rogue !")

        (((Potion_Volubilis 1 =) (nb_potion 1 +) (nb_Antidote 1 +) ) ((Menthe 1 =) (Mandragore 1 =) (Sirop_d_ell�bore 1 =) (Hydromel 1 =) (niveau 1 >) (sante 0 >) (Potion_Volubilis 0 =) (concentration 30 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se  de questions : Potion Volubilis")

        (((Potion_Wiggenweld 1 =) (nb_potion 1 +) (nb_Antidote 1 +)) ((Aconit 1 =) (Menthe 1 =) (Dictame 1 =) (Sang_de_salamandre 1 =) (Mucus_de_Veracrasse 1 =) (Jus_de_Horglup 1 =) (�pine_de_poisson_diable 1 =) (Mandragore 1 =) (Corne_de_licorne 1 =) (Eau_de_miel 1 =) (Crochet_de_Ciseburine 1 =) (�corce_de_sorbier 1 =) (Dard_de_Billywig 1 =) (Jus_d_explobaies 1 =) (Moly 1 =) (Mucus_de_cervelle_de_paresseux 1 =) (Ros�e_de_lune 1 =) (niveau 1 >) (sante 0 >) (Potion_Wiggenweld 0 =) (concentration 30 >)) "Harry m�lange des ingredients pour former une potion qu'il boit sans se poser de questions : Potion Wiggenweld")

        (((but mort =)) ((sante 0 <=) (but mort !=)) "Harry est enfin mort !")
        )
)

(setq *bdd_menu* '(
        (1 Achill�e_sternutatoire "Achill�e sternutatoire")
        (2 Aconit "Aconit")
        (3 Act�e_en_�pi "Act�e en �pi")
        (4 Aile_de_f�e "Aile de f�e")
        (5 Alch�mille "Alch�mille")
        (6 Alcoolature_dethym "Alcoolature dethym")
        (7 Algue_s�che "Algue s�che")
        (8 Alihotsy "Alihotsy")
        (9 Apocyn "Apocyn")
        (10 Armoise "Armoise")
        (11 Ascl�piade_tub�reuse "Ascl�piade tub�reuse")
        (12 Asphod�le "Asphod�le")
        (13 Baie_de_gui "Baie de gui")
        (14 Bandimon "Bandimon")
        (15 Bile_de_tatou "Bile de tatou")
        (16 Bouse_de_dragon "Bouse de dragon")
        (17 Brin_de_lavande "Brin de lavande")
        (18 Bulbe_de_scille "Bulbe de scille")
        (19 Bulbe_sauteur "Bulbe sauteur")
        (20 B�zoard "B�zoard")
        (21 Calice_de_la_mort "Calice de la mort")
        (22 Caramel_au_beurre "Caramel au beurre")
        (23 Carapace_de_Ciseburine "Carapace de Ciseburine")
        (24 Carapace_de_bernard_l_ermite "Carapace de bernard-l'ermite")
        (25 Cerveau_de_grenouille "Cerveau de grenouille")
        (26 Cervelle_de_paresseux "Cervelle de paresseux")
        (27 Chair_d_un_serviteur "Chair d'un serviteur")
        (28 Champignon "Champignon")
        (29 Champignon_explosif "Champignon explosif")
        (30 Champignon_v�n�neux_sauteur "Champignon v�n�neux sauteur")
        (31 Champignon_�_verrues "Champignon � verrues")
        (32 Chenille "Chenille")
        (33 Cheveux_de_dragon_asiatique "Cheveux de dragon asiatique")
        (34 Chiendent_�toil� "Chiendent �toil�")
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
        (47 Dard_s�ch�_de_Billywig "Dard s�ch� de Billywig")
        (48 Dictame "Dictame")
        (49 Digitale "Digitale")
        (50 Eau_de_miel "Eau de miel")
        (51 Eau_du_fleuve_L�th� "Eau du fleuve L�th�")
        (52 Engrais "Engrais")
        (53 Essence_de_chassevache "Essence de chassevache")
        (54 Essence_de_cigu� "Essence de cigu�")
        (55 Extrait_de_Ravegourde "Extrait de Ravegourde")
        (56 Feuilles_d_alihotsy "Feuilles d'alihotsy")
        (57 Figue "Figue")
        (58 Fleur_�_corne "Fleur � corne")
        (59 Foie_de_chauve_souris "Foie de chauve-souris")
        (60 Foie_de_dragon "Foie de dragon")
        (61 Fromage "Fromage")
        (62 F�ve_sopophorique "F�ve sopophorique")
        (63 Gel�e_de_p�trole "Gel�e de p�trole")
        (64 Gingembre "Gingembre")
        (65 Gomas_Barbadensis "Gomas Barbadensis")
        (66 Graine_de_feu "Graine de feu")
        (67 Griffe_de_dragon "Griffe de dragon")
        (68 Hippocampe_volant "Hippocampe volant")
        (69 Huile_de_ricin "Huile de ricin")
        (70 Hydromel "Hydromel")
        (71 Infusion_d_armoise "Infusion d'armoise")
        (72 Infusion_de_verveine "Infusion de verveine")
        (73 Ingr�dient_naturel "Ingr�dient naturel")
        (74 Ingr�dient_standard "Ingr�dient standard")
        (75 Jus_d_explobaies "Jus d'explobaies")
        (76 Jus_de_Horglup "Jus de Horglup")
        (77 Jus_de_figue "Jus de figue")
        (78 Lavande "Lavande")
        (79 Lewisie "Lewisie")
        (80 Limace_�_cornes "Limace � cornes")
        (81 Liquide_blanc "Liquide blanc")
        (82 Liquide_brun "Liquide brun")
        (83 Liquide_violet "Liquide violet")
        (84 Liv�che "Liv�che")
        (85 Mandragore "Mandragore")
        (86 Menthe "Menthe")
        (87 Moly "Moly")
        (88 Mucus_de_Veracrasse "Mucus de Veracrasse")
        (89 Mucus_de_cervelle_de_paresseux "Mucus de cervelle de paresseux")
        (90 Musard "Musard")
        (91 Oeil_d_anguille "Oeil d'anguille")
        (92 Oeil_de_Boullu "Oeil de Boullu")
        (93 Oeil_de_poisson_h�risson "Oeil de poisson-h�risson")
        (94 Oeil_de_poissons "Oeil de poissons")
        (95 Oeuf_d_Occamy "Oeuf d'Occamy")
        (96 Oeuf_de_Doxy "Oeuf de Doxy")
        (97 Oeuf_de_Runespoor "Oeuf de Runespoor")
        (98 Oeuf_de_Serpencendre "Oeuf de Serpencendre")
        (99 Ongle_de_griffon "Ongle de griffon")
        (100 Ortie_s�ch�e "Ortie s�ch�e")
        (101 Os "Os")
        (102 Os_d_un_p�re "Os d'un p�re")
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
        (114 Potion_rat� "Potion rat�")
        (115 Poudre_bleue "Poudre bleue")
        (116 Poudre_brune "Poudre brune")
        (117 Poudre_d_argent "Poudre d'argent")
        (118 Poudre_de_Ruta "Poudre de Ruta")
        (119 Poudre_jaune "Poudre jaune")
        (120 Poudre_rose "Poudre rose")
        (121 Poudre_rouge_sombre "Poudre rouge sombre")
        (122 Poudre_verte "Poudre verte")
        (123 P�querette "P�querette")
        (124 P�tales_de_rose "P�tales de rose")
        (125 Queue_de_rat "Queue de rat")
        (126 Raifort "Raifort")
        (127 Raisin_de_couleuvre "Raisin de couleuvre")
        (128 Rate_de_rat "Rate de rat")
        (129 Ros�e_de_lune "Ros�e de lune")
        (130 Ros�e_du_matin "Ros�e du matin")
        (131 Sal_ammoniac "Sal ammoniac")
        (132 Sang_d_un_ennemi "Sang d'un ennemi")
        (133 Sang_de_Re_em "Sang de Re'em")
        (134 Sang_de_salamandre "Sang de salamandre")
        (135 Sang_dragon "Sang-dragon")
        (136 Sangsue "Sangsue")
        (137 Sauge "Sauge")
        (138 Scarab�e "Scarab�e")
        (139 Sel "Sel")
        (140 Sirop_d_ell�bore "Sirop d'ell�bore")
        (141 Sisymbre "Sisymbre")
        (142 Soufre_vif "Soufre vif")
        (143 Teinture_de_tormentille "Teinture de tormentille")
        (144 Tentacules_de_Murlap "Tentacules de Murlap")
        (145 Thorax_de_libellules_grill�s "Thorax de libellules grill�s")
        (146 Touffe_de_Polygonum "Touffe de Polygonum")
        (147 Trompette_des_anges "Trompette des anges")
        (148 Tue_loup "Tue-loup")
        (149 Urine "Urine")
        (150 Val�riane "Val�riane")
        (151 Verrue_de_crapaud_violet_g�ant "Verrue de crapaud violet g�ant")
        (152 Vinaigre "Vinaigre")
        (153 �corce_de_sorbier "�corce de sorbier")
        (154 �corce_de_wiggentree "�corce de wiggentree")
        (155 �l�ment_du_corps_de_la_personne_dont_on_souhaite_prendre_l_apparence "�l�ment du corps de la personne dont on souhaite prendre l'apparence")
        (156 �pine_de_poisson_diable "�pine de poisson-diable")
        (157 �pine_de_porc_�pic "�pine de porc-�pic")
        (158 �ruptif "�ruptif")
        )
)

(setq *bdd_potions* '(
        (Potion_d_Act�e_en_�pi "Potion d'Act�e en �pi" "La potion d'Act�e en �pi (��angl.��Baneberry Potion�) est vraisemblablement un poison fait � partir d'act�e en �pi." "Poison" Poison "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/0/05/Potion_d%27Act%C3%A9e_en_%C3%A9pi.jpg/revision/latest?cb=20151123213442&path-prefix=fr" "Interm�diaire")
        (Potion_affaiblissante "Potion affaiblissante" "La potion affaiblissante (��angl.��Weakness Potion�) est une potion qui affaiblit physiquement et mentalement le buveur." "Affaiblit" Affaiblissant "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/4/46/Potion_affaiblissante.jpg/revision/latest?cb=20151116171804&path-prefix=fr" "Interm�diaire")
        (Potion_d_Aiguise_M�ninges "Potion d'Aiguise-M�ninges" "La potion d'Aiguise-M�ninges (��angl.��Wit-Sharpening Potion�) est probablement un breuvage magique qui permet � celui qui le boit de mieux r�fl�chir. Cette potion neutralise �galement les effets du sortil�ge de Confusion. La potion serait compos� de divers ingr�dients qui comprendraient entre..." "Stimule la r�flexion" Fortifiant "Liquide" "nan" "Harry Potter et la Coupe de Feu" "https://static.wikia.nocookie.net/harrypotter/images/6/65/Potion_d%27Aiguise-M%C3%A9ninges.jpg/revision/latest/scale-to-width-down/350?cb=20170430122817&path-prefix=fr" "D�butant")
        (Potion_d_Amn�sie "Potion d'Amn�sie" "La potion d'Amn�sie (��angl.��Forgetfulness Potion�) est un breuvage qui provoque une perte de m�moire chez celui qui en boit. La recette est pr�sente dans le livre Potions magiques d'Arsenius Beaulitron. Ajouter 2 gouttes d'eau du fleuve L�th� dans le chaudron Faire chauffer � feu doux pendant..." "Fait perdre la m�moire" Contr�le-mental "Liquide" "nan" "Harry Potter � l'�cole des sorciers" "https://static.wikia.nocookie.net/harrypotter/images/f/f8/Potion_d%27Amn%C3%A9sie.png/revision/latest?cb=20120419132106&path-prefix=fr" "D�butant")
        (Onguent_d_amn�sie_du_Dr_Oubbly "Onguent d'amn�sie du Dr Oubbly" "L'onguent d'amn�sie du Dr Oubbly (��angl.��Dr. Ubbly's Oblivious Unction�) est une potion qui permet d'att�nuer les effets des pens�es. Madame Pomfresh applique de l'onguent d'amn�sie du Dr Oubbly sur les blessures inflig�es par les tentacules de cerveau du D�partement des myst�res. (��r�f.��La..." "Fait perdre la m�moire" Contr�le-mental "Liquide" "Dr Oubbly" "Harry Potter et l'Ordre du Ph�nix" "nan" "Interm�diaire")
        (Amortentia "Amortentia" "L'Amortentia est le plus puissant philtre d'amour au monde. L'Amortentia peut �tre identifi�e gr�ce � sa couleur nacr�e, sa vapeur qui s'�l�ve en spirales et l'odeur attirante qu'elle d�gage, diff�rente pour chacun. Horace Slughorn pr�pare quelques potions que les �l�ves devraient �tre capables..." "Rend amoureux" Contr�le-mental "Fumant" "nan" "Harry Potter et le Prince de Sang-M�l�" "https://static.wikia.nocookie.net/harrypotter/images/0/05/Amortentia.jpg/revision/latest/scale-to-width-down/350?cb=20120406193500&path-prefix=fr" "Avanc�")
        (Philtre_d_amour "Philtre d'amour" "Le philtre d'amour (��angl.��Love Potion�) est le nom g�n�rique de potions qui rendent temporairement le receveur amoureux du donneur. De nombreux philtres ont �t� cr��s par Laverne de Montmorency. Les �ufs de Serpencendre gel�s entrent dans la composition des philtres d'amour. Le philtre..." "Rend amoureux" Contr�le-mental "Liquide" "Laverne de Montmorency" "Harry Potter et la Chambre des Secrets" "https://static.wikia.nocookie.net/harrypotter/images/2/20/Philtre_d%27amour.png/revision/latest?cb=20170121121428&path-prefix=fr" "Avanc�")
        (Antidote_�_un_philtre_d_amour "Antidote � un philtre d'amour" "L'antidote � un philtre d'amour (��angl.��Love Potion Antidote�) est une potion permettant d'annuler les effets d'un philtre d'amour. Apr�s que Ron a mang� des chocolats au philtre d'amour, Harry l'emm�ne chez le professeur Slughorn pour lui demander un antidote. Le professeur les laisse entrer..." "Antidote aux philtres d'amour" Antidote "Liquide" "nan" "Harry Potter et le Prince de Sang-M�l�" "https://static.wikia.nocookie.net/harrypotter/images/f/f2/Antidote_%C3%A0_un_philtre_d%27amour_2.jpg/revision/latest/scale-to-width-down/350?cb=20170430170529&path-prefix=fr" "Interm�diaire")
        (Onguent_anti_br�lure "Onguent anti-br�lure" "L'onguent anti-br�lure (��angl.��Burn-Healing Paste�) est une potion de gu�rison qui est utilis�e pour gu�rir les br�lures. D'apr�s Harry Potter�: Secret � Poudlard, cet onguent est inefficace pour gu�rir les br�lures engendr�es par le sortil�ge mal�fique Protego Diabolica. Dans Secret �..." "Gu�rir les br�lures" Soin "Pateux" "nan" "Harry Potter et la Coupe de Feu" "nan" "Interm�diaire")
        (Potion_anti_feu "Potion anti-feu" "La potion anti-feu (��angl.��Fire-Protection Potion�) est une potion qui prot�ge son buveur contre les flammes pendant une courte dur�e. Potion des flammes noires Potion des flammes violettes" "Prot�ge du feu" Fortifiant "Liquide" "nan" "Harry Potter et les Reliques de la Mort : 1�re partie (jeu)" "https://static.wikia.nocookie.net/harrypotter/images/b/b8/Effets_potion_anti-feu_2.jpg/revision/latest/scale-to-width-down/350?cb=20161015194138&path-prefix=fr" "Avanc�")
        (Solution_anti_Nargoles "Solution anti-Nargoles" "La solution anti-Nargoles (��angl.��Narglicide�) est une fausse potion cens�e repousser les Nargoles, des cr�atures imaginaires. Un jour, Philbert Chivers se rend � Slug & Jiggers et exige qu'on lui fournisse un produit contre les Nargoles. Pour se d�barrasser de lui, Humphrey prend de vieilles..." "Repousse les Nargoles" Affaiblissant "Liquide" "Humphrey Balsamo" "Les Animaux Fantastiques : Enqu�tes dans le Monde des Sorciers" "https://static.wikia.nocookie.net/harrypotter/images/0/03/Solution_anti-Nargoles.jpg/revision/latest/scale-to-width-down/350?cb=20170425163406&path-prefix=fr" "D�butant")
        (Potion_anti_paralysie "Potion anti-paralysie" "La potion anti-paralysie (��angl.��Anti-Paralysis Potion�) soignant la paralysie de celui qui la boit. De la potion anti-paralysie est vendue � la boutique de l'apothicaire sur le Chemin de Traverse pour vingt mornilles." "Emp�che la paralysie" Fortifiant "Liquide" "nan" "Harry Potter et la Chambre des Secrets (jeu)" "https://static.wikia.nocookie.net/harrypotter/images/c/ce/Potion_anti-paralysie.png/revision/latest?cb=20170512125324&path-prefix=fr" "Interm�diaire")
        (Antidote_au_Veritaserum "Antidote au Veritaserum" "L'antidote au Veritaserum (��angl.��antidote to Veritaserum�) permet de contrer les effets du Veritaserum. Quand Dumbledore demande � Harry de r�cup�rer le souvenir d'Horace Slughorn au sujet de Tom Jedusor, Harry r�plique qu'il serait plus simple d'utiliser du Veritaserum, ce � quoi Dumbledore..." "Antidote au Veritaserum" Antidote "Liquide" "nan" "Harry Potter et le Prince de Sang-M�l�" "nan" "Avanc�")
        (Philtre_d_apathie "Philtre d'apathie" "Le philtre d'apathie (��angl.��Dawdle Draught�) est une potion magique qui r�duit les chances qu'un Sceau disparaisse avec le Retrouvable, ce qui donne plus d'occasions de terminer le trace. Cette potion �tait pr�par�e et utilis�e par les sorciers et sorci�res volontaires employ�s par le Groupe..." "R�duit les chances qu'un Sceau disparaisse avec le Retrouvable" Chance "Liquide" "nan" "Harry Potter: Wizards Unite" "https://static.wikia.nocookie.net/harrypotter/images/b/b6/Dawdle_Draught.png/revision/latest?cb=20190805165933&path-prefix=fr" "Avanc�")
        (Potion_d_apocyn "Potion d'apocyn" "La potion d'apocyn (��angl.��Dogbane Potion�) est vraisemblablement un poison pour animaux fait � partir d'apocyn." "Poison pour animaux" Poison "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/2/24/Potion_d%27apocyn.jpg/revision/latest?cb=20151123203614&path-prefix=fr" "Interm�diaire")
        (Baume_d_ascl�piade_tub�reuse "Baume d'ascl�piade tub�reuse" "Le baume d'ascl�piade tub�reuse (��angl.��Butterfly Weed Balm�) est un baume m�dicinal probablement fait � partir d'ascl�piade tub�reuse." "Soigne" Soin "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/8/85/Baume_d%27ascl%C3%A9piade_tub%C3%A9reuse.jpg/revision/latest?cb=20151113153004&path-prefix=fr" "Interm�diaire")
        (Potion_aveuglante "Potion aveuglante" "La potion aveuglante (��angl.��Mopsus Potion�) est une potion qui a pour effet d'aveugler. La potion Oculus permet probablement d'annuler les effets de cette potion." "Aveugle" Affaiblissant "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/a/a1/Potion_aveuglante.jpg/revision/latest/scale-to-width-down/350?cb=20151119234516&path-prefix=fr" "Interm�diaire")
        (Potion_de_Babillage "Potion de Babillage" "La potion de Babillage (��angl.��Babbling Beverage�) est un breuvage magique qui provoque chez le buveur des propos insens�s. Dans le jeu Harry Potter�: Secret � Poudlard, le cadet de Jacob peut apprendre comment concocter cette potion avec l'aide de son pr�fet. Le cadet teste d'ailleurs sa..." "Produit des propos insens�s" Contr�le-mental "Liquide" "nan" "Harry Potter et l'Ordre du Ph�nix" "https://static.wikia.nocookie.net/harrypotter/images/c/c5/Potion_de_Babillage.png/revision/latest?cb=20200505154956&path-prefix=fr" "Interm�diaire")
        (Goutte_Baillon "Goutte Baillon" "La Goutte Baillon (��angl.��Muffling Draught�) est une potion qui emp�che le buveur de parler. Ses vapeurs suffisent � ce que la personne l'utilisant en ressente les effets." "Emp�che de parler" Contr�le-mental "Fumant" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/b/b3/Goutte_Baillon.jpg/revision/latest?cb=20151125144118&path-prefix=fr" "Interm�diaire")
        (Baume_pour_le_bec "Baume pour le bec" "Le baume pour le bec (��angl.��Beak Balm�) est un produit curatif pour le bec de certaines cr�atures magiques. D'apr�s le site officiel de MinaLima, ce baume est � appliquer avec une cuill�re � caf� sur la zone endommag�e du bec et ce, toutes les heures jusqu'� gu�rison. Si l'infection persiste..." "Soigne" Soin "Liquide" "nan" "Les Animaux fantastiques (film)" "https://static.wikia.nocookie.net/harrypotter/images/e/e4/Baume_pour_le_bec.jpg/revision/latest?cb=20231202095040&path-prefix=fr" "D�butant")
        (Potion_de_beaut� "Potion de beaut�" "Une potion de beaut� (��angl.��Beautifying Potion ou Beautification Potion�) est le nom g�n�rique de potions magiques qui permettent de modifier son physique. Sacharissa Tugwood est la pionni�re des potions de beaut�. Les potions de beaut� peuvent �tre de deux types�: Elles peuvent permettre de..." "Rend s�duisant" M�tamorphose "Liquide" "Zygmunt Budge" "Harry Potter et la Chambre des Secrets (jeu)" "https://static.wikia.nocookie.net/harrypotter/images/9/92/Potion_de_beaut%C3%A9.png/revision/latest?cb=20150227101000&path-prefix=fr" "Avanc�")
        (Potion_bomboeil "Potion bomb�il" "Le potion bomb�il (��angl.��Bulgeye Potion�) est une potion qui affecte probablement la vue." "Aveugle" Affaiblissant "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/9/90/Potion_bomb%C5%93il.jpg/revision/latest?cb=20151122125751&path-prefix=fr" "Interm�diaire")
        (Philtre_Calmant "Philtre Calmant" "Le philtre Calmant (��angl.��Calming Draught�) est une potion utilis�e pour d�tendre une personne stress�e ou en �tat de choc. � l'approche des BUSE, Hannah Abbot fond en larmes pendant un cours de botanique et geint qu'elle est trop stupide pour r�ussir ses examens et demande � quitter l'�cole..." "D�tend" Soin "Liquide" "nan" "Harry Potter et l'Ordre du Ph�nix" "https://static.wikia.nocookie.net/harrypotter/images/0/02/Filtre_calmant.jpg/revision/latest?cb=20190722085507&path-prefix=fr" "Interm�diaire")
        (Potion_Capillours "Potion Capillours" "La potion Capillours (��angl.��Manegro Potion�) est une potion qui fait pousser les cheveux du buveur � grande vitesse. Dans la version anglaise, Manegro est probablement compos� de deux termes anglais�: mane signifiant ��crini�re (d'un lion, d'un cheval)�� et grow (��pousser, grossir..." "Fait pousser les cheveux" Fortifiant "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/5/52/Potion_Capillours.jpg/revision/latest?cb=20151125144009&path-prefix=fr" "D�butant")
        (�lixir_C�r�bral_de_Baruffio "�lixir C�r�bral de Baruffio" "L'�lixir C�r�bral de Baruffio (��angl.��Baruffio's Brain Elixir�) est une potion destin�e � augmenter la concentration et l'agilit� mentale et � diminuer le besoin de sommeil. Eddie Carmichael fait du march� noir avec une bouteille d'�lixir C�r�bral de Baruffio qu'il essaie de vendre � des..." "Stimule la concentration" Fortifiant "Liquide" "Baruffio" "Harry Potter et l'Ordre du Ph�nix" "https://static.wikia.nocookie.net/harrypotter/images/7/79/%C3%89lixir_C%C3%A9r%C3%A9bral_de_Baruffio.jpg/revision/latest/scale-to-width-down/306?cb=20170418161019&path-prefix=fr" "Avanc�")
        (Breuvage_de_champignon_mortel "Breuvage de champignon mortel" "Le breuvage de champignon mortel (��angl.��Death-Cap Draught�) est un poison probablement fait � partir de calice de la mort." "Poison" Poison "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/e/e9/Philtre_du_Calice_de_la_Mort.jpg/revision/latest?cb=20151125185503&path-prefix=fr" "Interm�diaire")
        (Baume_de_chiendent_�toil� "Baume de chiendent �toil�" "La baume de chiendent �toil� (��angl.��Star Grass Salve�) est un baume vraisemblablement fait � partir de chiendent �toil�." "Soigne" Soin "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/a/a7/Baume_de_chiendent_%C3%A9toil%C3%A9.jpg/revision/latest?cb=20151123214755&path-prefix=fr" "Interm�diaire")
        (Cirage_�_cornes_revigorant "Cirage � cornes revigorant" "Le cirage � cornes revigorant (��angl.��Healthy Horn Polish�) est une potion soignante pour les cornes de cr�atures magiques. Il est particuli�rement efficace pour les cornes d'�ruptif, de Grapcorne, de Re'em et de T�bo. Norbert Dragonneau en poss�de dans sa valise." "Soigne" Soin "Liquide" "nan" "Les Animaux fantastiques (film)" "https://static.wikia.nocookie.net/harrypotter/images/3/36/Cirage_%C3%A0_cornes_revigorant.jpg/revision/latest?cb=20161114164255&path-prefix=fr" "Interm�diaire")
        (Philtre_de_Confusion "Philtre de Confusion" "Le philtre de Confusion (��angl.��Confusing Concoction ou Confusing Draught�) est une potion qui incite � des conduites imp�tueuses et t�m�raires, tout comme le philtre d'Embrouille. Les �l�ves de troisi�me ann�e doivent pr�parer pour leur �preuve de potions un philtre d'Embrouille. Harry Potter..." "Incite � des conduites imp�tueuses et t�m�raires" Contr�le-mental "Liquide" "nan" "Harry Potter et le prisonnier d'Azkaban" "nan" "D�butant")
        (Potion_crache_flammes "Potion crache-flammes" "La potion crache-flammes (��angl.��Fire-Breathing Potion�) est une potion dangereuse qui peut faire cracher du feu � un individu. Rubeus Hagrid demande au cadet de Jacob de l'aider � concocter cette potion pour lib�rer son chien des Filets du Diable. Quand le cadet de Jacob demande � Severus..." "Fait cracher des flammes" Pouvoir quelconque "Liquide" "nan" "Harry Potter : Secret � Poudlard" "https://static.wikia.nocookie.net/harrypotter/images/f/fa/Potion_de_Souffle_de_Feu_2.png/revision/latest?cb=20180506080315&path-prefix=fr" "D�butant")
        (Philtre_D�gonflant "Philtre D�gonflant" "Le philtre D�gonflant (��angl.��Deflating Draught�) est une potion qui sert d'antidote � la potion d'Enflure. Harry Potter a fait exploser un p�tard du Dr Flibuste dans le chaudron de Gregory Goyle qui contenait de la potion d'Enflure. Hermione Granger profite de la diversion pour sortir de la..." "Antidote � enflure" Antidote "Liquide" "nan" "Harry Potter et la Chambre des Secrets" "nan" "Avanc�")
        (Goutte_d�sopilante "Goutte d�sopilante" "La goutte d�sopilante (��angl.��Alihotsy Draught�) est une potion qui provoque l'hyst�rie." "Rend hyst�rique" Hallucinog�ne "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/c/c4/Goutte_d%C3%A9sopilante.png/revision/latest?cb=20151123203503&path-prefix=fr" "D�butant")
        (Essence_de_dictame "Essence de dictame" "L'essence de dictame (��angl.��essence of dittany�) est une potion qui permet de soigner les plaies. Il ne suffit que de quelques gouttes pour que la plaie se referme, comme si elle datait de plusieurs jours, laissant place � une peau neuve. Lorsqu'elle agit, une fum�e verd�tre s'�l�ve. Hermione..." "Soigne" Soin "Liquide" "nan" "Harry Potter et les Reliques de la Mort" "https://static.wikia.nocookie.net/harrypotter/images/6/61/Essence_de_dictame.jpg/revision/latest?cb=20180424174607&path-prefix=fr" "D�butant")
        (Doxycide "Doxycide" "Le Doxycide est une potion de couleur noire qui s'applique avec un pulv�risateur. Il sert � �liminer les Doxys qui peuvent peupler les maisons. Il les paralyse temporairement, ce qui permet aux sorciers de s'en d�barrasser sans risquer de se faire mordre. Mettre cinq mesures de Bandimon dans le..." "Paralyse les Doxys" Contr�le-mental "Liquide" "Zygmunt Budge" "Harry Potter et l'Ordre du Ph�nix" "https://static.wikia.nocookie.net/harrypotter/images/8/8c/Doxycide_Pottermore.png/revision/latest?cb=20150215121357&path-prefix=fr" "D�butant")
        (Poison_de_dragon "Poison de dragon" "Le poison de dragon (��angl.��Dragon Poison�) est un poison probablement fait � partir de parties de dragon." "Poison" Poison "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/5/5c/Poison_Dragon.jpg/revision/latest?cb=20151113152858&path-prefix=fr" "Avanc�")
        (Dragonfortant "Dragonfortant" "Le Dragonfortant (��angl.��Dragon Tonic�) est une potion m�dicinale pour dragons. En 1992, d'apr�s le jeu Harry Potter � l'�cole des sorciers sur PS1, Hagrid concocte du Dragonfortant qu'il donne � son dragon Norbert qui ne se sent pas bien." "Soigne les dragons" Soin "Liquide" "nan" "Harry Potter � l'�cole des sorciers (jeu)" "nan" "Avanc�")
        (Efface_Boutons_dix_secondes_garanties "Efface-Boutons dix secondes garanties" "L'Efface-Boutons dix secondes garanties (��angl.��Guaranted Ten-Second Pimple Vanisher�) est une potion vendue chez Weasley, Farces pour sorciers fac�tieux. Chez Weasley, Farces pour sorciers fac�tieux, Ginny essaye de d�tourner l'attention de ses fr�res Fred et George qui lui posent des..." "Soin du visage" Soin "Liquide" "nan" "Harry Potter et le Prince de Sang-M�l�" "https://static.wikia.nocookie.net/harrypotter/images/d/de/Efface-Boutons_dix_secondes_garanties.jpg/revision/latest?cb=20160427153603&path-prefix=fr" "Interm�diaire")
        (Philtre_d_Embrouille "Philtre d'Embrouille" "Le philtre d'Embrouille (��angl.��Befuddlement Draught�) est une potion qui incite � des conduites imp�tueuses et t�m�raires, tout comme le philtre de Confusion. Dans un chaudron rempli d'eau et sur le feu�: Ajouter du cranson officinal Ajouter de la liv�che Ajouter de l'achill�e sternutatoire..." "Incite � des conduites imp�tueuses et t�m�raires" Contr�le-mental "Liquide" "nan" "Harry Potter et l'Ordre du Ph�nix" "https://static.wikia.nocookie.net/harrypotter/images/d/de/Philtre_d%27Embrouille.jpg/revision/latest?cb=20151201180656&path-prefix=fr" "Interm�diaire")
        (Potion_d_Enflure "Potion d'Enflure" "La potion d'Enflure (��angl.��Swelling Solution�) est une potion qui fait enfler la personne vis�e. Ajouter 2 mesures d'orties s�ch�es dans le mortier. Ajouter 3 yeux de poisson dans le mortier. �craser avec le pilon jusqu'� l'obtention d'une poudre moyenne � fine. Ajouter 2 mesures du m�lange..." "Fait enfler" Affaiblissant "Liquide" "nan" "Harry Potter et la Chambre des Secrets" "https://static.wikia.nocookie.net/harrypotter/images/1/10/Potion_d%27Enflure.jpg/revision/latest?cb=20120403163238&path-prefix=fr" "D�butant")
        (Engrais "Engrais" "L'engrais (��angl.��fertiliser�), que l'on appelle aussi fertilisant, est une potion assurant une meilleure croissance aux plantes. L'engrais est souvent utilis� en botanique pour assurer une meilleure croissance aux plantes. Une fois pr�par�, si l'engrais est m�lang� � de la bouse de dragon �..." "Fertilise" Jardin "Liquide" "nan" "Harry Potter et la Chambre des Secrets" "https://static.wikia.nocookie.net/harrypotter/images/5/5c/Engrais_2.jpg/revision/latest/scale-to-width-down/350?cb=20170430201707&path-prefix=fr" "Interm�diaire")
        (�lixir_�ternel "�lixir �ternel" "L'�lixir �ternel (��angl.��Everlasting Elixir�) est une potion trait�e dans le Manuel avanc� de pr�paration des potions et �tudi�e en sixi�me ann�e en cours de potions � Poudlard. Harry Potter �tudie � la biblioth�que de Poudlard avec Hermione Granger. Il prend des notes sur les �lixirs �ternels..." "Rend �ternel les objets" Fortifiant "Liquide" "nan" "Harry Potter et le Prince de Sang-M�l�" "nan" "Avanc�")
        (�lixir_d_Euphorie "�lixir d'Euphorie" "L'�lixir d'Euphorie (��angl.��Elixir to Induce Euphoria�) est une potion qui met le buveur de bonne humeur. Les effets secondaires qui consistent � donner un peu trop envie de chanter et de tordre le nez d'autrui peuvent �tre att�nu�s en ajoutant de la menthe. Dans un chaudron rempli d'eau et..." "Rend de bonne humeur" Fortifiant "Liquide" "nan" "Harry Potter et le Prince de Sang-M�l�" "https://static.wikia.nocookie.net/harrypotter/images/4/40/%C3%89lixir_d%27Euphorie.jpg/revision/latest/scale-to-width-down/350?cb=20151204190227&path-prefix=fr" "Interm�diaire")
        (Everklena "Everklena" "Everklena est une potion sous forme de vaporisateur invent�e par Erica Stainwright. Vendue dans les ann�es 1950, cette potion pr�tendait �tre un nettoyant efficace, mais son inventrice connut la honte lorsque l'on d�couvrit qu'elle apportait crasse et moisissures." "Salit" Outil "Liquide" "Erica Stainwright" "Site officiel de J.K. Rowling" "https://static.wikia.nocookie.net/harrypotter/images/f/fd/Everklena.jpg/revision/latest?cb=20160330195650&path-prefix=fr" "Interm�diaire")
        (Potion_explosive "Potion explosive" "La potion explosive (��angl.��Exploding Potion�) est une potion rare et tr�s instable. Si elle est manipul�e sans soin, elle peut exploser � tout moment." "Explose" Effet externe "Liquide" "nan" "Harry Potter et les Reliques de la Mort : 1�re partie (jeu)" "https://static.wikia.nocookie.net/harrypotter/images/b/ba/Potion_explosive.jpg/revision/latest?cb=20161013160319&path-prefix=fr" "Avanc�")
        (Potion_exstimulo "Potion exstimulo" "La potion exstimulo (��angl.��Exstimulo Potion�) est une potion magique qui permet d'am�liorer les incantations dans les traces et les d�fis de sorciers. La Potion exstimulo renforc�e et la Potion exstimulo puissante sont des variantes significativement plus puissante de cette potion. Cette..." "Am�liore les incantations dans les traces et les d�fis de sorciers" Fortifiant "Liquide" "nan" "Harry Potter: Wizards Unite" "https://static.wikia.nocookie.net/harrypotter/images/0/05/Potion_exstimulo.jpg/revision/latest/scale-to-width-down/350?cb=20190804123135&path-prefix=fr" "D�butant")
        (Vapeurs_de_fatigue "Vapeurs de fatigue" "Les vapeurs de fatigue (��angl.��Fatiguing Fusion�) est une potion qui �puise celui qui la boit. Le simple fait d'en inhaler les vapeurs est suffisant pour provoquer la fatigue." "Fatigue" Affaiblissant "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/7/79/Vapeurs_de_fatigue.jpg/revision/latest?cb=20151125152017&path-prefix=fr" "Interm�diaire")
        (Felix_Felicis "Felix Felicis" "Felix Felicis, aussi appel� chance liquide, est une potion qui procure temporairement au buveur une chance exceptionnelle. Elle fut invent�e au seizi�me si�cle par le sorcier Zygmunt Budge. Le Felix Felicis est une potion tr�s difficile � pr�parer. Il faut pr�voir six mois pour la pr�parer. Il..." "Rend chanceux" Chance "Liquide" "Zygmunt Budge" "Harry Potter et le Prince de Sang-M�l�" "https://static.wikia.nocookie.net/harrypotter/images/7/7a/Felix_Felicis_Pottermore.jpg/revision/latest?cb=20160225133503&path-prefix=fr" "Avanc�")
        (Potion_des_flammes_noires "Potion des flammes noires" "La potion des flammes noires (��angl.��Black Fire Potion�), aussi appel�e potion de protection contre le feu (��angl.��Fire Protection Potion�) ou potion de glace (��angl.��Ice Potion�) est une potion qui permet � celui qui la boit de passer au travers d'un brasier obscur sans se br�ler. Severus..." "Prot�ge d'un brasier obscur" Fortifiant "Liquide" "nan" "Harry Potter � l'�cole des sorciers" "https://static.wikia.nocookie.net/harrypotter/images/6/64/Potion_des_flammes_noires.jpg/revision/latest?cb=20151124111854&path-prefix=fr" "Avanc�")
        (Potion_des_flammes_violettes "Potion des flammes violettes" "La potion des flammes violettes est une potion qui permet � celui qui la boit de passer au travers de flammes violettes sans se br�ler. Severus Rogue pr�pare cette potion pour pouvoir passer les flammes violettes qui font partie des protections de la Pierre philosophale. Dans la nuit du 4 au 5..." "Prot�ge des flammes violettes" Fortifiant "Liquide" "nan" "Harry Potter � l'�cole des sorciers" "https://static.wikia.nocookie.net/harrypotter/images/a/a5/Potion_des_flammes_violettes.jpg/revision/latest?cb=20151124130908&path-prefix=fr" "Avanc�")
        (Solution_de_Force "Solution de Force" "La solution de Force (��angl.��Strengthening Solution�) est une potion qui augmente probablement la force de celui qui la boit. Deux jours sont n�cessaires pour pr�parer une potion de Force efficace.[r�f.�n�cessaire] Les �l�ves de cinqui�me ann�e pr�parent une solution de Force en cours de..." "Augmente la force" Fortifiant "Liquide" "nan" "Harry Potter et l'Ordre du Ph�nix" "nan" "Interm�diaire")
        (Potion_fortifiante "Potion fortifiante" "La potion fortifiante (��angl.��Girding Potion�) est une potion redonnant des forces � celui qui la boit. � Poudlard, cette potion est enseign�e aux �l�ves de troisi�me ann�e. Dans un chaudron rempli d'eau et sur le feu�: Ajouter une aile de f�e pour que la potion devienne verte. Chauffer..." "Augmente la force" Fortifiant "Liquide" "nan" "Harry Potter et le prisonnier d'Azkaban (jeu)" "https://static.wikia.nocookie.net/harrypotter/images/b/be/Potion_fortifiante.jpg/revision/latest/scale-to-width-down/350?cb=20170430122816&path-prefix=fr" "Interm�diaire")
        (Potions_�_base_de_fromage "Potions � base de fromage" "Des potions � base de fromage (��angl.��Cheese-Based Potions�) sont, comme leur nom l'indique, des potions dont l'ingr�dient principal est le fromage." "Nourrit" Fortifiant "Liquide" "nan" "Site officiel de J.K. Rowling" "nan" "D�butant")
        (Potion_fungiface "Potion fungiface" "La potion fungiface (��angl.��Fungiface Potion�) est une potion qui fait pousser des champignons sur le visage de la personne ou de la cr�ature qui la boit." "Fait pousser des champignons sur le visage" Poison "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/b/bc/Potion_fungiface.jpg/revision/latest?cb=20151124164901&path-prefix=fr" "D�butant")
        (Rem�de_contre_les_furoncles "Rem�de contre les furoncles" "Le rem�de contre les furoncles (��angl.��Cure for Boils�) est, comme son nom l'indique, une potion qui permet de soigner les furoncles. Elle annule �galement les effets du sortil�ge de Furonculose. Ajouter 6 crochets de serpent dans le mortier. �craser � l'aide du pilon pour obtenir une poudre..." "Soigne les furoncles" Soin "Liquide" "nan" "Harry Potter � l'�cole des sorciers" "https://static.wikia.nocookie.net/harrypotter/images/b/b0/Rem%C3%A8de_contre_les_furoncles.png/revision/latest?cb=20170227113722&path-prefix=fr" "D�butant")
        (Gaz_�trangleur "Gaz �trangleur" "Le Gaz �trangleur (��angl.��Garrotting Gas�) est une potion qui r�pand un nuage de gaz faisant s'�vanouir toute personne se trouvant dans son rayon d'action. Fred et George Weasley pr�voient de l�cher du Gaz �trangleur dans Poudlard avant de s'enfuir de l'�cole, mais finissent par abandonner..." "Provoque un �vanouissement" Hallucinog�ne "Liquide" "nan" "Harry Potter et l'Ordre du Ph�nix" "https://static.wikia.nocookie.net/harrypotter/images/2/26/Gaz_%C3%89trangleur.jpg/revision/latest?cb=20161013160318&path-prefix=fr" "D�butant")
        (Potion_de_Haine "Potion de Haine" "La Potion de Haine (��angl.��Hate Potion�) est une potion qui r�v�le les pires d�fauts et habitudes d'une personne vis�e aux yeux du buveur. D'apr�s The Daily Prophet newsletters, au cours des ann�es 1990, la Gazette du sorcier conseille cette potion aux sorci�res et sorciers qui voudraient se..." "R�v�le les d�fauts" Contr�le-mental "Liquide" "nan" "The Daily Prophet newsletters" "nan" "D�butant")
        (Potion_d_haleine_de_chien "Potion d'haleine de chien" "La potion d'haleine de chien (��angl.��Dogbreath Potion�) est un breuvage magique qui donne au buveur un souffle de feu temporaire." "Provoque un souffle de feu" Pouvoir quelconque "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/0/04/Potion_d%27haleine_de_chien.jpg/revision/latest?cb=20120404190127&path-prefix=fr" "Interm�diaire")
        (Herbicide "Herbicide" "L'Herbicide est une potion qui est utilis�e pour tuer ou ab�mer les plantes. La recette est pr�sente dans le livre Potions magiques d'Arsenius Beaulitron. Ajouter quatre �chines de poisson-diable dans le mortier �craser � l'aide du pilon pour obtenir une poudre grossi�re Ajouter deux mesures de..." "D�truit les plantes" Poison "Liquide" "nan" "Harry Potter � l'�cole des sorciers (jeu)" "https://static.wikia.nocookie.net/harrypotter/images/d/d0/Herbicide.png/revision/latest?cb=20120415122720&path-prefix=fr" "D�butant")
        (Potion_�_H�risser_les_Cheveux "Potion � H�risser les Cheveux" "La potion � H�risser les Cheveux (��angl.��Hair-Raising Potion�), parfois appel�e potion pour la pousse des cheveux, est une potion qui fait dresser les cheveux sur la t�te. Severus Rogue donne un devoir de potions aux �l�ves de deuxi�me ann�e qui concerne la potion � H�risser les Cheveux. La..." "Fait dresser les cheveux sur la t�te" Pouvoir quelconque "Liquide" "nan" "Harry Potter et la Chambre des Secrets" "https://static.wikia.nocookie.net/harrypotter/images/3/3b/Hair-Raising_Potion.jpg/revision/latest?cb=20120403162645&path-prefix=fr" "Interm�diaire")
        (Potion_d_Hilarit� "Potion d'Hilarit�" "La potion d'Hilarit� provoque une incontr�lable hilarit�. Cette potion requiert une grande finesse. Mal pr�par�e, les r�sultats peuvent varier d'une folie hyst�rique � une profonde et inconsolable m�lancolie." "Rend hilare" Affaiblissant "Liquide" "nan" "Wonderbook : Le Livre des Potions" "nan" "Interm�diaire")        (D�coction_Hoqueteuse "D�coction Hoqueteuse" "Malefoy rangeait d�j� ses affaires, la mine grincheuse. Slughorn avait qualifi� sa d�coction Hoqueteuse de simplement passable.Cours de potions La d�coction Hoqueteuse (��angl.��Hiccoughing Solution�) est une potion qui provoque probablement le hoquet. Le jour du permis de transplanage, seuls..." "Provoque le hoquet" Affaiblissant "Liquide" "nan" "Harry Potter et le Prince de Sang-M�l�" "https://static.wikia.nocookie.net/harrypotter/images/4/4f/D%C3%A9coction_Hoqueteuse.png/revision/latest?cb=20150718132306&path-prefix=fr" "Interm�diaire")
        (Infusion_infecte "Infusion infecte" "L'infusion infecte (��angl.��Foul Brew�) est un m�lange de plusieurs ingr�dients de potions naus�abonds. Drago Malefoy semble �tre en mesure de la pr�parer. Parmi ses ingr�dients figurent des champignons et des plumes." "Poison" Poison "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/8/8e/Infusion_infecte.jpg/revision/latest?cb=20120404161936&path-prefix=fr" "Interm�diaire")
        (Potion_jaillissante "Potion jaillissante" "La potion jaillissante (��angl.��Erumpent Potion�) est une potion aux effets vraisemblablement dangereux." "Dangereux" Effet externe "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/4/4e/Potion_jaillissante.jpg/revision/latest?cb=20151115113133&path-prefix=fr" "D�butant")
        (Baume_de_lewisie_br�lante "Baume de lewisie br�lante" "Le baume de lewisie br�lante (��angl.��Burning Bitterroot Balm�) est probablement un m�dicament magique." "Soigne" Soin "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/7/74/Baume_de_lewisie_br%C3%BBlante.jpg/revision/latest?cb=20151128140146&path-prefix=fr" "Avanc�")
        (Potion_capillaire_Lissenplis "Potion capillaire Lissenplis" "La potion capillaire Lissenplis (��angl.��Sleekeazy's Hair Potion�) est une potion qui permet de rendre les cheveux lisses et soyeux. Selon Harry Potter, le coffret ultime, la potion Lissenplis est fabriqu�e en Chine. Selon le m�me coffret, cette potion est cr��e � base de Gomas Barbadensis, de..." "Permet de rendre les cheveux lisses et soyeux" Fortifiant "Liquide" "Fleamont Potter" "Harry Potter et la Coupe de Feu" "https://static.wikia.nocookie.net/harrypotter/images/0/02/Potion_capillaire_Lissenplis.jpg/revision/latest/scale-to-width-down/350?cb=20200406155832&path-prefix=fr" "Interm�diaire")
        (�lixir_de_longue_vie "�lixir de longue vie" "L'�lixir de longue vie (��angl.��Elixir of Life�) est un breuvage magique qui prolonge l'existence de celui qui le boit. L'�lixir de longue vie est fabriqu� � partir de la Pierre philosophale. Il prolonge l'existence mais il doit �tre pris r�guli�rement pour maintenir son immortalit�. Selon Les..." "Prolonge l'existence" Fortifiant "Liquide" "nan" "Harry Potter � l'�cole des sorciers" "https://static.wikia.nocookie.net/harrypotter/images/0/00/%C3%89lixir_de_longue_vie.jpg/revision/latest?cb=20160529093403&path-prefix=fr" "Avanc�")
        (M�lange_malveillant "M�lange malveillant" "Le m�lange malveillant (��angl.��Malevolent Mixture�) est un breuvage magique qui agit vraisemblablement comme un poison ou a d'autres effets n�fastes." "Poison" Poison "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/f/f6/M%C3%A9lange_malveillant.jpg/revision/latest?cb=20151119201657&path-prefix=fr" "D�butant")
        (Philtre_r�g�n�rateur_�_la_mandragore "Philtre r�g�n�rateur � la mandragore" "Le philtre r�g�n�rateur � la mandragore (��angl.��Mandrake Restorative Draught�) est une potion qui est fabriqu�e � partir de mandragores ayant atteint leur maturit� et qui permet de gu�rir les personnes qui ont �t� p�trifi�es. En 1992, Gilderoy Lockhart souhaite se charger de la pr�paration de..." "Gu�rit ceux qui ont �t� p�trifi�s" Antidote "Liquide" "nan" "Harry Potter et la Chambre des Secrets" "nan" "Avanc�")
        (M�lange_de_bouse_de_dragon_et_d_engrais "M�lange de bouse de dragon et d'engrais" "Le m�lange de bouse de dragon et d'engrais (��angl.��mixture of dragon-dung and fertilisers�) est une exp�rience de Neville Londubat. Ce m�lange a pour effet de provoquer la croissance d'une plante � une tr�s grande vitesse, mais tout en lui donnant des proportions alarmantes. Vers le d�but de..." "Fertilise" Jardin "Liquide" "Neville Londubat" "Harry Potter et l'Ordre du Ph�nix (jeu)" "nan" "D�butant")
        (Potion_de_M�moire "Potion de M�moire" "La potion de M�moire (��angl.��Memory Potion�) est une potion qui permet � celui qui l'absorbe d'am�liorer l'acc�s � ses souvenirs. D'apr�s Harry Potter�: Secret � Poudlard, les ingr�dients n�cessaires pour concocter la potion de M�moire sont des feuilles d'alihotsy, de la menthe poivr�e, de la..." "Stimule la m�moire" Fortifiant "Liquide" "nan" "Les Animaux fantastiques" "https://static.wikia.nocookie.net/harrypotter/images/9/9b/Potion_de_M%C3%A9moire.jpg/revision/latest?cb=20161027184224&path-prefix=fr" "Avanc�")
        (Potion_de_Mort "Potion de Mort" "La potion de Mort (��angl.��Death potion�) est un liquide magique utilis� dans les Cellules de la mort du MACUSA. Selon le film Les Animaux fantastiques, la potion de Mort est un liquide noir et bouillonnant. Le MACUSA s'en sert dans ses cellules de condamnation � mort. Les bourreaux extraient..." "Mortel" Poison "Liquide" "nan" "Les Animaux fantastiques (film)" "https://static.wikia.nocookie.net/harrypotter/images/7/7a/Potion_de_Mort.gif/revision/latest/scale-to-width-down/350?cb=20200826152624&path-prefix=fr" "Interm�diaire")
        (Philtre_de_Mort_Vivante "Philtre de Mort Vivante" "Le philtre de Mort Vivante (��angl.��Draught of Living Death�) est une potion magique de somnif�re �galement appel�e la Goutte du Mort vivant. L'antidote est la potion Wiggenweld. � mi-chemin de la pr�paration, on obtient un liquide satin�, couleur cassis. Puis la couleur devient lilas. La..." "Somnif�re" Hallucinog�ne "Liquide" "nan" "Harry Potter � l'�cole des sorciers" "https://static.wikia.nocookie.net/harrypotter/images/2/28/Philtre_de_Mort_Vivante_2.jpg/revision/latest/scale-to-width-down/350?cb=20151205163649&path-prefix=fr" "Interm�diaire")
        (M�lange_de_poudre_d_argent_et_de_dictame "M�lange de poudre d'argent et de dictame" "Un m�lange de poudre d'argent et de dictame (��angl.��mixture of powdered silver and dittany�) permet de sceller une morsure de loup-garou, �vitant ainsi que la victime ne saigne � mort. Toutefois, certains sorciers auraient pr�f�r� mourir de leurs blessures plut�t que de vivre en �tant atteint..." "Scelle une morsure de loup-garou" Soin "Liquide" "nan" "Pottermore" "nan" "D�butant")        (Nettoie_Tout_magique_de_la_M�re_Grattesec "Nettoie-Tout magique de la M�re Grattesec" "Le Nettoie-Tout magique de la M�re Grattesec (��angl.��Mrs. Skower's All-Purpose Magical Mess Remover�), �galement connue sous le nom de Magicprop de madame Prop (��angl.��Mrs Skower's Magical Mess Remover�), est une potion de nettoyage. D'apr�s le jeu Harry Potter et la Chambre des Secrets sur..." "Enl�ve les taches" Outil "Liquide" "nan" "Harry Potter et la Chambre des Secrets" "https://static.wikia.nocookie.net/harrypotter/images/e/e2/Solution_de_Nettoyage.jpg/revision/latest?cb=20161029112616&path-prefix=fr" "Interm�diaire")
        (Potion_de_nettoyage "Potion de nettoyage" "La potion de nettoyage (��angl.��cleaning potion�) est le nom g�n�rique de potions qui permettent de faire le m�nage. Nettoie-Tout magique de la m�re Grattesec D�tergents magiques contenant des s�cr�tions dilu�es de Bandimon Fausses potions de nettoyage d'Erica Stainwright" "Nettoie" Outil "Liquide" "Erica Stainwright" "Site officiel de J.K. Rowling" "nan" "Interm�diaire")
        (Potion_Oculus "Potion Oculus" "La potion Oculus (��angl.��Oculus Potion�) est un breuvage magique qui am�liore la vision de celui qui le boit. Cette potion permet �galement de neutraliser les effets du sortil�ge de Conjonctivite. Dans un chaudron rempli d'eau et sur le feu�: Secouer une fiole d'infusion d'armoise puis ajouter..." "Am�liore la vision" Fortifiant "Liquide" "nan" "Harry Potter et le Prince de Sang-M�l� (jeu)" "https://static.wikia.nocookie.net/harrypotter/images/0/04/Potion_Oculus.gif/revision/latest/scale-to-width-down/350?cb=20160226133445&path-prefix=fr" "D�butant")
        (Potion_de_l_Oeil_Vif "Potion de l'�il Vif" "La potion de l'�il Vif (��angl.��Wideye Potion�), aussi appel�e potion d'�veil (��angl.��Awakening Potion�), est une potion qui emp�che le sommeil ou fait reprendre connaissance apr�s une s�dation ou un coup sur la t�te. La recette est pr�sente dans le livre Potions magiques d'Arsenius..." "R�veil" Antidote "Liquide" "nan" "Pottermore" "https://static.wikia.nocookie.net/harrypotter/images/d/d3/Potion_de_l%27%C5%92il_Vif.png/revision/latest?cb=20120415115223&path-prefix=fr" "D�butant")
        (Philtre_de_Paix "Philtre de Paix" "Le philtre de Paix (��angl.��Draught of Peace�) est une potion utilis�e pour calmer l'anxi�t� et apaiser l'agitation de la personne qui la boit. Le philtre de Paix est une potion qui est souvent demand�e aux �preuves de BUSE de potions. Dans un chaudron rempli d'eau et sur le feu�: Ajouter de la..." "Calmant" Fortifiant "Liquide" "nan" "Harry Potter et l'Ordre du Ph�nix" "https://static.wikia.nocookie.net/harrypotter/images/4/40/Philtre_de_Paix.jpg/revision/latest/scale-to-width-down/350?cb=20170430131229&path-prefix=fr" "Interm�diaire")
        (Panac�e "Panac�e" "La panac�e (��angl.��panacea�), �galement connue en tant que perfect medecine (��trad.�approx.��m�decine parfaite�), est une potion cens�e �tre un rem�de universel. D'apr�s un trait� d'alchimie mentionn� dans un livre qui apparait dans le film Harry Potter � l'�cole des sorciers, les..." "("Gu�rir toutes les maladies" "Rendre immortel" )" Soin "Liquide" "Alchimistes" "Harry Potter � l'�cole des sorciers (film)" "nan" "Avanc�")
        (Baume_de_p�querettes "Baume de p�querettes" "La baume de p�querettes (��angl.��Bruisewort Balm�) est un baume vraisemblablement fait � partir de p�querettes." "Soigne" Soin "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/d/d3/Baume_de_p%C3%A2querettes.jpg/revision/latest?cb=20151117120756&path-prefix=fr" "D�butant")
        (Potion_Pare_feu "Potion Pare-feu" "La potion Pare-feu (��angl.��Fire Protection Potion�) est une potion qui a pour effet de prot�ger le buveur du feu. Couper le Champignon explosif. Ajouter le Champignon explosif coup�. Remuer dans le sens des aiguilles d'une montre jusqu'� ce que la potion devienne bleue. Ajouter le Sang de..." "Prot�ge du feu" Fortifiant "Liquide" "nan" "LEGO Harry Potter : Ann�es 1 � 4" "https://static.wikia.nocookie.net/harrypotter/images/6/60/Potion_Pare-feu.jpg/revision/latest?cb=20151124135647&path-prefix=fr" "D�butant")
        (Poison_pernicieux "Poison pernicieux" "Le poison pernicieux (��angl.��Noxious Potion�) est un breuvage magique qui peut nuire au buveur. Cette potion produit des nuages ?de fum�e verte une fois finie." "Poison" Poison "Fumant" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/2/2e/Poison_pernicieux.jpg/revision/latest?cb=20151124214000&path-prefix=fr" "Interm�diaire")
        (Pimentine "Pimentine" "La Pimentine (��angl.��Pepperup Potion�) est une potion qui permet de soigner le rhume, mais a pour effet secondaire de faire fumer les oreilles pendant plusieurs heures. Bien que la Pimentine ait �t� invent�e par Glover Hipworth, c'est Linfred de Stinchcombe qui en serait � l'origine. Madame..." "Soigne le rhume" Soin "Liquide" "Glover Hipworth" "Harry Potter et la Chambre des Secrets" "https://static.wikia.nocookie.net/harrypotter/images/b/b9/Pepperup_Potion.png/revision/latest?cb=20120511172802&path-prefix=fr" "D�butant")
        (Antidote_aux_Poisons_Courants "Antidote aux Poisons Courants" "L'antidote aux Poisons Courants (��angl.��Antidote to Common Poisons�) est une potion qui annule l'effet des poisons. Ajouter 1 b�zoard dans le mortier. �craser � l'aide du pilon pour obtenir une poudre tr�s fine. Ajouter 4 mesures du B�zoard �cras� dans le chaudron. Ajouter 2 mesures de..." "Antidote aux poisons" Antidote "Liquide" "nan" "Harry Potter � l'�cole des sorciers (jeu)" "https://static.wikia.nocookie.net/harrypotter/images/7/7c/Antidote_aux_Poisons_Courants.png/revision/latest?cb=20220504083421&path-prefix=fr" "Interm�diaire")
        (Antidote_des_poisons_rares "Antidote des poisons rares" "L'antidote des poisons rares (��angl.��Antidote to Uncommon Poisons�) est une potion permettant de stopper les effets de certains poisons peu communs. Severus Rogue demande � ses �l�ves de r�unir les ingr�dients n�cessaires � la pr�paration de cette potion pour leur prochain cours, durant lequel..." "Antidote aux poisons rares" Antidote "Liquide" "nan" "Harry Potter et le prisonnier d'Azkaban (jeu)" "https://static.wikia.nocookie.net/harrypotter/images/2/2e/Antidote_des_poisons_rares.png/revision/latest?cb=20231021124143&path-prefix=fr" "D�butant")
        (Polynectar "Polynectar" "Le Polynectar (��angl.��Polyjuice Potion�) est une potion qui permet � un sorcier de prendre temporairement l'apparence d'un autre �tre humain. La potion est r�serv�e aux m�tamorphoses humaines�: un humain ne peut pas l'utiliser pour devenir un animal et un demi-g�ant ne peut pas l'utiliser pour..." "Permet � un humain de prendre l'apparence d'un autre humain durant une heure" M�tamorphose "Pateux" "nan" "Harry Potter et la Chambre des Secrets" "https://static.wikia.nocookie.net/harrypotter/images/c/c5/B2C12M2.jpg/revision/latest/scale-to-width-down/350?cb=20170906162203&path-prefix=fr" "Avanc�")
        (Pommade_pommadante_Gr�goire "Pommade pommadante Gr�goire" "La pommade pommadante Gr�goire (��angl.��Gregory's Unctuous Unction�) est une potion invent�e par Gregory le Hautain qui persuade celui qui l'utilise que celui qui la lui a offerte est son meilleur ami. Gregory le Hautain aurait utilis� cette pommade pour infiltrer la cour du Roi Richard et..." "Persuade celui qui l'utilise que celui qui la lui a offerte est son meilleur ami" Contr�le-mental "Liquide" "Gregory le Hautain" "Harry Potter et la Chambre des Secrets (jeu)" "https://static.wikia.nocookie.net/harrypotter/images/6/6c/Pommade_pommadante_Gr%C3%A9goire_-_HPSP.png/revision/latest?cb=20230901071129&path-prefix=fr" "Interm�diaire")
        (Potion_de_caut�risation "Potion de caut�risation" "Elle nettoya la coupure avec une compresse imbib�e d'un liquide violet qui fumait et piquait la peau, puis elle lui toucha l��paule avec sa baguette magique et il sentit que sa blessure gu�rissait instantan�ment.Madame Pomfresh soignant la blessure de Harry Potter La potion de caut�risation..." "Antiseptique" Soin "Fumant" "nan" "Harry Potter et la Coupe de Feu" "https://static.wikia.nocookie.net/harrypotter/images/c/c8/Potion_de_caut%C3%A9risation_%28HPSP%29.png/revision/latest/scale-to-width-down/350?cb=20230902180512&path-prefix=fr" "Avanc�")
        (Potion_de_Regermination "Potion de Regermination" "La Potion de Regermination (��angl.��Regerminating Potion�) est une potion pour plante cr��e par le c�l�bre botaniste Tilden Toots. D'apr�s le site officiel de J.K. Rowling, Tilden Toots annonce dans son �mission radiophonique Toots, Shoots 'n' Roots avoir re�u une lettre de Georgina Smyth qui..." "Redonne � une plante morte la capacit� de germer" Jardin "Liquide" "Tilden Toots" "Site officiel de J.K. Rowling" "https://static.wikia.nocookie.net/harrypotter/images/f/ff/Regerminating_Potion.jpg/revision/latest?cb=20170901150554&path-prefix=fr" "Avanc�")
        (Potion_de_Rejutage "Potion de Rejutage" "La Potion de Rejutage (��angl.��Rejuicing Potion�) est une potion pour plante cr��e par le c�l�bre botaniste Tilden Toots. D'apr�s le site officiel de J.K. Rowling, Tilden Toots annonce dans son �mission radiophonique Toots, Shoots 'n' Roots avoir re�u une lettre de Georgina Smyth qui n'aurait..." "Redonne � une plante morte la capacit� de produire du jus" Jardin "Liquide" "Tilden Toots" "Site officiel de J.K. Rowling" "https://static.wikia.nocookie.net/harrypotter/images/7/79/Rejuicing_Potion.jpg/revision/latest?cb=20170901150555&path-prefix=fr" "Interm�diaire")
        (Potion_Potiron "Potion Potiron" "La potion Potiron (��angl.��Pompion Potion�) est une potion qui a pour effet d'enfermer temporairement la t�te du buveur dans une citrouille. �craser le Pipaillon de nuit. Ajouter le Pipaillon de nuit �cras� dans le chaudron. Remuer dans le sens des aiguilles d'une montre jusqu'� ce que la..." "Enferme la t�te dans une citrouille" Affaiblissant "Liquide" "nan" "LEGO Harry Potter : Ann�es 1 � 4" "https://static.wikia.nocookie.net/harrypotter/images/0/09/Potion_Potiron.gif/revision/latest?cb=20150423112503&path-prefix=fr" "D�butant")
        (Poussos "Poussos" "Le Poussos (��angl.��Skele-Gro�) est une potion servant � r�parer ou � faire repousser les os. Madame Pomfresh donne du Poussos � Harry Potter apr�s l'intervention de Gilderoy Lockhart, qui a fait dispara�tre accidentellement les os de ce dernier. Fleur Delacour donne du Poussos � Gripsec, apr�s..." "Reconstitue les os" Soin "Liquide" "Linfred de Stinchcombe" "Harry Potter et la Chambre des Secrets" "https://static.wikia.nocookie.net/harrypotter/images/8/8b/Poussos.png/revision/latest?cb=20131006133747&path-prefix=fr" "Interm�diaire")
        (Potion_�_priser "Potion � priser" "La potion � priser (��angl.��Snuffling Potion�) est une potion qui provoque un reniflement incontr�lable." "Reniflement incontr�lable" Contr�le-mental "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/9/9f/Potion_%C3%A0_priser.jpg/revision/latest?cb=20151124140245&path-prefix=fr" "Interm�diaire")
        (Produit_contre_les_limaces_mangeuses_de_chair "Produit contre les limaces mangeuses de chair" "Le produit contre les limaces mangeuses de chair (��angl.��Flesh-Eating Slug Repellent�) est un pesticide visant � neutraliser ces cr�atures. Le produit contre les limaces mangeuses de chair est un r�pulsif qui peut s'acheter dans l'All�e des Embrumes. Dans le jeu Harry Potter�: Secret �..." "Neutralise les limaces mangeuses de chair" Poison "Liquide" "nan" "Harry Potter et la Chambre des Secrets" "https://static.wikia.nocookie.net/harrypotter/images/d/df/Produit_contre_les_limaces_mangeuses_de_chair.png/revision/latest?cb=20131006162559&path-prefix=fr" "Interm�diaire")
        (Potion_de_puissance "Potion de puissance" "La potion de puissance (��angl.��Strength Potion�) est une potion augmentant consid�rablement la force de celui qui la boit. Severus Rogue apprend cette potion � des �l�ves de premi�re ann�e. Solution de Force" "Augmente la force" Fortifiant "Liquide" "nan" "LEGO Harry Potter : Ann�es 1 � 4" "https://static.wikia.nocookie.net/harrypotter/images/1/14/Potion_de_puissance.gif/revision/latest/scale-to-width-down/350?cb=20160302143923&path-prefix=fr" "Avanc�")
        (Poison_de_raisin_de_couleuvre "Poison de raisin de couleuvre" "Le poison de raisin de couleuvre (��angl.��Moonseed Poison�) est un poison vraisemblablement fait � partir de raisin de couleuvre." "Poison" Poison "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/5/5a/Poison_de_raisin_de_couleuvre.JPG/revision/latest?cb=20150322191137&path-prefix=fr" "Interm�diaire")
        (Potion_de_Ratatinage "Potion de Ratatinage" "La potion de Ratatinage ou solution de Ratatinage (��angl.��Shrinking Solution ou Shrinking Potion�) est une potion magique qui permet de faire r�tr�cir les objets. Elle permet �galement d'inverser le processus de vieillissement. Si on commet une erreur durant la pr�paration, la potion devient..." "("Fait r�tr�cir les objets" "Inverse le processus de vieillissement" )" M�tamorphose "Liquide" "nan" "Harry Potter et le prisonnier d'Azkaban" "https://static.wikia.nocookie.net/harrypotter/images/d/d0/Potion_de_Ratatinage.jpg/revision/latest/scale-to-width-down/350?cb=20170430122816&path-prefix=fr" "D�butant")
        (Ratconfortant "Ratconfortant" "Le Ratconfortant (��angl.��rat tonic�) est un tonique pour les rats. Il est notamment vendu � la M�nagerie magique dans un flacon rouge. La vendeuse de la M�nagerie magique propose du Ratconfortant pour tonifier Cro�tard qui n'est pas en forme. Alors que Ron Weasley s'appr�te � payer le..." "Tonifie les rats" Fortifiant "Liquide" "nan" "Harry Potter et le prisonnier d'Azkaban" "https://static.wikia.nocookie.net/harrypotter/images/e/ee/Ratconfortant.png/revision/latest?cb=20131006133848&path-prefix=fr" "D�butant")
        (Potion_de_r�g�n�ration "Potion de r�g�n�ration" "La potion de r�g�n�ration est une potion de magie noire permettant aux sorciers ayant perdu leur corps de le retrouver. La pr�paration de la potion de r�g�n�ration requiert un chaudron suffisamment grand pour qu'un homme adulte puisse s'y asseoir. La premi�re �tape consiste � y verser de l'eau..." "Restaure le corps d'un sorcier qui en est priv�" Soin "Liquide" "nan" "Harry Potter et la Coupe de Feu" "https://static.wikia.nocookie.net/harrypotter/images/5/5d/Potion_de_r%C3%A9g%C3%A9n%C3%A9ration.png/revision/latest?cb=20150204145804&path-prefix=fr" "Avanc�")
        (Potion_de_R�g�n�ration_sanguine "Potion de R�g�n�ration sanguine" "La potion de R�g�n�ration sanguine (��angl.��Blood-Replenishing Potion�) est une potion qui aide � reconstituer le sang. Elle est notamment utilis�e par les gu�risseurs de l'h�pital Ste Mangouste. Arthur Weasley doit prendre une potion de R�g�n�ration sanguine toutes les heures apr�s avoir �t�..." "Reconstitue le sang" Soin "Liquide" "nan" "Harry Potter et l'Ordre du Ph�nix" "https://static.wikia.nocookie.net/harrypotter/images/5/50/Potion_de_R%C3%A9g%C3%A9n%C3%A9ration_sanguine.jpg/revision/latest?cb=20150204190509&path-prefix=fr" "Avanc�")
        (Remontant_de_Pomfresh "Remontant de Pomfresh" "Le remontant de Pomfresh (��angl.��Pomfrey's Pick-Me-Up�) est un tonique magique pour tonifier l'organisme apr�s des dommages physiques mineurs." "Tonifie l'organisme" Fortifiant "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/1/1b/Le_remontant_de_Pomfresh.jpg/revision/latest?cb=20120404200014&path-prefix=fr" "Avanc�")
        (Rem�de_�_la_dragoncelle "Rem�de � la dragoncelle" "Le rem�de � la dragoncelle a �t� invent� par Gunhilda de Gorsemoor entre 1556 et 1639." "Gu�rit la dragoncelle" Soin "Liquide" "Gunhilda de Gorsemoor" "Harry Potter � l'�cole des sorciers (jeu)" "https://static.wikia.nocookie.net/harrypotter/images/c/c4/Rem%C3%A8de_%C3%A0_la_dragoncelle.jpg/revision/latest?cb=20160531163256&path-prefix=fr" "Interm�diaire")
        (Potion_de_restitution "Potion de restitution" "La potion de restitution (��angl.��Restoration Potion�) est une potion qui annule les effets d'un sortil�ge sur un objet ou une cr�ature." "Annule les effets d'un sortil�ge" Antidote "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/3/35/Potion_de_Restauration.jpg/revision/latest?cb=20151125152947&path-prefix=fr" "Avanc�")
        (Philtre_Revigorant "Philtre Revigorant" "Le philtre Revigorant (��angl.��Invigoration Draught�) est une potion qui redonne des forces � son buveur. Le philtre Revigorant fait l'objet d'un cours pratique de potions. � la fin du cours, Harry va rendre sa potion au professeur Rogue en estimant l'avoir correctement r�ussie, mais le..." "Revigore" Fortifiant "Liquide" "nan" "Harry Potter et l'Ordre du Ph�nix" "https://static.wikia.nocookie.net/harrypotter/images/8/8d/Philtre_Revigorant.png/revision/latest?cb=20160519142435&path-prefix=fr" "Interm�diaire")
        (Poison_sang_dragon "Poison sang-dragon" "Le poison sang-dragon (��angl.��Bloodroot Poison�) est un poison vraisemblablement fait � partir de sang-dragon." "Poison" Poison "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/1/13/Poison_sang-dragon.jpg/revision/latest?cb=20151116202615&path-prefix=fr" "Interm�diaire")
        (Potion_pour_soins_capillaires_de_Lockhart "Potion pour soins capillaires de Lockhart" "La potion pour soins capillaires de Lockhart (��angl.��Lockhart's Hair-Care Potion�) est une potion qui garantie � son utilisateur des cheveux boucl�s et �tincelants. Malgr� son efficacit� incontestable, ce produit n'a jamais �t� lanc� sur le march� car les ingr�dients qui entrent dans sa..." "Rend les cheveux boucl�s et �tincelants" Fortifiant "Liquide" "Gilderoy Lockhart" "Harry Potter et la Chambre des Secrets" "https://static.wikia.nocookie.net/harrypotter/images/c/ca/Potions_pour_soins_capillaires_de_Lockhart.jpg/revision/latest?cb=20170702104236&path-prefix=fr" "Avanc�")
        (Goutte_du_sommeil "Goutte du sommeil" "La goutte du sommeil (��angl.��Drowsiness Draught�) est une potion qui a pour effet d'induire une somnolence menant jusqu'� l'endormissement. Ses vapeurs, d'un rose violac�, suffisent � faire sombrer une personne dans le sommeil. Dans le jeu Harry Potter�: Secret � Poudlard, Penny Haywood et le..." "Endort" Hallucinog�ne "Fumant" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/3/38/Goutte_du_sommeil.jpg/revision/latest/scale-to-width-down/350?cb=20151117214445&path-prefix=fr" "D�butant")
        (Potion_pour_un_sommeil_sans_r�ves "Potion pour un sommeil sans r�ves" "Une potion pour un sommeil sans r�ves (��angl.��Potion for Dreamless Sleep�) est une potion permettant de s'endormir. Madame Pomfresh donne une potion pour un sommeil sans r�ves � Harry. Somnif�re" "Plonge dans un sommeil sans r�ves" Hallucinog�ne "Liquide" "nan" "Harry Potter et la Coupe de Feu" "https://static.wikia.nocookie.net/harrypotter/images/b/be/Potion_pour_un_sommeil_sans_r%C3%AAves.png/revision/latest?cb=20141104143714&path-prefix=fr" "Interm�diaire")
        (Somnif�re "Somnif�re" "Le Somnif�re ou potion de Sommeil (��angl.��Sleeping Draught�) est une potion plongeant dans un sommeil temporaire. Ajouter quatre brins de lavande dans le mortier Ajouter deux mesures de l'Ingr�dient Standard dans le mortier �craser � l'aide du pilon pour obtenir une p�te cr�meuse Ajouter deux..." "Sommeil temporaire" Hallucinog�ne "Liquide" "nan" "Harry Potter et la Chambre des Secrets" "https://static.wikia.nocookie.net/harrypotter/images/5/56/Somnif%C3%A8re.png/revision/latest?cb=20120419132050&path-prefix=fr" "D�butant")
        (Tolipan_Blemish_Blitzer "Tolipan Blemish Blitzer" "Tolipan Blemish Blitzer (��trad.�approx.��effaceur de boutons Tolipan�) est une cr�me anti-boutons pour le visage. Selon l'�tiquette du produit cr�� pour les films Harry Potter, le Tolipan Blemish Blitzer a �t� cr�� en 1907. Dans le film Harry Potter et l'Ordre du Ph�nix, en 1996, La Gazette du..." "Soin du visage" Soin "Pateux" "nan" "Harry Potter et l'Ordre du Ph�nix (film)" "https://static.wikia.nocookie.net/harrypotter/images/0/0a/Tolipan_Blemish_Blitzer.png/revision/latest/scale-to-width-down/350?cb=20220423175806&path-prefix=fr" "Interm�diaire")
        (Potion_contre_la_toux "Potion contre la toux" "La potion contre la toux (��angl.��cough potion�) est une potion m�dicinale qui soigne la toux. L'un des services propos�s par Weasley, Farces pour sorciers fac�tieux est d'envoyer des philtres d'amour � Poudlard en les faisant passer pour de la potion contre la toux. Dans la biblioth�que de..." "Soigne la toux" Soin "Liquide" "nan" "Harry Potter et le Prince de Sang-M�l�" "nan" "Interm�diaire")
        (Potion_Trismus "Potion Trismus" "La potion Trismus (��angl.��Jawbind Potion�) est une potion qui contracte les muscles de la m�choire du buveur." "Provoque un trismus" Contr�le-mental "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/3/3e/Potion_Trismus.jpg/revision/latest?cb=20151116153225&path-prefix=fr" "Interm�diaire")
        (Goutte_de_trompette_des_anges "Goutte de trompette des anges" "La goutte de trompette des anges (��angl.��Angel's Trumpet Draught�) est un poison vraisemblablement fait � partir de trompettes des anges." "Poison" Poison "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/1/1f/Philtre_de_la_Trompette_des_Anges.jpg/revision/latest?cb=20151111131709&path-prefix=fr" "Avanc�")
        (Potion_Tue_loup "Potion Tue-loup" "La potion Tue-loup (��angl.��Wolfsbane Potion�) permet de soulager les sympt�mes les plus terribles de ceux qui deviennent des loups-garous � la pleine lune. Elle porte le nom de Tue-loup, une plante qui entre dans sa composition. La potion Tue-loup est une invention r�cente de Damocl�s, l'oncle..." "Soulage les sympt�mes des loups-garous" Soin "Liquide" "Damocl�s" "Harry Potter et le prisonnier d'Azkaban" "https://static.wikia.nocookie.net/harrypotter/images/1/10/HP3-chapitre08.jpg/revision/latest?cb=20110903193746&path-prefix=fr" "Avanc�")
        (Veritaserum "Veritaserum" "Le Veritaserum est un puissant s�rum de v�rit�, une potion qui provoque chez celui qui l'absorbe une incapacit� � mentir. L'usage du Veritaserum est soumis � une r�glementation du minist�re de la Magie. La potion doit m�rir pendant un cycle complet de la lune et environ un mois est donc..." "Provoque une incapacit� � mentir" Contr�le-mental "Liquide" "nan" "Harry Potter et la Coupe de Feu" "https://static.wikia.nocookie.net/harrypotter/images/d/d9/Veritaserum.jpg/revision/latest/scale-to-width-down/350?cb=20160518104211&path-prefix=fr" "Avanc�")
        (S�rum_de_v�rit� "S�rum de v�rit�" "Le s�rum de v�rit� (��angl.��Truth Serum ou Truth Potion�) est le nom g�n�rique de potions qui provoquent chez celui qui l'absorbe une incapacit� � mentir. Le plus puissant s�rum de v�rit� est le Veritaserum. S�rum de v�rit� sur Wikip�dia (version fran�aise)" "Provoque une incapacit� � mentir" Contr�le-mental "Liquide" "nan" "Les Animaux fantastiques" "nan" "Avanc�")
        (Potion_vert_�meraude "Potion vert �meraude" "La potion vert �meraude (��angl.��Emerald Potion�) est un poison phosphorescent con�u pour ne pas pouvoir �tre bu jusqu'� la fin. La potion affaiblit celui qui la boit et semble lui donner des cauchemars, voire des hallucinations. Lord Voldemort utilise cette potion pour prot�ger l'un de ses..." "("Affaiblit" "Provoque des cauchemars et des hallucinations" "Assoiffe" )" Affaiblissant "Liquide" "Tom Jedusor" "Harry Potter et le Prince de Sang-M�l�" "https://static.wikia.nocookie.net/harrypotter/images/9/96/Potion_vert_%C3%A9meraude_livre.jpg/revision/latest?cb=20151017183231&path-prefix=fr" "Avanc�")
        (Potion_de_vertige "Potion de vertige" "La potion de vertige (��angl.��Dizziness Draught�) est une potion qui provoque des vertiges." "Provoque des vertiges" Hallucinog�ne "Liquide" "nan" "Harry Potter Trading Card Game" "https://static.wikia.nocookie.net/harrypotter/images/e/e8/Philtre_de_Vertige.jpg/revision/latest?cb=20151125194747&path-prefix=fr" "Interm�diaire")
        (Potion_de_Vieillissement "Potion de Vieillissement" "La potion de Vieillissement (��angl.��Ageing Potion�) est une potion, qui comme son nom l'indique, permet de devenir plus �g�. Plus la quantit� de potion aval�e est grande, plus le buveur vieilli. En 1994, Albus Dumbledore a trac� une Limite d'�ge autour de la Coupe de Feu afin que seuls les..." "Permet de se rendre plus �g�" M�tamorphose "Liquide" "nan" "Harry Potter et la Coupe de Feu" "https://static.wikia.nocookie.net/harrypotter/images/f/f5/Potion_de_Vieillissement_Pottermore.png/revision/latest?cb=20150309151042&path-prefix=fr" "Avanc�")
        (Potion_Volubilis "Potion Volubilis" "La potion Volubilis est un breuvage qui permet de restaurer le volume de la voix d'une personne et neutralise �galement les effets du sortil�ge de Mutisme. Dans un chaudron rempli d'eau et sur le feu�: Chauffer jusqu'� ce que la potion devienne rouge. Chauffer jusqu'� ce que la potion devienne..." "Restaure le volume de la voix" Antidote "Liquide" "nan" "Harry Potter et le Prince de Sang-M�l� (jeu)" "https://static.wikia.nocookie.net/harrypotter/images/5/5b/Potion_Volubilis.jpg/revision/latest/scale-to-width-down/350?cb=20170430122817&path-prefix=fr" "Interm�diaire")
        (Potion_Wiggenweld "Potion Wiggenweld" "La potion Wiggenweld (��angl.��Wiggenweld Potion�) est une potion qui soigne les blessures et restaure un peu la sant� de la personne qui la boit. Elle permet �galement de neutraliser les effets d'une potion de sommeil et est un antidote � la Goutte du Mort vivant. Dans un chaudron rempli d'eau..." "Neutralise les effets des somnif�res" Antidote "Liquide" "nan" "Harry Potter � l'�cole des sorciers (jeu)" "https://static.wikia.nocookie.net/harrypotter/images/e/e0/Potion_Wiggenweld_2.jpg/revision/latest/scale-to-width-down/350?cb=20170430201708&path-prefix=fr" "Interm�diaire")
        )
)


;////////////////////////////////////////////////////////////////////////////////
;////////////////////FONCTION AUXILIAIRES MOTEUR D INFERENCE ////////////////////
;////////////////////////////////////////////////////////////////////////////////

;Imprime la phrase associ�e � la r�gle
(defun nom-regle(regle)
  (caddr regle)
)

;renvoie la liste des premisses de la r�gle
(defun lister-premisses(regle)
  (cadr regle)
)

;renvoie la liste des conclusions de la r�gle
(defun lister-conclusions(regle)
  (car regle)
)


;prend en argument une premisse sous forme (variable valeur operateur)
;renvoie true si le premisse donn�e est vrai et nil sinon
;Les operateurs valides sont <, >, =, <=, >=, !=

(defun verifier-premisse (premisse bdf)
  (let ((variable (cadr (assoc (car premisse) bdf)))
        (valeur (cadr premisse))
        (operateur (caddr premisse))) ;recuperation de l'operateur
    (cond ;V�rification du type d'operateur et calcule associ�s
      ((and (string-equal operateur '>) (> variable valeur)) t)
      ((and (string-equal operateur '<) (< variable valeur)) t)
      ((and (string-equal operateur '>=) (>= variable valeur)) t)
      ((and (string-equal operateur '<=) (<= variable valeur)) t)
      ((and (string-equal operateur '=) (eq variable valeur)) t)
      ((and (string-equal operateur '!=) (not (eq variable valeur))) t)
    )
  )
)


;prend en argument une r�gle et la base de faits 
;renvoie True si la r�gle est v�rifi� et false sinon

(defun verifier-regle(regle bdf)
  (let ((liste_premisses (lister-premisses regle)))
    (if (null liste_premisses)
        T
        (if (verifier-premisse (car liste_premisses) bdf) ;On applique "verifier-premisse" sur chaque premisses de la r�gle par une m�thode r�cursive 
            (progn
              (setq regle (cons (car regle) (append (list (cdr liste_premisses)) (cddr regle))))
              (verifier-regle regle bdf)) ;appel r�cursif de la fonction
        )
    )
  )
)

;prend en argument une r�gle et la base de fait
;permet d'appliquer la conclusion d'une r�gle � la base de faits en modifiants les variables concern�es 

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
            (t (format t "Erreur : Op�rateur non pris en charge ou Division par 0 !~%"))
          )
       )
    )
  )
) 



;////////////////////////////////////////////////////////////
;//////////////////// MOTEUR D INFERENCE ////////////////////
;////////////////////////////////////////////////////////////

;Moteur d'inf�rence caract�ris� en chainage avant et parcour en profondeur 
;Prend en argument un but, une base de fait, une base de r�gles et de fa�on optionnelle une liste de toutes les r�gles v�rifi�s 

(defun moteur_chainage_avant (but bdf bdr &optional (regles_verifie))
  (let (resultat_recursivite) ;Pour verifier le nombre de regles verifi� lors de la boucle
    (dolist (regle bdr) ; Pour toutes les regles de la base de regle
      (if (not (eq (cadr (assoc 'but bdf)) but))
        (if (verifier-regle regle bdf) ;Si la regle n'a pas d�j� �t� verifi�, on cherche � v�rifier la r�gle
          (progn
            (setq regles_verifie (append regles_verifie (list (nom-regle regle)))) ;On ajoute la regle � la liste des regles verifi�
            (setq bdf (appliquer-conclusion regle bdf)) ;on applique la conclusion � la base de fait 
            (setq resultat_recursivite (moteur_chainage_avant but bdf bdr regles_verifie)) ;appel recursif de la fonction, avec la liste des r�gles d�j� v�rifi�s
            (setq bdf (car resultat_recursivite))
            (setq regles_verifie (cadr resultat_recursivite))
          )
        )
        (return-from moteur_chainage_avant (list bdf regles_verifie))  ; Si le but est atteint, on arrete le programme avec return-from et on renvoie un tuple (bdf regles_verifie)
      )
    )
    (list bdf regles_verifie) ; le programme se termine et on renvoie un tuple (bdf regles-verifie) qui sera r�utiliser par les p�res dans l'arbre des appels r�cursifs  
  ) 
)


; ///////////////////////////////////////////////////////////////////////////////////////
; ////////////////////// FONCTION ANNEXE DE LA FONCTION PRINCIPALE //////////////////////
; ///////////////////////////////////////////////////////////////////////////////////////

; renvoie la ligne de la bdd_ing d'indice index
;(recup-line-ingredient 3 *bdd_menu*)
;=>(3 ACT�E_EN_�PI "Act�e en �pi")

(defun recup-line-ingredient (index bdd_ing)
  (assoc index bdd_ing)
)


; renvoie le nom  de l'ingredient en donnant une ligne "indice variable nom_ingredient "
; Ex : (recup-nom-ingredient '(3 ACT�E_EN_�PI "Act�e en �pi"))
; => "Act�e en �pi"

(defun recup-nom-ingredient (ing)
  (car (last ing ))
)


; renvoie la variable  de l'ingredient en donnant une ligne "indice variable nom_ingredient "
;EX : (recup-var-ingredient '(3 ACT�E_EN_�PI "Act�e en �pi"))
; => "Act�e_en_�pi

(defun recup-var-ingredient (ing)
  (cadr ing)
  )


;renvoie la ligne associ� � l'ingr�dient donn� en argument et pr�sent dans la bdd_ing
;(recup_line_avec_var_ingredient 'Act�e_en_�pi *bdd_menu*)
;(ACT�E_EN_�PI "Act�e en �pi" . 3)

(defun recup_line_avec_var_ingredient (var_ing bdd_ing)
  (assoc var_ing (mapcar (lambda (l) (append (cdr l) (car l))) bdd_ing))
  )


;prend en argument la bdd_ing 
;affiche la bdd_ing et permet le choix des ingr�dients 

(defun afficher-menu-ingredients (bdd_ing)
  (format t "Choisissez un ingr�dient parmi ceux ci-dessous � l'aide de leurs index:~%")
  (dolist (ing bdd_ing)
    (format t "~a- ~a ~%" (car ing) (recup-nom-ingredient ing))
  )
)

;prend en argument la bdd_ing et une liste d'ingr�dients 
;permet la r�cupareration des differents ingr�dients saisi par l'utilisateur 

(defun recap_ingredient (ingredients bdd_ing)
  (format t "Pour l'instant, vous avez s�lectionn� les ingredients :~%")
  (dolist (ing ingredients)
   (if (= (cadr ing)  1)
       (format t "~a~%" (recup-nom-ingredient (recup_line_avec_var_ingredient (car ing) bdd_ing)))
    )
  )  
  (format t "~%")
)

;attention, cette fonction peut entra�ner des bugs apr�s avoir tenter d'�valuer avec ctrl+e alors
;que read �tait en cours d'execution. Pour y remedier il faut relancer allegro cl
;premet le choix et la recuperaion de touts les ingr�dients saisi par l'utilisateur de deux fa�ons differentes : 
; 1� soit par une saisie des ingr�dient un par un
; 2� soit par l'execution de cette fonction avec une liste d'ingr�dients d�j� donn� en argument sous la forme d'un liste de nombres entre 1 et 158

(defun choisir-ingredient (bdd_ing &optional liste_ingredients)
  (let (ingredients lecture)
    (dolist (ing bdd_ing)
      (push (list (cadr ing) 0) ingredients)
    )
    (if (or (null liste_ingredients) (not (listp liste_ingredients))) ;on test si une liste d'ingredient a �t� pass�e en param�tre, si c'est le cas on l'utilise et on affiche pas de menu pour leur choix
      (progn 
        (afficher-menu-ingredients bdd_ing)
        (format t "Une fois que vous avez fini d'entrer les ingr�dients, entrez 0 pour continuer :~%")
        (while (or (not (integerp (setq lecture (read)))) (not (= lecture 0)))
          (if (integerp lecture)
              (progn 
                (if (and (> lecture 0) (<= lecture (length ingredients)))
                    (progn
                      (if (= (cadr (assoc (recup-var-ingredient (recup-line-ingredient lecture bdd_ing)) ingredients)) 1)
                        (format t "Vous avez d�j� choisi cet ingredient veuillez continuer.~%")
                        (progn
                          (setf (cadr (assoc (recup-var-ingredient (recup-line-ingredient lecture bdd_ing)) ingredients)) 1)
                          (format t "Vous avez choisi l'ingredient : ~a~%" (recup-nom-ingredient (recup-line-ingredient lecture bdd_ing)))
                          (recap_ingredient ingredients bdd_ing)
                        )
                    )
                  )
                  (progn
                    (afficher-menu-ingredients bdd_ing)
                    (format t "Entr�e incorrecte. Veuillez choisir un ingr�dient parmi ceux de la liste pr�c�dente ~%")
                  )
                 )
              )
              (format t "Entr�e incorrecte. Veuillez entrer un nombre entier correspondant � l'index de l'ingredient choisi.~%")
          )
          (format t "Une fois que vous avez fini d'entrer les ingr�dients, entrez 0 pour continuer :~%")
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

;cette fonction permet de s�lectionner et renvoyer le couple cl�-valeur d'un param�tre

(defun choix_param�tre (param)
  (let (lecture (lecture_conf 0))
    (format t "Choisissez la valeur du param�tre \"~a\" (0 pour laisser la valeur par d�fault qui est de ~a) :~%" (car param) (cadr param))
    (while (and (not (and (symbolp lecture_conf) (eq lecture_conf 'o))) (or (not (integerp (setq lecture (read)))) (not (= lecture 0))))
      (if (and (integerp lecture) (> lecture 0))
        (progn
          (format t "Vous avez choisi la valeur : ~a, pour le param�tre \"~a\"~%" lecture (car param))
          (format t "Confirmer ? (o/n) :~%")
          (setq lecture_conf (read))
          (if (and (symbolp lecture_conf) (eq lecture_conf 'o))
            (progn
              (setf (cadr param) lecture)
              (format t "Valeur modifi�e avec succ�s !~%")
            )
            (format t "Saisie annul�e. ~%Choisissez la valeur du param�tre \"~a\" (0 pour laisser la valeur par d�fault qui est de ~a) :~%" (car param) (cadr param))
            )
         )
        (format t "Format non support� ou valeur incorrecte...~%Choisissez la valeur du param�tre \"~a\" (entier > 0) (0 pour laisser la valeur par d�fault qui est de ~a) :~%" (car param) (cadr param))
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
;cette fonction initialise les differents param�tres associ�s au comptage des potions cr�es

(defun initialiser_params_potions (bdf)
  (push (list 'nb_potion 0) bdf)
  (push (list 'nb_Fortifiant 0) bdf)
  (push (list 'nb_Hallucinog�ne 0) bdf)
  (push (list 'nb_Poison 0) bdf)
  (push (list 'nb_Contr�le-mental 0) bdf)
  (push (list 'nb_Antidote 0) bdf)
  (push (list 'nb_Affaiblissant 0) bdf)
  (push (list 'nb_Soin 0) bdf)
  (push (list 'nb_Jardin 0) bdf)
)

;///////////////////////////////////////////////////////////////
;///////////////////// FONCTION PRINCIPALE /////////////////////
;///////////////////////////////////////////////////////////////


;prend en argument la base de r�gle, les base de donn�es des ingr�dients et des potions, et une liste d'ingr�dient dans le cas d'une saisie d'ingr�dients automatique 
;cette fonction est la fonction qui sera lanc� par l'utilisateur et s'occupe de coordonner l'initialisation de la base de fait et le lancement du moteur d'inf�rence

(defun fonction-principale (bdr bdd_ing bdd_potion &optional liste_ingredients)
  (let (bdf (but 0) choix result_chainage (niveau 3) (sante 10) (concentration 100))
       (format t "Bienvenu dans le Syst�me expert \"Harry le potionniste\" ! ~%")
       (format t "Pour la petite histoire, pendant les vacances de Noel, comme � son habitude Harry reste � Poudlard tandis que tous~% ses camarades et ses professeurs sont de retour chez eux. Harry s'ennuyant, il rentre par hasard dans le bureau du~% professeur de potions Rogue puis ... BAM ! La porte se ferme violemment et il est impossible de l'ouvrir. Ennuy� de rester bloquer~% ici pendant deux semaines, Harry explore la salle et tombe sur la r�serve d'ingr�dients secrets de Rogue ! Ayant de grosses lacunes~% dans la confection de potions, Harry m�lange des ingredients n'importe comment et go�te ses cr�ations...~% Va t-il survivre � ses exp�riences ou mourir intoxiqu� ?~%")
       (format t "Vous allez choisir � tour de r�le la valeur des variables param�tres de la base de faits (elles seront d�terminantes dans la survie de Harry):~%")
       (setq niveau (choix_param�tre (list (quote niveau) niveau)))
       (setq sante (choix_param�tre (list (quote sante) sante)))
       (setq concentration (choix_param�tre (list (quote concentration) concentration)))
       (setq bdf (choisir-ingredient bdd_ing liste_ingredients))
       (push niveau bdf)
       (push sante bdf)
       (push concentration bdf)
       (format t "Choisissez le but : ~%")
       (format t "1- Excellent : Harry a r�ussi � survivre en faisant plus de 40 potions sans mourir ~%")
       (format t "2- Super : Harry a r�ussi � survivre en faisant plus de 20 potions ~%")
       (format t "3- Moyen : Harry a r�ussi � survivre en faisant plus de 10 potions ~%")
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
              (format t "Erreur de s�lection !~%")
          )
       )
       (push (list 'but 'mauvais) bdf)
       (setq bdf (ajouter_potions_bdf bdf bdd_potion))
       (setq bdf (initialiser_params_potions bdf))
       (format t "Lancement du SE...~%")
       (setq result_chainage (moteur_chainage_avant but bdf bdr))
       (format t "Execution du SE termin� avec succ�s !~%") ;Donc que l'execution est termin� 
       (if (null (cadr result_chainage)) ;Si la liste des regles verifi� est vide
          (format t "Aucune regle n'a pu etre verifi� !~%")
          (progn 
            (format t "Les regles v�rifi�es sont : ~%")
            (dolist (regle (cadr result_chainage)) ; On affiche toutes les regles verifi�es
              (format t "~a~%~%" regle) 
            )
          )
        )
        (if (eq but (cadr (assoc 'but (car result_chainage))))
            (format t "Le but '~a' a �t� atteint avec succ�s !~%~%" (cadr (assoc 'but (car result_chainage))))
            (format t "Malheureusement, le but initial '~a' n'a pas �t� atteint !~%A la place, c'est le but '~a' qui la �t�...~%~%" but (cadr (assoc 'but (car result_chainage))))
        )
        (format t "Harry fini son exp�rience avec une sant� de ~a et une concentration de ~a~%Au total Harry a fait ~a potion(s)" (cadr (assoc 'sante (car result_chainage))) (cadr (assoc 'concentration (car result_chainage))) (cadr (assoc 'nb_potion (car result_chainage))))
  )
)


;/////////////////////////////////////////////////////////////////
;///////////////////////// JEUX DE TESTS /////////////////////////
;/////////////////////////////////////////////////////////////////

; Voici differentes fa�ons de faire fonctionner notre syst�me expert. Executer une des fonctions suivantes et suivez les instructions donn�es par le programme.

;fonction principale : Executer cette fonction tel quel
;Les param�tres de la base de fait seront choisi apr�s. 
(fonction-principale *bdr* *bdd_menu* *bdd_potions*)

; //////////////////// Pour gagner du temps ////////////////////
;Ces jeux de tests permetent d'�viter d'entrer �norm�ment d'ingr�dients � la main. Saisie automatique des ingr�dients. 

;Fonction avec tous les ingr�dients r�pertori�s 
;(fonction-principale *bdr* *bdd_menu* *bdd_potions* '(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158))

;D'autres s�l�ction d'ingr�dients
;(fonction-principale *bdr* *bdd_menu* *bdd_potions* '(94 23 56 102 7 85 42 119 30 67 150 12 38 76 5 81 99 62 27 137 50 114 18 73 3 90 125 16 68 9 52 133 79 37 110 69 45 126 14 72 115 41 98 51 88 31 104 60 10 47))
;(fonction-principale *bdr* *bdd_menu* *bdd_potions* '(25 103 54 82 14 67 111 36 79 48 92 7 130 61 98 72 43 5 117 89 23 76 38 145 12 55 93 30 64 19 141 51 85 10 126 59 34 74 99 45 28 134 69 16 120 40 78 107 2 57))
;(fonction-principale *bdr* *bdd_menu* *bdd_potions* '(27 92 14 105 43 76 8 150 62 38 121 4 83 52 113 99 18 64 37 55 126 12 95 70 81 33 147 7 136 59 124 28 145 9 100 2 79 49 132 16 69 131 48 98 5 25 141 72 35 153 85 22 139 117 57 142 51 106 91 44 75 20 134 61 153 10 138 30 89 68 146 115 40 60 77 127 24 87 111 74 3 119))
;(fonction-principale *bdr* *bdd_menu* *bdd_potions* '(107 132 28 109 92 121 130 133))
