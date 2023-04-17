/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

import edu.stanford.nlp.ling.CoreAnnotations;
import edu.stanford.nlp.neural.rnn.RNNCoreAnnotations;
import edu.stanford.nlp.pipeline.Annotation;
import edu.stanford.nlp.pipeline.StanfordCoreNLP;
import edu.stanford.nlp.sentiment.SentimentCoreAnnotations;
import edu.stanford.nlp.sentiment.SentimentCoreAnnotations.SentimentAnnotatedTree;
import edu.stanford.nlp.trees.Tree;
import edu.stanford.nlp.util.CoreMap;
import java.util.Properties;

/**
 * Analisis de sentimientos
 * 
 */
public class AnalisisSentimientos {
  static StanfordCoreNLP pipeline;
  public static void init(){
    Properties props = new Properties();
    props.setProperty("annotators", "tokenize, ssplit, parse, sentiment");
    props.setProperty("tokenize.language", "es");
    props.setProperty("pos.model", "edu/stanford/nlp/models/pos-tagger/spanish/spanish-distsim.tagger");
    props.setProperty("ner.model", "edu/stanford/nlp/models/ner/spanish.ancora.distsim.s512.crf.ser.gz");
    pipeline = new StanfordCoreNLP(props);
  }
  
  public static String estimatingSentiment(String text){
    init();
    int sentimentInt;
    String sentimentName; 
    Annotation annotation = pipeline.process(text);
    for(CoreMap sentence : annotation.get(CoreAnnotations.SentencesAnnotation.class)){
      Tree tree = sentence.get(SentimentAnnotatedTree.class);
      sentimentInt = RNNCoreAnnotations.getPredictedClass(tree); 
      sentimentName = sentence.get(SentimentCoreAnnotations.SentimentClass.class);
      System.out.println(sentimentName + "\t" + sentimentInt + "\t" + sentence);
      return sentimentName;
    }
    return null;
  }
}
