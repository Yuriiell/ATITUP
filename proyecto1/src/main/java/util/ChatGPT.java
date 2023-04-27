
package util;

import java.util.List;
import com.theokanning.openai.OpenAiService;
import com.theokanning.openai.edit.EditChoice;
import com.theokanning.openai.edit.EditRequest;

/**
 *
 * @author HP
 */
public class ChatGPT {
    
    public static String conexion(String pPregunta){
    var service = new OpenAiService("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");
    var request = EditRequest.builder()
            .model("text-davinci-edit-001")
            .input(pPregunta)
            .instruction("Responder pregunta y explicar respuesta")
            .build();
    String respuesta = "";
    service.createEdit(request).getChoices();
    List<EditChoice> choices = service.createEdit(request).getChoices();
    for(EditChoice choice: choices){
      respuesta += choice.toString() + "\n";
    }
    return respuesta;
  }
}
