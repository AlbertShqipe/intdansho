class ProfesseursController < ApplicationController
  def notreequipe
    @teachers = teachers = [
      { name: "SARKIS GRIGORIAN", position: "Danse Classique", picture: "sarkisPortrait.png" },
      { name: "DENIS LAMAJ", position: "Danse Classique et Barre au Sol", picture: "denisPortrait.png"},
      { name: "GAEL ALAMARGOT", position: "Danse Classique et contemporaine", picture: "gaelPortrait.png"},
      { name: "PETROS CHROKOYAN", position: "Danse Classique et Fitness Danse", picture: "petrosPortrait.png"},
      { name: "NASIM", position: "Breakdance et Hip Hop", picture: "nasim.jpg" },
      { name: "ANAIS GRIGORIAN", position: "Éveil / Initiation", picture: "anaisPortrait.png"},
      { name: "ANNA GRIGORIAN", position: "Danse Classique et Moderne", picture: "anna.jpg"},
      { name: "ALMENDRA", position: "Danse Classique et Barre au Sol", picture: "almendraPortrait.png"},
      { name: "TERESA GRIGORIAN", position: "Danse du Monde", picture: "teresaPortrait.png"},
    ];
  end
end
