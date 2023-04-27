/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

import com.darkprograms.speech.translator.GoogleTranslate;

/**
 *
 * @author 
 */
public class Traductor {
  /**
   * Traducir un texto
   * 
   * @param texto  texto a traducir (Spanish)
   * @param idioma idioma al que se traducira
   * @return texto traducido
   */  
public static String traducir(String texto, String idioma){
    try{
      if(idioma.equalsIgnoreCase("español")){
        return GoogleTranslate.translate("es", texto);
      }else if(idioma.equalsIgnoreCase("inglés")){
        return GoogleTranslate.translate("en", texto);
      }else if(idioma.equalsIgnoreCase("alemán")){
        return GoogleTranslate.translate("de", texto);
      }else if(idioma.equalsIgnoreCase("francés")){
        return GoogleTranslate.translate("fr", texto);
      }
    }catch(Exception ex){
      return "Error: " + ex;
    }
    return "null";
  }
}
