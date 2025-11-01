La Inteligencia Artificial (IA) es una pieza clave en el trabajo técnico y el aprendizaje continuo. Más que un sustituto, es una herramienta de aumento que potencia tus capacidades. Durante este bootcamp, la usaremos principalmente como una aliada para acelerar tu aprendizaje, pero también te enseñaremos a dar tus primeros pasos para que puedas integrarla en tus propias herramientas y proyectos.

Aprenderás a usarla para entender conceptos complejos, depurar código y automatizar tareas, pero también descubrirás cómo ejecutar modelos de IA directamente en tu ordenador, interactuar con ellos y conectarlos con tu editor de código, como Visual Studio Code.

🧠 ¿Qué es la IA y por qué es tan importante ahora?
La IA no es magia, es tecnología: Antes que nada, es importante entender que la Inteligencia Artificial no es una caja negra mágica ni algo místico. Es un proceso científico y tecnológico creado por personas, con pasos concretos y comprensibles. Detrás de cada IA hay equipos de desarrollo, investigación científica, programación y muchísimo trabajo colaborativo.

¿Cómo se crea una IA? Los pasos básicos:

Recopilar datos (la materia prima): Todo empieza con datos. Muchos datos. Para entrenar una IA que entienda lenguaje, necesitas millones de textos: libros, artículos, conversaciones. Para una IA que reconozca imágenes, necesitas millones de fotos etiquetadas. Los datos son el "combustible" de la IA.

Diseñar el modelo (la arquitectura): Se diseña una estructura matemática y computacional llamada "modelo". Piensa en esto como escribir un programa muy sofisticado que define cómo la IA va a procesar la información. Hay diferentes tipos de modelos según lo que quieras que haga la IA (entender texto, reconocer imágenes, traducir idiomas, etc.). Muchos de estos modelos se basan en software libre y código abierto compartido por la comunidad científica.

Entrenar el modelo (el aprendizaje): Aquí es donde ocurre la "magia" tecnológica. El modelo analiza todos esos datos una y otra vez, buscando patrones y relaciones. Por ejemplo, aprende que la palabra "perro" suele aparecer cerca de palabras como "ladrar", "mascota" o "collar". Este proceso requiere hardware potente (procesadores y tarjetas gráficas especializadas) trabajando durante días o incluso semanas, ejecutando algoritmos complejos de aprendizaje automático.

Ajustar y mejorar (la optimización): Después del primer entrenamiento, los equipos técnicos prueban el modelo, encuentran errores, ajustan los parámetros del código y lo vuelven a entrenar. Es un proceso iterativo de experimentación científica y programación, similar a como tú practicas para mejorar una habilidad.

Desplegar y usar (ponerlo en marcha): Finalmente, cuando el modelo funciona bien, se empaqueta como software que tú puedes usar: un chatbot, un asistente de código, una herramienta de traducción, etc. Muchos modelos están disponibles como proyectos de código abierto que puedes descargar, ejecutar en tu propio ordenador e incluso modificar.

En resumen: La IA es el resultado de un proceso científico y tecnológico muy concreto, que combina investigación, matemáticas, programación, algoritmos y recursos de computación. Es software avanzado construido sobre principios de estadística y aprendizaje automático, desarrollado muchas veces de forma colaborativa por la comunidad global de desarrollo de software libre.

En este bootcamp, nos centraremos en la IA Generativa, que es un tipo de inteligencia artificial capaz de crear contenido nuevo (texto, código, imágenes) a partir de la información con la que ha sido entrenada. Todas las herramientas que veremos son ejemplos de este tipo de IA.

🛠️ ¿Qué herramientas y talleres exploraremos?
A lo largo del bootcamp, te familiarizarás con varias herramientas y conceptos a través de talleres prácticos diseñados para que aprendas a usarlos en tu día a día:

Uso de NotebookLM: Aprenderás a usar esta herramienta de Google para "conversar" con tus documentos. Podrás subir los apuntes del curso, artículos o PDFs y hacerle preguntas directamente, obteniendo resúmenes, explicaciones y guías de estudio basadas exclusivamente en tus materiales.

Chatbots como aliados de aprendizaje (ChatGPT, Gemini o Claude): Veremos cómo usar los chatbots de forma efectiva para resolver dudas, generar ejemplos de código, explicar conceptos complejos en términos sencillos o ayudarte a depurar un error.

Modelos locales con Ollama y LMStudio: Descubrirás cómo instalar y ejecutar modelos de IA potentes directamente en tu ordenador. Esto te dará más control, privacidad y te permitirá experimentar sin depender de una conexión a internet o de servicios de pago.

Interacción con modelos vía API: Daremos un paso más allá y aprenderás a "llamar" a estos modelos locales desde tu propio código en Python. Esto te abrirá la puerta a crear tus propias aplicaciones y automatizaciones que integren inteligencia artificial.

Integración en editores de código (VSCode): Exploraremos extensiones como GitHub Copilot, que actúan como un asistente de programación directamente en tu editor, sugiriendo líneas de código o funciones enteras mientras escribes.

💡 Aplicaciones prácticas que veremos en el curso
La IA no es solo teoría; la usaremos para tareas muy concretas que te harán la vida más fácil:

Aprender más rápido: Usa NotebookLM para crear guías de estudio personalizadas a partir de los apuntes o pide a un chatbot que te explique la diferencia entre una lista y una tupla con una analogía.

Escribir y depurar código: ¿No sabes cómo empezar una función? Pídele a la IA un primer borrador. ¿Tienes un error que no entiendes? Pega el mensaje de error y pídele que te lo explique y te sugiera una solución.

