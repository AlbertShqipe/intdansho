class ProfesseursController < ApplicationController
  def notreequipe
    @teachers = teachers = [
      { name: "SARKIS GRIGORIAN", position: "Danse Classique FONDATEUR", picture: "sakoPortrait.png" },
      { name: "DENIS LAMAJ", position: "Danse Classique et Barre au Sol", picture: "denisPortrait.png"},
      { name: "GAEL ALAMARGOT", position: "Danse Classique et Contemporaine", picture: "gaelPortrait.png"},
      { name: "PETROS CHROKOYAN", position: "Danse Classique et Fitness Danse", picture: "petrosPortrait.png"},
      { name: "NASIM", position: "Breakdance et Hip Hop", picture: "nasim.jpg" },
      { name: "ANAIS GRIGORIAN KOTANDJIAN", position: "FONDATRICE", picture: "anaisPortrait1.png"},
      { name: "ANNA GRIGORIAN", position: "Danse Classique et Moderne", picture: "anna.jpg"},
      { name: "ALMENDRA NAVARRO", position: "Danse Classique et Barre au Sol", picture: "almendraPortrait.png"},
      { name: "TERESA GRIGORIAN", position: "Danse du Monde", picture: "theresa.JPG"},
    ];
  end
end
