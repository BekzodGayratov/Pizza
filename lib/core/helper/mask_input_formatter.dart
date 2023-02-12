import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class MaskInput {
  MaskTextInputFormatter promocodController = MaskTextInputFormatter(
      mask: "########", type: MaskAutoCompletionType.lazy);
  MaskTextInputFormatter phoneController = MaskTextInputFormatter(
      mask: "+998 ## ###-##-##", type: MaskAutoCompletionType.lazy);
}