Mejorar la calidad de tu código: Pídele a la IA que revise tu código y te sugiera mejoras para que sea más limpio y eficiente.

Documentar tus proyectos: Genera automáticamente explicaciones de tu código o crea el borrador del archivo README.md para tus proyectos.

Crear tus propias herramientas con IA: Daremos los primeros pasos para que puedas conectar una IA a tus propios programas, por ejemplo, para crear un pequeño script que analice sentimiento o genere resúmenes de texto.

🎯 ¿Cómo funciona la IA cuando la usas? De la predicción a la respuesta
Ahora que sabes cómo se crea una IA, es importante entender qué ocurre cuando tú la usas. Cuando escribes una pregunta (un "prompt") a un chatbot como ChatGPT, lo que parece una conversación natural es en realidad un proceso de predicción estadística muy sofisticado.

El proceso en tiempo real:

Recibes tu pregunta: El modelo toma tu texto y lo convierte en números que puede procesar (este proceso se llama "tokenización").

Predice palabra por palabra: Basándose en todos los patrones que aprendió durante su entrenamiento, el modelo predice cuál es la siguiente palabra más probable. Después predice la siguiente, y la siguiente, construyendo la respuesta palabra a palabra, en tiempo real.

No busca, no memoriza: La IA no está buscando la respuesta en una base de datos ni recordando un texto específico que leyó. Está generando una respuesta nueva basándose en probabilidades y patrones aprendidos.

¿Por qué esto es importante? Porque explica tanto las fortalezas como las debilidades de la IA. Es increíblemente buena prediciendo qué debería venir después según el contexto, por eso puede escribir código coherente, explicar conceptos o mantener una conversación. Pero como solo predice lo que es probable, a veces se equivoca con confianza, inventando información que "suena correcta" pero es falsa. Esto se llama "alucinar".

La clave para usarla bien: Comprender que la IA es una herramienta de predicción, no de verdad absoluta. No "piensa" ni "sabe", simplemente es muy buena encontrando patrones. Tu trabajo es aprovechar esa capacidad mientras verificas y validas sus respuestas con tu propio criterio.

⚠️ Límites actuales (y el valor que solo tú puedes aportar)
La IA es poderosa, pero tiene limitaciones importantes. No "entiende" el mundo como un ser humano, y ahí es donde tu inteligencia es insustituible.

Puede "alucinar" o inventar: A veces, si no sabe una respuesta, la inventa con gran seguridad. Por ejemplo, podría inventarse una función de Python que no existe porque "suena" a que debería existir. Tu trabajo es verificarlo.

No entiende el objetivo final: Puedes pedirle que haga una función para calcular el precio de un producto, y la hará. Pero no sabe que esa función es parte de una tienda online para una ONG. No entiende el "para qué". Esa visión global es tuya.

Amplifica los sesgos de los datos: La IA aprende de los datos de internet, con todos sus prejuicios y estereotipos. Si los datos reflejan un sesgo, la IA lo aprenderá y lo repetirá. Tu criterio ético es fundamental para detectar y corregir esto.

No tiene creatividad genuina ni sentido común: Puede mezclar ideas, pero no tiene una chispa de creatividad original ni el sentido común para saber que una solución, aunque técnicamente correcta, es absurda en un contexto real.

Buenas prácticas éticas y de calidad:

Verifica siempre los resultados, especialmente datos y fragmentos de código.

Cuida los datos: respeta la privacidad y la confidencialidad. No subas información sensible a herramientas online.

Sé transparente: diferencia claramente qué parte de un trabajo ha hecho la IA y qué parte has hecho tú.

Documenta tu proceso: guarda los prompts que usas. Te ayudará a entender por qué la IA te dio una respuesta determinada y a mejorar tus peticiones futuras.

🤝 Nuestra filosofía: colaboración efectiva con la IA
Trataremos a la IA como una compañera de trabajo: la integraremos en el flujo diario, mediremos su impacto y mantendremos siempre buenas prácticas. La adaptabilidad y la ingeniería de prompts (saber "pedirle" bien a la IA) serán competencias clave que te distinguirán en el mercado laboral.

Habilidades que vas a desarrollar:

Formular problemas de manera clara para que la IA pueda ayudarte.

Diseñar y refinar "prompts" (instrucciones) para obtener los mejores resultados.

Evaluar críticamente las respuestas de la IA, identificando errores y "alucinaciones".

Integrar herramientas de IA en tu entorno de desarrollo, como VSCode.

✨ Beneficios que obtendrás como alumna
Mayor eficiencia operativa: dedicarás menos tiempo a tareas mecánicas y más a diseñar y resolver problemas complejos.

Aprendizaje acelerado: podrás pedirle explicaciones sobre conceptos difíciles, ejemplos personalizados y ayuda para depurar código 24/7.

Creatividad aplicada: te aportará nuevas perspectivas para abordar desafíos técnicos y analíticos.

🎯 ¿Qué esperamos de ti?
Curiosidad y espíritu crítico: que experimentes, compares y valides cada resultado que obtengas con ayuda de la IA.

Rigor ético y de calidad: que prestes atención a los sesgos, la privacidad y la transparencia al usar estas herramientas.

Mentalidad de mejora continua: la IA evoluciona muy rápido; aprenderemos juntas a aprender con ella.

📝 En resumen
La IA amplifica tu talento: automatiza lo repetitivo y te libera tiempo para que te concentres en el pensamiento estratégico y la creatividad. Dominar sus fundamentos y aprender a colaborar con ella será un factor diferenciador decisivo en tu carrera, tanto durante el bootcamp como en el futuro.