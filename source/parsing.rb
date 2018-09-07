require 'nokogiri'

file = File.open('ENEDIS.xml')
document  = Nokogiri::XML(file)

document.root.xpath('Corps_de_fichier_par_PDL').each do |fichier|
  Date_Debut_Consommation = fichier.xpath('Date_Debut_Consommation').text
  Date_Fin_Consommation  = fichier.xpath('Date_Fin_Consommation').text
  Index_Debut_Consommation = fichier.xpath('Index_Debut_Consommation').text
  Index_A_Facturer =fichier.xpath('Index_A_Facturer').text
  Consommation_Cadran = fichier.xpath('Consommation_Cadran').text

  puts "#{Date_Debut_Consommation} - #{Date_Fin_Consommation} - #{Index_Debut_Consommation} - #{Index_A_Facturer} - #{Consommation_Cadran}"
end
