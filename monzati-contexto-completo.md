# Monzati — Contexto completo del proyecto

Actualizado: 21 de noviembre de 2026

Este documento reúne todo lo importante de Monzati en un solo lugar: qué es, hasta dónde quiere llegar, quiénes son el equipo y qué hace cada uno, las **232 tareas completas** por sprint y por persona, los KPIs, el calendario, la exposición y el estado actual. Sirve para presentar el proyecto, para alimentar a una IA y para que cualquier integrante tenga el panorama completo.

Nombre: el logo y el diseño actual dicen **MONZATI** (con una sola t). Versiones anteriores escribieron «Monzatti» o «Monsati». Aquí se usa **Monzati**. El registro ante el IMPI sigue por decidir.

## Índice

1. Resumen para pegar en una IA
2. Identidad de marca
3. Qué es Monzati, problema y modelo de negocio
4. La app y sus módulos
5. Espejo inteligente
6. Arquitectura y tecnología
7. Alcance
8. Equipo, roles y participación
9. Calendario, capacidad e hitos
10. KPIs
11. Mapa completo de las 232 tareas por sprint
12. Tareas completas por persona
13. Colchón, entrega y rutina de seguimiento
14. La exposición
15. Dónde estamos, riesgos y decisiones abiertas
16. Archivos y enlaces del proyecto

## 1. Resumen para pegar en una IA

«Monzati (moda + tecnología) es un ecosistema móvil, proyecto de titulación de cinco estudiantes de la UTTEC (noviembre 2026 – abril 2027), para gestionar el guardarropa y comprar ropa de marcas mexicanas locales. Los usuarios digitalizan sus prendas con la cámara, reciben outfits de un asistente de IA, se prueban prendas en un avatar 3D con sus medidas, compran en un marketplace y proyectan el atuendo en un espejo inteligente. Los socios comerciales suben productos, controlan inventario y ven ventas; una comisión por venta sostiene el modelo. Stack: React Native con Expo, Node con TypeScript, PostgreSQL con Supabase y Three.js. Equipo: Angel (líder de proyecto y desarrollador), Alejandro (desarrollador), Mariana (diseñadora), Maximiliano (tester) y Hanny (analista). Lema: “Vuelve a ti.” Colores del logo: azul, violeta y azul marino sobre blanco. La meta es una plataforma 100 % funcional con marcas ficticias y pagos de prueba, con visión de crecer a marcas reales, pagos reales y un espejo físico en tiendas.»

## 2. Identidad de marca

- **Nombre:** Monzati. **Descriptor del logo:** «Moda + Tecnología».
- **Logo:** silueta de maniquí con líneas de circuito, en degradado de azul a violeta, con el texto MONZATI en una tipografía ligera de azul marino y una línea degradada debajo. Significado propuesto (por confirmar con el equipo): la moda unida a la tecnología; el degradado representa el paso de lo físico a lo digital.
- **Slogan:** «Vuelve a ti.»
- **Paleta (tomada del logo):** azul `#3A63E8` (confianza), violeta `#7A3FE0` (creatividad), azul marino `#1B1F3B` (elegancia), blanco (limpieza). La versión anterior del diseño en Figma y del prototipo usaba negro, blanco y dorado con Poppins; la paleta final queda por confirmar, pero la exposición ya usa la del logo.
- **Tipografías de la exposición:** Jost (ligera, parecida a la del logo) para títulos e Inter para texto. El diseño en Figma usa Poppins.
- **Tono de voz:** sobrio, elegante y cercano.

## 3. Qué es Monzati, problema y modelo de negocio

**Qué es.** Un ecosistema móvil para gestionar tu guardarropa y comprar ropa de marcas locales. Con la cámara digitalizas tus prendas, un asistente de IA te arma outfits, te pruebas la ropa sobre un avatar 3D con tus medidas y compras en un marketplace. Los socios comerciales (marcas emergentes y bazares) suben sus productos, controlan su inventario y ven sus ventas. Un espejo inteligente proyecta el atuendo elegido.

**El problema.**
- La gente no aprovecha su clóset: olvida prendas, le cuesta combinar y comprar sin probarse genera devoluciones y dudas de talla.
- Las marcas locales casi no tienen herramientas digitales ni visibilidad frente a las grandes cadenas.
- Competencia directa analizada: «Chula Ir» (escanea ropa, la prueba y recomienda).
- Marcas mexicanas analizadas: Simple By Trista (≈ $2,200 a $3,500 MXN) y Pelis (≈ $1,500 a $5,000 MXN). Sirven para fijar precios del catálogo ficticio.
- **Diferencial:** clóset personal + probador 3D + marketplace local con comisión + espejo inteligente, en un solo ecosistema y con foco en marcas mexicanas.

**Meta de la titulación (nov 2026 – abr 2027).** Una plataforma 100 % funcional de punta a punta, con marcas ficticias y pagos de prueba: registro, closet, prueba 3D, compra y venta, y vista del socio comercial.

**Visión a futuro (no comprometida):** marcas y bazares reales con pagos reales, espejo físico para tiendas, publicación en tiendas de apps e iOS, avatar con más tallas y telas, y crecimiento del catálogo y la comunidad.

**Modelo de negocio.** Monzati gana una **comisión por cada prenda vendida**. Los socios no pagan costo inicial y los usuarios usan la app gratis. Para la titulación, las marcas son ficticias y los pagos funcionan en modo de pruebas, lo que permite mostrar el cálculo de comisión y los reportes sin riesgo legal ni financiero. El porcentaje de comisión está por confirmar.

## 4. La app y sus módulos

**Dos tipos de cuenta** (según el diagrama de navegación). Después del login la app decide: el **usuario final** entra al menú con closet, tienda, asistente de IA y proyección y medidas; el **socio comercial o bazar** entra a la parte de empresarios (alta de productos, inventario y panel de ventas, sin probador). Un tercer rol, administrador, existe en el plan técnico pero no en el diagrama.

| # | Módulo | Qué hace |
| --- | --- | --- |
| 1 | Login y autenticación | Registro, inicio de sesión, recuperación de contraseña (enlace válido 30 minutos), aviso de privacidad y elección del tipo de cuenta |
| 2 | Closet virtual | Inventario personal con filtros por categoría, favoritos y organización |
| 3 | Fotos y escaneo de ropa | Captura frontal y trasera, talla, recorte de fondo y etiquetas |
| 4 | Asistente de IA | Chat que conoce el closet, recomienda outfits por ocasión y los muestra en el avatar |
| 5 | Proyección y medidas | Avatar 3D con las medidas del usuario, rotación 360° y prendas sobre el cuerpo; culmina en la conexión con el espejo |
| 6 | Tienda virtual | Marketplace de marcas locales, detalle de producto, guía de tallas y «Probar en mi avatar» |
| 7 | App para empresarios | Alta de productos, inventario por talla y panel de ventas con comisiones |
| 8 | Espejo inteligente | Pantalla donde se proyecta el atuendo elegido desde el celular |

**Pantallas diseñadas en Figma (12):** Acceso, Crear cuenta, Recuperar contraseña, Closet virtual, Fotografías y escaneo, Asistente IA, Proyección y medidas, Tienda virtual, Detalle de producto, Panel de empresarios, Registrar producto y Espejo inteligente. Navegación inferior: Closet, Asistente, Tienda y Espejo.

**Faltan por diseñar:** carrito y checkout, historial de pedidos, outfits guardados, perfil y ajustes, edición de medidas, y pedidos y ventas del empresario.

## 5. Espejo inteligente

Es el módulo más llamativo y más incierto. Tres versiones:

1. **Espejo simulado (recomendada para la titulación):** una segunda pantalla (tablet, TV o navegador) que recibe desde el celular el atuendo y lo muestra en tiempo real con el avatar vestido.
2. **Espejo con cámara:** detecta la pose del cuerpo y dibuja la prenda sobre la persona. Más vistoso y más riesgoso.
3. **Espejo físico:** vidrio de dos vías, monitor detrás, mini PC o Raspberry Pi, cámara y marco con LED. Fuera del alcance de la titulación, pero se muestra como modelo 3D.

La decisión estaba prevista para el **5 de marzo de 2027**. El prototipo del espejo se adelanta a S6 y S7 para decidir con datos.

## 6. Arquitectura y tecnología

| Capa | Tecnología |
| --- | --- |
| App móvil | React Native con Expo (TypeScript), Android primero |
| Panel de empresarios | Panel web con React, Vite y shadcn/ui (según el plan); en el diseño aparece dentro de la app. Por decidir |
| 3D | Three.js con react-three-fiber, modelos glTF/GLB, Blender |
| Cámara y pose | react-native-vision-camera con ML Kit Pose o MediaPipe |
| Backend | Node con TypeScript (Fastify o Express) |
| Base de datos | PostgreSQL con Prisma |
| Autenticación y archivos | Supabase |
| IA | Modelo de lenguaje por API desde el backend, con límite por usuario |
| Pagos | Stripe en modo de pruebas |
| Compilación y despliegue | EAS Build, Render y GitHub Actions |
| Pruebas | Vitest o Jest, Maestro o Detox, Playwright |

Las prendas se producen con **10 plantillas 3D** base (dos por persona) con variantes de textura y color, en lugar de modelar cada producto. Hay 2 a 3 avatares, 5 a 8 marcas ficticias y 40 a 60 productos de ejemplo.

## 7. Alcance

**Incluido:** app móvil, dos tipos de cuenta, marketplace con marcas ficticias, probador 3D, asistente de IA, espejo en software, pagos de prueba, documentación y pruebas con usuarios reales.

**Fuera de alcance:** hardware físico de proyección, dinero real, simulación física de telas, marcas reales y publicación en tiendas de apps. La app Scrum interna del equipo (ASP.NET Core) se construye aparte y no cuenta en el plan ni en las horas.

## 8. Equipo, roles y participación

Cinco integrantes de la UTTEC. Cada persona planifica el 80 % de su capacidad y deja 20 % de colchón. Todos pueden programar y todos cooperan; cada tarea tiene un responsable y un respaldo que la retoma si el responsable se atrasa.

| Integrante | Código | Rol | Tareas como responsable | Tareas como respaldo | Horas planeadas |
| --- | --- | --- | --- | --- | --- |
| Angel | AN | Líder de proyecto y desarrollador | 48 | 97 | 224 h |
| Alejandro | AL | Desarrollador | 47 | 43 | 224 h |
| Mariana | MA | Diseñadora | 45 | 34 | 224 h |
| Maximiliano (Max) | MX | Tester | 43 | 23 | 224 h |
| Hanny | HA | Analista | 49 | 35 | 224 h |
| **Total** | | | **232** | **232** | **1120 h** |

Las horas están balanceadas: cada persona tiene 224 h planeadas en total. La capacidad real por sprint está en la sección 9.

### Foco de trabajo de cada persona
- **Angel** (Líder de proyecto y desarrollador). Autenticación y roles, compilación y despliegue (EAS, GitHub Actions), pruebas E2E, pagos con Stripe, coordinación y reporte de KPIs. Plantillas 3D que modela: vestido y tenis.
- **Alejandro** (Desarrollador). Modelo de datos, API, panel web de empresarios, marketplace, comisiones, inventario y pruebas de lógica crítica. Plantillas 3D que modela: mezclilla y pantalón de vestir.
- **Mariana** (Diseñadora). Diseño en Figma, kit de diseño, app móvil con Expo, visor 3D y avatar, rendimiento 3D. Plantillas 3D que modela: camiseta y camisa.
- **Maximiliano (Max)** (Tester). Asistente de IA, recorte de fondo, pose y espejo, auditoría de seguridad (foco original del mapa). Plantillas 3D que modela: sudadera y chamarra.
- **Hanny** (Analista). Requisitos, historias de usuario, plan y pruebas de aceptación, KPIs, documentación, manual y beta con usuarios. Plantillas 3D que modela: falda y accesorio.

### Cosas que conviene confirmar sobre los roles

- El mapa de tareas se armó con un foco distinto para Maximiliano: **IA, visión y seguridad** (asistente, recorte de fondo, pose y espejo, auditoría). Si su rol ahora es **tester**, esas tareas deben repartirse con quien las desarrolle (por ejemplo Angel, Alejandro o Mariana) y a Maximiliano se le asignan más pruebas: plan de pruebas, casos, automatización con Maestro y Playwright, y pruebas de aceptación junto con Hanny. No se ha cambiado nada en el mapa; esto queda como propuesta.
- Hanny está en el mapa como analista con tareas de apoyo en desarrollo.
- Mariana aparece en el mapa también con la app móvil, el visor 3D y el avatar, además del diseño.
- Alejandro aparece con backend, base de datos y panel web.

### Participación en la exposición (plan de 60 minutos)

| Persona | Escenas | Minutos aprox. |
| --- | --- | --- |
| Angel | Apertura, agenda, demo y cierre con preguntas | 17 |
| Mariana | Logo, marca, solución, módulos y demo | 11 |
| Alejandro | Tecnología, arquitectura y espejo 3D | 9 |
| Maximiliano | Problema, calidad y riesgos, avance | 8 |
| Hanny | Proceso, cronograma y negocio | 10 |

## 9. Calendario, capacidad e hitos

Se trabaja por cuatrimestres que inician en enero, con tres parciales de cuatro semanas y exámenes en las semanas 3 o 4, 8 o 9 y 12 o 13. El proyecto es independiente de las materias; se carga más al inicio y se baja en exámenes y vacaciones. Sprints de dos semanas, de S0 a Cierre. Las fechas de 2027 están por confirmar con el calendario oficial de la UTTEC.

### Capacidad por persona y sprint

| Sprint | Fechas | Carga | Capacidad (h) | Plan al 80 % (h) |
|---|---|---|---|---|
| S0 | 2 – 6 nov | Ligera | 6 | 5 |
| S1 | 9 – 20 nov | Alta | 26 | 21 |
| S2 | 23 nov – 4 dic | Media | 18 | 14 |
| S3 | 7 – 18 dic | Alta | 26 | 21 |
| S3b | 21 dic – 3 ene | Ligera-media | 12 | 10 |
| S4 | 4 – 15 ene | Alta | 26 | 21 |
| S5 | 18 – 29 ene | Media | 18 | 14 |
| S6 | 1 – 12 feb | Alta | 26 | 21 |
| S7 | 15 feb – 5 mar | Media (3 semanas) | 30 | 24 |
| S8 | 8 – 19 mar | Alta | 26 | 21 |
| S8b | 22 – 26 mar | Ligera-media | 8 | 6 |
| S9 | 29 mar – 9 abr | Media | 18 | 14 |
| S10 | 12 – 23 abr | Alta | 26 | 21 |
| Cierre | 26 – 30 abr | Alta (1 semana) | 14 | 11 |

### Hitos y entregables

| Fecha | Hito | Entregable | Criterio de éxito |
|---|---|---|---|
| 20 nov 2026 | Go/no-go del 3D | Informe del spike con fps y decisión | Prenda sobre el avatar a ≥ 30 fps en gama media |
| 4 dic 2026 | Base técnica lista | Auth con roles, API base, esqueletos de app y panel y almacenamiento | Registro, login y rutas por rol funcionando en app y panel |
| 29 ene 2027 | Demo 1 | Closet y panel de empresarios | Subir prenda, verla en el closet y dar de alta un producto |
| 5 mar 2027 | Demo 2 y decisión del espejo | Marketplace completo y informe del espejo | Compra sandbox con comisión visible en el panel |
| 9 abr 2027 | Demo 3 | Sistema completo | Flujo registro, closet, probador, compra y panel |
| 16 abr 2027 | Feature freeze | Rama congelada | Cero funciones nuevas |
| 30 abr 2027 | Versión 1.0 | APK, entorno desplegado y documentación técnica | Criterios de aceptación al 100 % |

## 10. KPIs

Las metas marcadas como propuestas se validan en S1 con datos reales y se ajustan si hace falta.

| KPI | Fórmula | Meta | Cuándo | Mide |
|---|---|---|---|---|
| Cumplimiento del sprint | tareas terminadas ÷ comprometidas | ≥ 85 % | Cierre de cada sprint | HA, reporta AN |
| Desviación de horas | (reales − estimadas) ÷ estimadas | ≤ 25 % | Cada sprint | HA |
| Velocidad | horas terminadas por sprint | Estable ±20 % entre sprints similares | Cada sprint | AN |
| Burndown | horas restantes frente a la línea ideal | ≤ 1 día de desfase | Semanal | AN |
| Tiempo de ciclo | días de «En progreso» a «Hecho» | ≤ 5 días en promedio | Cada sprint | HA |
| Tareas vencidas | vencidas ÷ abiertas | ≤ 10 % | Semanal | AN |
| Carga por persona | horas asignadas ÷ capacidad | ≤ 80 % | Inicio de sprint | AN |
| Criterios de aceptación cumplidos | cumplidos ÷ totales de módulos imprescindibles | 100 % al 30 abr | Demos | HA |
| Defectos críticos abiertos | conteo | 0 al freeze (16 abr) | S10 | HA |
| Rendimiento 3D | fps con una prenda sobre el avatar en celular de gama media | ≥ 30 fps (propuesta) | 20 nov y S10 | MA |
| Rendimiento del espejo | fps con pose activa | ≥ 15 fps (propuesta) | 5 mar y S10 | MX |
| Recorte de fondo | prendas bien recortadas de 20 de prueba | ≥ 80 % (propuesta) | S3 y S4 | MX |
| Finalización de compra en la beta | usuarios que completan registro a compra sandbox ÷ participantes | ≥ 80 % | S10 | HA |
| Satisfacción en la beta | puntaje SUS | ≥ 68 | S10 | HA |
| Pruebas de lógica crítica | comisiones, inventario y roles con prueba automática | 100 % | S10 | AL |

Referencias adicionales: criterios de aceptación de los módulos imprescindibles al 100 % al 30 de abril; cero defectos críticos al congelar funciones; 30 fps con una prenda sobre el avatar en gama media y 15 en el espejo con pose (propuestas, se validan con datos reales).

## 11. Mapa completo de las 232 tareas por sprint

Códigos de persona: AN = Angel, AL = Alejandro, MA = Mariana, MX = Maximiliano, HA = Hanny. Todos los sprints usan las mismas columnas: tarea, responsable, respaldo, fechas y horas.

Todos los sprints usan las mismas columnas: tarea, responsable, respaldo, fechas y horas.

### S0 · 2 – 6 nov 2026 · Carga ligera

Objetivo: dejar listas las bases. Entregables: monorepo, modelo de datos v1, kit de diseño y requisitos v1. KPIs de salida: 100 % de módulos con responsable y respaldo; entorno local funcionando en los 5 equipos. Horas: 5 h por persona.

| ID | Tarea | Resp. | Respaldo | Fechas | h |
|---|---|---|---|---|---|
| S0-01 | Crear monorepo pnpm, ramas y reglas de pull request | AN | AL | 2 – 4 nov | 2 |
| S0-02 | Documentar el entorno local del equipo: Node, pnpm, Expo y Android Studio | AN | AL | 4 – 6 nov | 3 |
| S0-03 | Modelo de datos v1: diagrama ER de usuarios, prendas, outfits, marcas, productos y pedidos | AL | AN | 2 – 5 nov | 3 |
| S0-04 | Elegir estructura de carpetas y ORM del backend y documentarlo | AL | AN | 5 – 6 nov | 2 |
| S0-05 | Kit de diseño: paleta, temas claro, oscuro y neutro, Poppins y componentes base en Figma | MA | HA | 2 – 5 nov | 3 |
| S0-06 | Wireframes de los flujos de closet y tienda | MA | HA | 5 – 6 nov | 2 |
| S0-07 | Comparar ML Kit Pose y MediaPipe y definir requisitos del spike | MX | MA | 2 – 4 nov | 2 |
| S0-08 | Elegir servicio de recorte de fondo y modelo de lenguaje con costos estimados | MX | AL | 4 – 6 nov | 3 |
| S0-09 | Requisitos funcionales y reglas de negocio v1: comisión, inventario y roles | HA | AN | 2 – 5 nov | 3 |
| S0-10 | Plan de pruebas y definición de terminado | HA | AN | 5 – 6 nov | 2 |

### S1 · 9 – 20 nov 2026 · Carga alta

Objetivo: probar que el 3D y la pose funcionan en celular y dejar autenticación y base de datos. Entregables: auth con roles, esquema de BD, build de desarrollo, informe del spike 3D. KPIs de salida: avatar con prenda ≥ 30 fps; pose estable; Hito 20 nov. Horas: 21 h por persona.

| ID | Tarea | Resp. | Respaldo | Fechas | h |
|---|---|---|---|---|---|
| S1-01 | Proyecto en Supabase con registro, verificación de correo y recuperación de contraseña | AN | AL | 9 – 13 nov | 5 |
| S1-02 | Roles de usuario, empresario y administrador con políticas de acceso en la API | AN | AL | 12 – 18 nov | 5 |
| S1-03 | Build de desarrollo con EAS para Android y pipeline en GitHub Actions | AN | MA | 9 – 16 nov | 5 |
| S1-04 | Pruebas unitarias y linter compartidos en el monorepo | AN | AL | 9 – 20 nov | 4 |
| S1-05 | Preparar la prueba go/no-go: celular de gama media y medición de fps | AN | MA | 16 – 19 nov | 2 |
| S1-06 | Esquema en Prisma: usuarios, prendas, outfits, marcas, productos, variantes, pedidos y comisiones | AL | AN | 9 – 13 nov | 6 |
| S1-07 | API base: estructura, validación con Zod y manejo de errores | AL | AN | 12 – 18 nov | 5 |
| S1-08 | Conexión a Supabase y datos semilla de roles | AL | AN | 16 – 19 nov | 3 |
| S1-09 | Variables de entorno de ejemplo y migraciones reproducibles de la BD | AL | AN | 9 – 20 nov | 4 |
| S1-10 | Diagramas de secuencia de login, compra y cálculo de comisión | AL | HA | 16 – 20 nov | 3 |
| S1-11 | Figma: pantallas de login, registro y closet | MA | HA | 9 – 13 nov | 6 |
| S1-12 | Spike del avatar: cargar un avatar glTF con esqueleto en react-three-fiber en celular | MA | MX | 9 – 18 nov | 8 |
| S1-13 | Medir fps y memoria con una prenda sobre el avatar | MA | AN | 16 – 19 nov | 4 |
| S1-14 | Esqueleto de la app Expo: navegación, temas y Poppins | MA | AN | 17 – 20 nov | 3 |
| S1-15 | Spike de pose: cámara con vision-camera y puntos del cuerpo en tiempo real | MX | MA | 9 – 17 nov | 9 |
| S1-16 | Medir latencia y estabilidad de la pose con buena y mala luz | MX | MA | 16 – 19 nov | 4 |
| S1-17 | Spike de recorte de fondo con 10 prendas de prueba | MX | AL | 12 – 18 nov | 5 |
| S1-18 | Lista de verificación de seguridad para auth y API | MX | AN | 16 – 20 nov | 3 |
| S1-19 | Historias de usuario con criterios de aceptación de auth, closet y fotos | HA | AN | 9 – 13 nov | 6 |
| S1-20 | Glosario y diccionario de datos v1 | HA | AN | 9 – 13 nov | 3 |
| S1-21 | Análisis competitivo de apps de closet y probadores, y de marcas locales | HA | AN | 12 – 18 nov | 6 |
| S1-22 | Matriz de trazabilidad v1: requisito, historia, tarea y prueba | HA | AL | 16 – 19 nov | 3 |
| S1-23 | Borrador del aviso de privacidad | HA | AN | 18 – 20 nov | 3 |

### S2 · 23 nov – 4 dic 2026 · Carga media (exámenes)

Objetivo: esqueletos de app y panel y almacenamiento de archivos. Entregables: auth en la app, API de marcas y productos y buckets de archivos. KPIs de salida: cumplimiento ≥ 85 %; pruebas E2E de auth en verde. Horas: 14 h por persona.

| ID | Tarea | Resp. | Respaldo | Fechas | h |
|---|---|---|---|---|---|
| S2-01 | Auth en la app móvil: pantallas conectadas, sesión persistente y rutas por rol | AN | AL | 23 – 30 nov | 5 |
| S2-02 | Pruebas E2E del flujo de autenticación con Maestro | AN | AL | 23 nov – 4 dic | 5 |
| S2-03 | Buckets de Supabase para fotos, modelos y texturas con políticas por usuario | AN | MX | 30 nov – 3 dic | 4 |
| S2-04 | Endpoints de marcas y productos con autorización por rol | AL | AN | 23 nov – 2 dic | 6 |
| S2-05 | Esqueleto del panel web con Vite y shadcn/ui: login y estructura | AL | AN | 25 nov – 3 dic | 4 |
| S2-06 | Datos semilla de usuarios de prueba, roles, marcas y productos de ejemplo | AL | AN | 23 nov – 4 dic | 4 |
| S2-07 | Figma: tienda, detalle de producto y carrito | MA | HA | 23 – 30 nov | 6 |
| S2-08 | Temas claro, oscuro y neutro y componentes base en la app | MA | AN | 25 nov – 3 dic | 5 |
| S2-09 | Informe del spike 3D y ajustes de optimización de modelos | MA | MX | 23 – 25 nov | 3 |
| S2-10 | Endpoint de subida de fotos y servicio de recorte de fondo | MX | AL | 23 nov – 2 dic | 7 |
| S2-11 | Cliente del modelo de lenguaje en el backend con límite por usuario | MX | AN | 27 nov – 4 dic | 4 |
| S2-12 | Pruebas de seguridad de auth con peticiones directas a la API | MX | AN | 1 – 4 dic | 3 |
| S2-13 | Reglas de negocio v1 documentadas: comisión, inventario y estados de pedido | HA | AL | 23 – 30 nov | 5 |
| S2-14 | Casos de prueba de auth y closet | HA | AN | 25 nov – 2 dic | 4 |
| S2-15 | Historias de usuario de marketplace y panel de empresarios | HA | AL | 27 nov – 4 dic | 5 |

### S3 · 7 – 18 dic 2026 · Carga alta

Objetivo: closet v1 con fotos y recorte, alta de productos y las primeras tres plantillas 3D. Entregables: subida de fotos con recorte, closet v1, formulario de alta de productos, plantillas de camiseta, sudadera y mezclilla. KPIs de salida: recorte correcto en ≥ 80 % de 20 prendas de prueba; 3 plantillas listas; cumplimiento ≥ 85 %. Horas: 21 h por persona.

| ID | Tarea | Resp. | Respaldo | Fechas | h |
|---|---|---|---|---|---|
| S3-01 | Subida de fotos desde la app: cámara, permisos y envío a storage | AN | MA | 7 – 12 dic | 6 |
| S3-02 | Pantalla de etiquetado (categoría, color y ocasión) conectada a la API | AN | MA | 10 – 16 dic | 5 |
| S3-03 | Despliegue en Render de la API y el panel con variables de entorno | AN | AL | 7 – 11 dic | 5 |
| S3-04 | Consentimiento del aviso de privacidad: pantalla y registro en la BD | AN | HA | 14 – 18 dic | 5 |
| S3-05 | Endpoints de prendas: crear, listar, editar y borrar con dueño | AL | AN | 7 – 11 dic | 6 |
| S3-06 | Panel web: formulario de alta de producto con imagen y tallas | AL | AN | 9 – 16 dic | 6 |
| S3-07 | Plantilla 3D: pantalón de mezclilla con rig al avatar | AL | MA | 11 – 17 dic | 6 |
| S3-08 | Pruebas unitarias de endpoints de prendas y roles | AL | AN | 15 – 18 dic | 3 |
| S3-09 | Closet v1: lista de prendas con imágenes recortadas | MA | AN | 7 – 12 dic | 6 |
| S3-10 | Plantilla 3D: camiseta con rig al avatar | MA | MX | 8 – 15 dic | 6 |
| S3-11 | Pantalla de captura frontal y trasera con guía | MA | AN | 9 – 14 dic | 5 |
| S3-12 | Ajustes de interfaz según pruebas internas | MA | HA | 15 – 18 dic | 4 |
| S3-13 | Recorte automático integrado en el flujo de subida | MX | AL | 7 – 12 dic | 7 |
| S3-14 | Etiquetas sugeridas de color y categoría | MX | AN | 11 – 16 dic | 4 |
| S3-15 | Plantilla 3D: sudadera con rig al avatar | MX | MA | 8 – 16 dic | 6 |
| S3-16 | Límite de tamaño y validación de archivos subidos | MX | AL | 15 – 18 dic | 4 |
| S3-17 | Casos de prueba de fotos y closet, ejecutados en celular | HA | AN | 9 – 15 dic | 6 |
| S3-18 | Guía de captura de fotos para el usuario: luz y fondo | HA | MA | 7 – 10 dic | 3 |
| S3-19 | Identidad de 5 a 8 marcas ficticias: nombre, logotipo conceptual y perfil | HA | MA | 7 – 17 dic | 8 |
| S3-20 | Registro y priorización de defectos del sprint | HA | AN | 15 – 18 dic | 4 |

### S3b · 21 dic 2026 – 3 ene 2027 · Carga ligera-media

Objetivo: avanzar contenido y documentación sin presión. Cada persona libra de 2 a 3 días sin tocar el proyecto, rotándose. Entregables: plantillas de camisa, chamarra y falda, datos semilla del catálogo y documentación v1. KPIs de salida: 6 de 10 plantillas listas; cumplimiento ≥ 85 %. Horas: 10 h por persona.

| ID | Tarea | Resp. | Respaldo | Fechas | h |
|---|---|---|---|---|---|
| S3b-01 | Documentación de arquitectura y despliegue v1 | AN | AL | 21 – 28 dic | 4 |
| S3b-02 | Pruebas manuales de auth en 2 celulares | AN | HA | 29 – 31 dic | 3 |
| S3b-03 | Revisión de pull requests y limpieza del repositorio | AN | AL | 30 dic – 3 ene | 3 |
| S3b-04 | Script de datos semilla del catálogo: marcas y productos ficticios | AL | HA | 22 – 30 dic | 5 |
| S3b-05 | Documentación de la API v1 | AL | AN | 28 dic – 3 ene | 5 |
| S3b-06 | Plantilla 3D: camisa con rig al avatar | MA | MX | 21 – 30 dic | 6 |
| S3b-07 | Pulido visual del closet | MA | HA | 30 dic – 3 ene | 4 |
| S3b-08 | Plantilla 3D: chamarra con rig al avatar | MX | MA | 21 – 30 dic | 6 |
| S3b-09 | Prompt y pruebas del asistente con 10 closets de ejemplo | MX | AN | 30 dic – 3 ene | 4 |
| S3b-10 | Plantilla 3D: falda con rig al avatar | HA | MA | 21 – 29 dic | 4 |
| S3b-11 | Texturas y variantes de color de las 3 primeras plantillas | HA | MA | 28 – 31 dic | 3 |
| S3b-12 | Textos y precios de 20 productos ficticios | HA | AL | 30 dic – 3 ene | 3 |

### S4 · 4 – 15 ene 2027 · Carga alta

Objetivo: closet completo, inventario por talla y las 10 plantillas 3D terminadas. Entregables: closet con filtros y outfits, inventario por talla, visor 3D con caché, asistente de IA v0. KPIs de salida: 10 de 10 plantillas; recorte ≥ 80 % en prendas difíciles; desviación de horas ≤ 25 %. Horas: 21 h por persona.

| ID | Tarea | Resp. | Respaldo | Fechas | h |
|---|---|---|---|---|---|
| S4-01 | Plantilla 3D: vestido con rig al avatar | AN | MA | 4 – 9 ene | 6 |
| S4-02 | Plantilla 3D: tenis con rig al avatar | AN | MX | 8 – 13 ene | 6 |
| S4-03 | Búsqueda por texto y paginación del closet | AN | MA | 5 – 11 ene | 4 |
| S4-04 | Configurar Playwright y primeras pruebas E2E del panel | AN | AL | 11 – 15 ene | 5 |
| S4-05 | Inventario por talla: tablas, endpoints y reglas de descuento | AL | AN | 4 – 11 ene | 7 |
| S4-06 | Plantilla 3D: pantalón de vestir con rig al avatar | AL | MA | 6 – 13 ene | 6 |
| S4-07 | Panel: listado, edición y borrado de productos con inventario | AL | AN | 8 – 14 ene | 6 |
| S4-08 | Pruebas unitarias de inventario | AL | AN | 13 – 15 ene | 2 |
| S4-09 | Closet: filtros por categoría, color y ocasión | MA | AN | 4 – 9 ene | 6 |
| S4-10 | Outfits: crear, guardar y marcar favoritos | MA | AN | 6 – 14 ene | 7 |
| S4-11 | Visor 3D: carga de prendas GLB desde storage con caché | MA | MX | 5 – 13 ene | 6 |
| S4-12 | Pruebas del closet en 2 celulares | MA | HA | 14 – 15 ene | 2 |
| S4-13 | Mejora del recorte con prendas difíciles | MX | AL | 4 – 11 ene | 8 |
| S4-14 | Asistente de IA v0: chat con contexto del closet en el backend | MX | AN | 6 – 14 ene | 8 |
| S4-15 | Revisión de seguridad de la subida y de los endpoints del closet | MX | AN | 13 – 15 ene | 3 |
| S4-16 | Medición del costo por consulta del modelo de lenguaje | MX | AL | 14 – 15 ene | 2 |
| S4-17 | Plantilla 3D: accesorio con rig al avatar | HA | MA | 4 – 9 ene | 5 |
| S4-18 | Texturas y variantes de las plantillas 4 a 10 | HA | MA | 6 – 13 ene | 6 |
| S4-19 | Inventario de licencias de recursos y registro de defectos | HA | AN | 4 – 15 ene | 4 |
| S4-20 | Casos de prueba de inventario y filtros | HA | AN | 12 – 15 ene | 4 |
| S4-21 | Entrevistas a 3 usuarios sobre el closet | HA | MA | 11 – 14 ene | 2 |

### S5 · 18 – 29 ene 2027 · Carga media (exámenes) · Demo 1

Objetivo: catálogo con visor 3D y Demo 1 el 29 de enero. Entregables: catálogo con visor 3D, panel con carga de modelos, recomendaciones de outfits, pagos de prueba iniciados. KPIs de salida: criterios de aceptación de closet y panel al 100 %; cumplimiento ≥ 85 %. Horas: 14 h por persona.

| ID | Tarea | Resp. | Respaldo | Fechas | h |
|---|---|---|---|---|---|
| S5-01 | Pagos: cuenta Stripe de prueba, SDK en la app y PaymentIntent en el backend | AN | AL | 18 – 26 ene | 6 |
| S5-02 | Guion y ensayo de la Demo 1 | AN | HA | 25 – 28 ene | 3 |
| S5-03 | Pruebas E2E del flujo de closet con Maestro | AN | HA | 20 – 27 ene | 5 |
| S5-04 | Endpoint de catálogo: listado, búsqueda y filtros | AL | AN | 18 – 25 ene | 6 |
| S5-05 | Panel: subida de texturas y modelos GLB por producto | AL | AN | 20 – 27 ene | 5 |
| S5-06 | Corrección de defectos de S4 | AL | AN | 26 – 28 ene | 3 |
| S5-07 | Catálogo con visor 3D en la app | MA | MX | 18 – 26 ene | 7 |
| S5-08 | Detalle de producto con selector de talla y color | MA | AN | 22 – 28 ene | 5 |
| S5-09 | Pulido visual para la Demo 1 | MA | HA | 27 – 28 ene | 2 |
| S5-10 | Asistente de IA: recomendaciones de outfits con prendas reales | MX | AN | 18 – 27 ene | 8 |
| S5-11 | Límite por usuario y manejo de errores del modelo de lenguaje | MX | AL | 22 – 27 ene | 4 |
| S5-12 | Pruebas de inyección de instrucciones en el asistente | MX | AN | 27 – 28 ene | 2 |
| S5-13 | Pruebas de aceptación de la Demo 1: closet y panel | HA | AN | 25 – 28 ene | 5 |
| S5-14 | Medición de KPIs del sprint y reporte de desviaciones | HA | AN | 28 – 29 ene | 3 |
| S5-15 | Carga de 15 productos ficticios con texturas | HA | AL | 18 – 27 ene | 6 |

### S6 · 1 – 12 feb 2027 · Carga alta

Objetivo: probador con medidas, carrito y comisiones, y primer prototipo del espejo. Entregables: avatar con medidas, probador, pedidos con comisión, catálogo de 40 productos, prototipo de espejo. KPIs de salida: probador ≥ 30 fps; comisión correcta en el 100 % de los casos de prueba; 40 productos cargados. Horas: 21 h por persona.

| ID | Tarea | Resp. | Respaldo | Fechas | h |
|---|---|---|---|---|---|
| S6-01 | Checkout en la app: pantalla de pago y confirmación en sandbox | AN | AL | 1 – 8 feb | 7 |
| S6-02 | Carrito: modelo de datos y endpoints, con Alejandro | AN | AL | 2 – 9 feb | 6 |
| S6-03 | Auditoría de dependencias y versiones fijas | AN | MX | 9 – 10 feb | 3 |
| S6-04 | Entorno de pruebas estable en Render | AN | AL | 8 – 12 feb | 5 |
| S6-05 | Pedidos: estados y transacciones | AL | AN | 1 – 9 feb | 8 |
| S6-06 | Cálculo de comisión por línea de pedido | AL | AN | 5 – 10 feb | 5 |
| S6-07 | Panel: vista de pedidos del empresario | AL | AN | 8 – 12 feb | 5 |
| S6-08 | Pruebas unitarias de comisiones | AL | HA | 11 – 12 feb | 3 |
| S6-09 | Pantalla de medidas con guía y validación | MA | HA | 1 – 5 feb | 5 |
| S6-10 | Avatar: morph targets de altura, pecho, cintura y cadera | MA | MX | 1 – 10 feb | 9 |
| S6-11 | Probador: prenda sobre el avatar con selección de talla | MA | MX | 5 – 12 feb | 7 |
| S6-12 | Recomendación de talla: reglas y tabla de tallas por prenda | MX | AL | 1 – 9 feb | 7 |
| S6-13 | Prototipo del espejo: cámara, pose y una prenda | MX | MA | 1 – 10 feb | 9 |
| S6-14 | Revisión de seguridad de carrito y pedidos | MX | AN | 9 – 12 feb | 5 |
| S6-15 | Pruebas de aceptación del probador y las medidas | HA | MA | 8 – 12 feb | 6 |
| S6-16 | Carga de las marcas y 40 productos ficticios completos | HA | AL | 1 – 10 feb | 9 |
| S6-17 | Casos de prueba de carrito y comisiones | HA | AL | 4 – 9 feb | 4 |
| S6-18 | Reporte de KPIs del sprint | HA | AN | 12 feb | 2 |

### S7 · 15 feb – 5 mar 2027 · Carga media (3 semanas) · Demo 2

Objetivo: marketplace completo, Demo 2 y decisión del espejo el 5 de marzo. Entregables: checkout con comprobante, historial de pedidos, panel de ventas con comisiones, administración e informe técnico del espejo. KPIs de salida: compra sandbox de punta a punta sin errores; criterios de aceptación del marketplace al 100 %; espejo ≥ 15 fps para decidir si continúa. Horas: 24 h por persona.

| ID | Tarea | Resp. | Respaldo | Fechas | h |
|---|---|---|---|---|---|
| S7-01 | Checkout completo con comprobante y confirmación por webhook | AN | AL | 15 – 25 feb | 8 |
| S7-02 | Administración: usuarios, marcas y métricas generales | AN | AL | 22 feb – 3 mar | 8 |
| S7-03 | Pruebas E2E de la compra con Maestro | AN | HA | 24 feb – 3 mar | 5 |
| S7-04 | Ensayo de la Demo 2 | AN | HA | 2 – 4 mar | 3 |
| S7-05 | Historial de pedidos del usuario: endpoints | AL | AN | 15 – 22 feb | 5 |
| S7-06 | Panel de ventas: totales, comisiones y gráficas | AL | AN | 15 feb – 1 mar | 9 |
| S7-07 | Descuento de inventario al comprar con control de concurrencia | AL | AN | 22 – 27 feb | 6 |
| S7-08 | Corrección de defectos de backend | AL | AN | 1 – 4 mar | 4 |
| S7-09 | Pantallas de carrito, checkout e historial | MA | AN | 15 – 25 feb | 10 |
| S7-10 | Probador integrado en el detalle de producto | MA | MX | 20 feb – 2 mar | 8 |
| S7-11 | Pulido visual y accesibilidad: contraste y tamaños | MA | HA | 1 – 4 mar | 4 |
| S7-12 | Pruebas en 2 celulares | MA | HA | 4 – 5 mar | 2 |
| S7-13 | Espejo: seguimiento del torso y escala de la prenda | MX | MA | 15 – 26 feb | 10 |
| S7-14 | Espejo: medición de fps y latencia en 2 celulares | MX | MA | 25 feb – 2 mar | 4 |
| S7-15 | Asistente de IA: sugerencias de compra desde la tienda | MX | AN | 18 – 27 feb | 6 |
| S7-16 | Informe técnico del espejo para la decisión del 5 de marzo | MX | HA | 2 – 4 mar | 4 |
| S7-17 | Pruebas de aceptación de la Demo 2: marketplace | HA | AN | 1 – 4 mar | 8 |
| S7-18 | Casos de prueba de pedidos e inventario | HA | AL | 15 – 24 feb | 6 |
| S7-19 | Entrevistas a 5 usuarios y cuestionario de usabilidad | HA | MA | 22 feb – 3 mar | 6 |
| S7-20 | Reporte de KPIs y matriz de trazabilidad v2 | HA | AN | 3 – 5 mar | 4 |

### S8 · 8 – 19 mar 2027 · Carga alta

Objetivo: asistente de IA completo, recomendación de talla y espejo v1. Si el 5 de marzo se decide no continuar con el espejo, S8-01, S8-11 y S8-13 se reasignan a calidad del marketplace y del 3D. Entregables: chat del asistente, talla recomendada por medidas, espejo v1, reportes en CSV, manual v1. KPIs de salida: recomendaciones usando prendas reales en el 100 % de las pruebas; espejo ≥ 15 fps; cumplimiento ≥ 85 %. Horas: 21 h por persona.

| ID | Tarea | Resp. | Respaldo | Fechas | h |
|---|---|---|---|---|---|
| S8-01 | Espejo en la app: pantalla, permisos de cámara y selector de prendas | AN | MX | 8 – 16 mar | 7 |
| S8-02 | Límite de intentos de acceso y revisión de secretos | AN | MX | 8 – 12 mar | 4 |
| S8-03 | Pruebas E2E del flujo completo: registro a compra | AN | HA | 10 – 17 mar | 6 |
| S8-04 | Respaldo de la BD y plan de restauración | AN | AL | 15 – 19 mar | 4 |
| S8-05 | API de recomendación de talla por medidas, con Max | AL | MX | 8 – 15 mar | 6 |
| S8-06 | Optimización de consultas y paginación del catálogo | AL | AN | 8 – 15 mar | 6 |
| S8-07 | Exportación de reportes del panel en CSV | AL | AN | 12 – 18 mar | 5 |
| S8-08 | Documentación de la API v2 | AL | AN | 16 – 19 mar | 4 |
| S8-09 | Chat del asistente en la app: interfaz | MA | MX | 8 – 16 mar | 8 |
| S8-10 | Recomendación de talla en la pantalla de producto | MA | AL | 10 – 16 mar | 5 |
| S8-11 | Espejo: interfaz y selector de prendas | MA | MX | 11 – 18 mar | 6 |
| S8-12 | Pruebas de usabilidad internas | MA | HA | 18 – 19 mar | 2 |
| S8-13 | Espejo v1: anclaje de la prenda y suavizado de movimiento | MX | MA | 8 – 17 mar | 10 |
| S8-14 | Asistente: clima y ocasión en las recomendaciones | MX | AN | 9 – 16 mar | 6 |
| S8-15 | Auditoría de seguridad parcial: IA y subida de archivos | MX | AN | 15 – 19 mar | 5 |
| S8-16 | Pruebas de aceptación del asistente y las tallas | HA | AN | 12 – 18 mar | 6 |
| S8-17 | Manual de usuario v1 | HA | MA | 8 – 18 mar | 8 |
| S8-18 | Encuesta de satisfacción: diseño y primeras 10 respuestas | HA | MA | 8 – 15 mar | 4 |
| S8-19 | Reporte de KPIs del sprint | HA | AN | 19 mar | 3 |

### S8b · 22 – 26 mar 2027 · Carga ligera-media (Semana Santa)

Objetivo: pruebas, documentación y pulido sin presión. Entregables: checkout probado en casos límite, documentación técnica y de despliegue, manual v2. KPIs de salida: pruebas de pago fallido y stock agotado en verde; cumplimiento ≥ 85 %. Horas: 6 h por persona.

| ID | Tarea | Resp. | Respaldo | Fechas | h |
|---|---|---|---|---|---|
| S8b-01 | Revisión de pull requests y limpieza de ramas | AN | AL | 22 – 24 mar | 3 |
| S8b-02 | Documentación de despliegue | AN | AL | 24 – 26 mar | 3 |
| S8b-03 | Pruebas del checkout en casos límite: pago fallido y stock agotado | AL | AN | 22 – 25 mar | 4 |
| S8b-04 | Documentación técnica de la BD | AL | AN | 25 – 26 mar | 2 |
| S8b-05 | Pulido visual de tienda y carrito | MA | HA | 22 – 25 mar | 4 |
| S8b-06 | Revisión de textos de la app | MA | HA | 25 – 26 mar | 2 |
| S8b-07 | Ajuste de instrucciones del asistente con casos reales | MX | AN | 22 – 25 mar | 4 |
| S8b-08 | Notas de seguridad para la tesis | MX | AN | 25 – 26 mar | 2 |
| S8b-09 | Manual de usuario v2 | HA | MA | 22 – 25 mar | 4 |
| S8b-10 | Capítulo de análisis de requisitos de la tesis | HA | AN | 25 – 26 mar | 2 |

### S9 · 29 mar – 9 abr 2027 · Carga media (exámenes) · Demo 3

Objetivo: sistema integrado y Demo 3 el 9 de abril. Entregables: sistema completo en el entorno de pruebas, espejo v1 estable o video de respaldo y plan de la beta. KPIs de salida: ≥ 90 % de los criterios de aceptación de los módulos imprescindibles cumplidos; cumplimiento ≥ 85 %. Horas: 14 h por persona.

| ID | Tarea | Resp. | Respaldo | Fechas | h |
|---|---|---|---|---|---|
| S9-01 | Integración de todos los módulos en el entorno de pruebas | AN | AL | 29 mar – 6 abr | 6 |
| S9-02 | Pruebas E2E ampliadas: panel y espejo | AN | HA | 30 mar – 7 abr | 5 |
| S9-03 | Guion y ensayo de la Demo 3 | AN | HA | 6 – 8 abr | 3 |
| S9-04 | Corrección de defectos de integración en el backend | AL | AN | 29 mar – 6 abr | 6 |
| S9-05 | Pruebas de carga básicas de la API | AL | AN | 31 mar – 7 abr | 5 |
| S9-06 | Datos de demostración limpios para la Demo 3 | AL | HA | 6 – 8 abr | 3 |
| S9-07 | Espejo integrado en la navegación de la app | MA | MX | 29 mar – 3 abr | 5 |
| S9-08 | Rendimiento: carga de modelos y caché | MA | MX | 30 mar – 7 abr | 6 |
| S9-09 | Pulido visual para la Demo 3 | MA | HA | 6 – 8 abr | 3 |
| S9-10 | Espejo v1 estable: luz, errores y reinicio de cámara | MX | MA | 29 mar – 7 abr | 8 |
| S9-11 | Video del espejo grabado como plan B | MX | MA | 6 – 8 abr | 3 |
| S9-12 | Pruebas de seguridad de la integración | MX | AN | 7 – 9 abr | 3 |
| S9-13 | Pruebas de aceptación de la Demo 3: sistema completo | HA | AN | 5 – 8 abr | 6 |
| S9-14 | Plan de la beta: reclutar de 10 a 20 usuarios, guion y formularios | HA | AN | 29 mar – 6 abr | 5 |
| S9-15 | Reporte de KPIs y matriz de trazabilidad v3 | HA | AN | 8 – 9 abr | 3 |

### S10 · 12 – 23 abr 2027 · Carga alta · Feature freeze el 16 de abril

Objetivo: beta con usuarios reales, auditoría de seguridad y rendimiento. A partir del 16 de abril solo se corrigen defectos. Entregables: informe de la beta, informe de auditoría de seguridad, respaldo y restauración probados. KPIs de salida: 0 defectos críticos abiertos; finalización de compra en la beta ≥ 80 %; SUS ≥ 68; 3D ≥ 30 fps y espejo ≥ 15 fps. Horas: 21 h por persona.

| ID | Tarea | Resp. | Respaldo | Fechas | h |
|---|---|---|---|---|---|
| S10-01 | Despliegue estable para la beta y monitoreo de errores | AN | AL | 12 – 17 abr | 6 |
| S10-02 | Pruebas E2E completas y de regresión | AN | HA | 12 – 20 abr | 7 |
| S10-03 | Corrección de defectos críticos | AN | AL | 17 – 23 abr | 5 |
| S10-04 | Alertas de costo de hosting y del modelo de lenguaje | AN | MX | 13 – 15 abr | 3 |
| S10-05 | Corrección de defectos de backend y panel | AL | AN | 12 – 20 abr | 8 |
| S10-06 | Pruebas de carga y optimización final | AL | AN | 13 – 20 abr | 6 |
| S10-07 | Documentación final de la API y del despliegue | AL | AN | 18 – 23 abr | 5 |
| S10-08 | Respaldo y restauración probados | AL | AN | 21 – 22 abr | 2 |
| S10-09 | Corrección de defectos de interfaz y 3D | MA | MX | 12 – 21 abr | 9 |
| S10-10 | Optimización de rendimiento en celular de gama media | MA | MX | 13 – 20 abr | 7 |
| S10-11 | Revisión de accesibilidad y textos | MA | HA | 20 – 22 abr | 3 |
| S10-12 | Material gráfico para la defensa | MA | HA | 22 – 23 abr | 2 |
| S10-13 | Auditoría de seguridad completa: roles, formularios, API e IA | MX | AN | 12 – 20 abr | 10 |
| S10-14 | Corrección de hallazgos de seguridad | MX | AN | 17 – 23 abr | 6 |
| S10-15 | Estabilidad del espejo con 3 usuarios distintos | MX | MA | 13 – 19 abr | 5 |
| S10-16 | Ejecución de la beta con 10 a 20 usuarios | HA | AN | 13 – 22 abr | 10 |
| S10-17 | Análisis de resultados: uso, finalización y satisfacción | HA | AN | 20 – 23 abr | 6 |
| S10-18 | Registro y priorización de defectos de la beta | HA | AN | 14 – 22 abr | 3 |
| S10-19 | Aviso de privacidad y política de datos finales | HA | AN | 14 – 16 abr | 2 |

### Cierre · 26 – 30 abr 2027 · Carga alta · Versión 1.0

Objetivo: entregar la versión final el 30 de abril. Entregables: APK de la versión 1.0, entorno desplegado, base de datos respaldada, manual de usuario y guía de instalación. KPIs de salida: criterios de aceptación al 100 %; 0 defectos críticos; reporte final de KPIs. Horas: 11 h por persona.

| ID | Tarea | Resp. | Respaldo | Fechas | h |
|---|---|---|---|---|---|
| C-01 | Corrección de defectos críticos y despliegue de la versión final | AN | AL | 26 – 29 abr | 6 |
| C-02 | Etiquetar la versión 1.0 y generar el APK | AN | AL | 29 – 30 abr | 3 |
| C-03 | Lista de verificación final de entrega | AN | HA | 30 abr | 2 |
| C-04 | Correcciones de backend y panel | AL | AN | 26 – 29 abr | 5 |
| C-05 | Congelar la BD, respaldo final y datos de demostración | AL | AN | 28 – 30 abr | 3 |
| C-06 | Guía de instalación y despliegue | AL | AN | 28 – 30 abr | 3 |
| C-07 | Correcciones de interfaz y 3D | MA | MX | 26 – 29 abr | 5 |
| C-08 | Capturas y recursos gráficos para el manual | MA | HA | 28 – 29 abr | 3 |
| C-09 | Revisión final de textos y temas visuales | MA | HA | 29 – 30 abr | 3 |
| C-10 | Verificar que los hallazgos de seguridad estén cerrados | MX | AN | 26 – 28 abr | 4 |
| C-11 | Correcciones del espejo y del asistente | MX | MA | 26 – 29 abr | 5 |
| C-12 | Informe final de seguridad | MX | AN | 29 – 30 abr | 2 |
| C-13 | Pruebas de aceptación finales | HA | AN | 27 – 29 abr | 5 |
| C-14 | Manual de usuario final | HA | MA | 26 – 30 abr | 3 |
| C-15 | Reporte final de KPIs del proyecto | HA | AN | 30 abr | 3 |

## 12. Tareas completas por persona

Las mismas 232 tareas, ahora agrupadas por responsable. La columna «Respaldo» dice quién la retoma si hay retraso.

### Angel · Líder de proyecto y desarrollador · 48 tareas · 224 h

| ID | Sprint | Tarea | Fechas | h | Respaldo |
|---|---|---|---|---|---|
| S0-01 | S0 | Crear monorepo pnpm, ramas y reglas de pull request | 2 – 4 nov | 2 | AL |
| S0-02 | S0 | Documentar el entorno local del equipo: Node, pnpm, Expo y Android Studio | 4 – 6 nov | 3 | AL |
| S1-01 | S1 | Proyecto en Supabase con registro, verificación de correo y recuperación de contraseña | 9 – 13 nov | 5 | AL |
| S1-02 | S1 | Roles de usuario, empresario y administrador con políticas de acceso en la API | 12 – 18 nov | 5 | AL |
| S1-03 | S1 | Build de desarrollo con EAS para Android y pipeline en GitHub Actions | 9 – 16 nov | 5 | MA |
| S1-04 | S1 | Pruebas unitarias y linter compartidos en el monorepo | 9 – 20 nov | 4 | AL |
| S1-05 | S1 | Preparar la prueba go/no-go: celular de gama media y medición de fps | 16 – 19 nov | 2 | MA |
| S2-01 | S2 | Auth en la app móvil: pantallas conectadas, sesión persistente y rutas por rol | 23 – 30 nov | 5 | AL |
| S2-02 | S2 | Pruebas E2E del flujo de autenticación con Maestro | 23 nov – 4 dic | 5 | AL |
| S2-03 | S2 | Buckets de Supabase para fotos, modelos y texturas con políticas por usuario | 30 nov – 3 dic | 4 | MX |
| S3-01 | S3 | Subida de fotos desde la app: cámara, permisos y envío a storage | 7 – 12 dic | 6 | MA |
| S3-02 | S3 | Pantalla de etiquetado (categoría, color y ocasión) conectada a la API | 10 – 16 dic | 5 | MA |
| S3-03 | S3 | Despliegue en Render de la API y el panel con variables de entorno | 7 – 11 dic | 5 | AL |
| S3-04 | S3 | Consentimiento del aviso de privacidad: pantalla y registro en la BD | 14 – 18 dic | 5 | HA |
| S3b-01 | S3b | Documentación de arquitectura y despliegue v1 | 21 – 28 dic | 4 | AL |
| S3b-02 | S3b | Pruebas manuales de auth en 2 celulares | 29 – 31 dic | 3 | HA |
| S3b-03 | S3b | Revisión de pull requests y limpieza del repositorio | 30 dic – 3 ene | 3 | AL |
| S4-01 | S4 | Plantilla 3D: vestido con rig al avatar | 4 – 9 ene | 6 | MA |
| S4-02 | S4 | Plantilla 3D: tenis con rig al avatar | 8 – 13 ene | 6 | MX |
| S4-03 | S4 | Búsqueda por texto y paginación del closet | 5 – 11 ene | 4 | MA |
| S4-04 | S4 | Configurar Playwright y primeras pruebas E2E del panel | 11 – 15 ene | 5 | AL |
| S5-01 | S5 | Pagos: cuenta Stripe de prueba, SDK en la app y PaymentIntent en el backend | 18 – 26 ene | 6 | AL |
| S5-02 | S5 | Guion y ensayo de la Demo 1 | 25 – 28 ene | 3 | HA |
| S5-03 | S5 | Pruebas E2E del flujo de closet con Maestro | 20 – 27 ene | 5 | HA |
| S6-01 | S6 | Checkout en la app: pantalla de pago y confirmación en sandbox | 1 – 8 feb | 7 | AL |
| S6-02 | S6 | Carrito: modelo de datos y endpoints, con Alejandro | 2 – 9 feb | 6 | AL |
| S6-03 | S6 | Auditoría de dependencias y versiones fijas | 9 – 10 feb | 3 | MX |
| S6-04 | S6 | Entorno de pruebas estable en Render | 8 – 12 feb | 5 | AL |
| S7-01 | S7 | Checkout completo con comprobante y confirmación por webhook | 15 – 25 feb | 8 | AL |
| S7-02 | S7 | Administración: usuarios, marcas y métricas generales | 22 feb – 3 mar | 8 | AL |
| S7-03 | S7 | Pruebas E2E de la compra con Maestro | 24 feb – 3 mar | 5 | HA |
| S7-04 | S7 | Ensayo de la Demo 2 | 2 – 4 mar | 3 | HA |
| S8-01 | S8 | Espejo en la app: pantalla, permisos de cámara y selector de prendas | 8 – 16 mar | 7 | MX |
| S8-02 | S8 | Límite de intentos de acceso y revisión de secretos | 8 – 12 mar | 4 | MX |
| S8-03 | S8 | Pruebas E2E del flujo completo: registro a compra | 10 – 17 mar | 6 | HA |
| S8-04 | S8 | Respaldo de la BD y plan de restauración | 15 – 19 mar | 4 | AL |
| S8b-01 | S8b | Revisión de pull requests y limpieza de ramas | 22 – 24 mar | 3 | AL |
| S8b-02 | S8b | Documentación de despliegue | 24 – 26 mar | 3 | AL |
| S9-01 | S9 | Integración de todos los módulos en el entorno de pruebas | 29 mar – 6 abr | 6 | AL |
| S9-02 | S9 | Pruebas E2E ampliadas: panel y espejo | 30 mar – 7 abr | 5 | HA |
| S9-03 | S9 | Guion y ensayo de la Demo 3 | 6 – 8 abr | 3 | HA |
| S10-01 | S10 | Despliegue estable para la beta y monitoreo de errores | 12 – 17 abr | 6 | AL |
| S10-02 | S10 | Pruebas E2E completas y de regresión | 12 – 20 abr | 7 | HA |
| S10-03 | S10 | Corrección de defectos críticos | 17 – 23 abr | 5 | AL |
| S10-04 | S10 | Alertas de costo de hosting y del modelo de lenguaje | 13 – 15 abr | 3 | MX |
| C-01 | Cierre | Corrección de defectos críticos y despliegue de la versión final | 26 – 29 abr | 6 | AL |
| C-02 | Cierre | Etiquetar la versión 1.0 y generar el APK | 29 – 30 abr | 3 | AL |
| C-03 | Cierre | Lista de verificación final de entrega | 30 abr | 2 | HA |

Además es respaldo en 97 tareas: S0-03, S0-04, S0-09, S0-10, S1-06, S1-07, S1-08, S1-09, S1-13, S1-14, S1-18, S1-19, S1-20, S1-21, S1-23, S2-04, S2-05, S2-06, S2-08, S2-11, S2-12, S2-14, S3-05, S3-06, S3-08, S3-09, S3-11, S3-14, S3-17, S3-20, S3b-05, S3b-09, S4-05, S4-07, S4-08, S4-09, S4-10, S4-14, S4-15, S4-19, S4-20, S5-04, S5-05, S5-06, S5-08, S5-10, S5-12, S5-13, S5-14, S6-05, S6-06, S6-07, S6-14, S6-18, S7-05, S7-06, S7-07, S7-08, S7-09, S7-15, S7-17, S7-20, S8-06, S8-07, S8-08, S8-14, S8-15, S8-16, S8-19, S8b-03, S8b-04, S8b-07, S8b-08, S8b-10, S9-04, S9-05, S9-12, S9-13, S9-14, S9-15, S10-05, S10-06, S10-07, S10-08, S10-13, S10-14, S10-16, S10-17, S10-18, S10-19, C-04, C-05, C-06, C-10, C-12, C-13, C-15.

### Alejandro · Desarrollador · 47 tareas · 224 h

| ID | Sprint | Tarea | Fechas | h | Respaldo |
|---|---|---|---|---|---|
| S0-03 | S0 | Modelo de datos v1: diagrama ER de usuarios, prendas, outfits, marcas, productos y pedidos | 2 – 5 nov | 3 | AN |
| S0-04 | S0 | Elegir estructura de carpetas y ORM del backend y documentarlo | 5 – 6 nov | 2 | AN |
| S1-06 | S1 | Esquema en Prisma: usuarios, prendas, outfits, marcas, productos, variantes, pedidos y comisiones | 9 – 13 nov | 6 | AN |
| S1-07 | S1 | API base: estructura, validación con Zod y manejo de errores | 12 – 18 nov | 5 | AN |
| S1-08 | S1 | Conexión a Supabase y datos semilla de roles | 16 – 19 nov | 3 | AN |
| S1-09 | S1 | Variables de entorno de ejemplo y migraciones reproducibles de la BD | 9 – 20 nov | 4 | AN |
| S1-10 | S1 | Diagramas de secuencia de login, compra y cálculo de comisión | 16 – 20 nov | 3 | HA |
| S2-04 | S2 | Endpoints de marcas y productos con autorización por rol | 23 nov – 2 dic | 6 | AN |
| S2-05 | S2 | Esqueleto del panel web con Vite y shadcn/ui: login y estructura | 25 nov – 3 dic | 4 | AN |
| S2-06 | S2 | Datos semilla de usuarios de prueba, roles, marcas y productos de ejemplo | 23 nov – 4 dic | 4 | AN |
| S3-05 | S3 | Endpoints de prendas: crear, listar, editar y borrar con dueño | 7 – 11 dic | 6 | AN |
| S3-06 | S3 | Panel web: formulario de alta de producto con imagen y tallas | 9 – 16 dic | 6 | AN |
| S3-07 | S3 | Plantilla 3D: pantalón de mezclilla con rig al avatar | 11 – 17 dic | 6 | MA |
| S3-08 | S3 | Pruebas unitarias de endpoints de prendas y roles | 15 – 18 dic | 3 | AN |
| S3b-04 | S3b | Script de datos semilla del catálogo: marcas y productos ficticios | 22 – 30 dic | 5 | HA |
| S3b-05 | S3b | Documentación de la API v1 | 28 dic – 3 ene | 5 | AN |
| S4-05 | S4 | Inventario por talla: tablas, endpoints y reglas de descuento | 4 – 11 ene | 7 | AN |
| S4-06 | S4 | Plantilla 3D: pantalón de vestir con rig al avatar | 6 – 13 ene | 6 | MA |
| S4-07 | S4 | Panel: listado, edición y borrado de productos con inventario | 8 – 14 ene | 6 | AN |
| S4-08 | S4 | Pruebas unitarias de inventario | 13 – 15 ene | 2 | AN |
| S5-04 | S5 | Endpoint de catálogo: listado, búsqueda y filtros | 18 – 25 ene | 6 | AN |
| S5-05 | S5 | Panel: subida de texturas y modelos GLB por producto | 20 – 27 ene | 5 | AN |
| S5-06 | S5 | Corrección de defectos de S4 | 26 – 28 ene | 3 | AN |
| S6-05 | S6 | Pedidos: estados y transacciones | 1 – 9 feb | 8 | AN |
| S6-06 | S6 | Cálculo de comisión por línea de pedido | 5 – 10 feb | 5 | AN |
| S6-07 | S6 | Panel: vista de pedidos del empresario | 8 – 12 feb | 5 | AN |
| S6-08 | S6 | Pruebas unitarias de comisiones | 11 – 12 feb | 3 | HA |
| S7-05 | S7 | Historial de pedidos del usuario: endpoints | 15 – 22 feb | 5 | AN |
| S7-06 | S7 | Panel de ventas: totales, comisiones y gráficas | 15 feb – 1 mar | 9 | AN |
| S7-07 | S7 | Descuento de inventario al comprar con control de concurrencia | 22 – 27 feb | 6 | AN |
| S7-08 | S7 | Corrección de defectos de backend | 1 – 4 mar | 4 | AN |
| S8-05 | S8 | API de recomendación de talla por medidas, con Max | 8 – 15 mar | 6 | MX |
| S8-06 | S8 | Optimización de consultas y paginación del catálogo | 8 – 15 mar | 6 | AN |
| S8-07 | S8 | Exportación de reportes del panel en CSV | 12 – 18 mar | 5 | AN |
| S8-08 | S8 | Documentación de la API v2 | 16 – 19 mar | 4 | AN |
| S8b-03 | S8b | Pruebas del checkout en casos límite: pago fallido y stock agotado | 22 – 25 mar | 4 | AN |
| S8b-04 | S8b | Documentación técnica de la BD | 25 – 26 mar | 2 | AN |
| S9-04 | S9 | Corrección de defectos de integración en el backend | 29 mar – 6 abr | 6 | AN |
| S9-05 | S9 | Pruebas de carga básicas de la API | 31 mar – 7 abr | 5 | AN |
| S9-06 | S9 | Datos de demostración limpios para la Demo 3 | 6 – 8 abr | 3 | HA |
| S10-05 | S10 | Corrección de defectos de backend y panel | 12 – 20 abr | 8 | AN |
| S10-06 | S10 | Pruebas de carga y optimización final | 13 – 20 abr | 6 | AN |
| S10-07 | S10 | Documentación final de la API y del despliegue | 18 – 23 abr | 5 | AN |
| S10-08 | S10 | Respaldo y restauración probados | 21 – 22 abr | 2 | AN |
| C-04 | Cierre | Correcciones de backend y panel | 26 – 29 abr | 5 | AN |
| C-05 | Cierre | Congelar la BD, respaldo final y datos de demostración | 28 – 30 abr | 3 | AN |
| C-06 | Cierre | Guía de instalación y despliegue | 28 – 30 abr | 3 | AN |

Además es respaldo en 43 tareas: S0-01, S0-02, S0-08, S1-01, S1-02, S1-04, S1-17, S1-22, S2-01, S2-02, S2-10, S2-13, S2-15, S3-03, S3-13, S3-16, S3b-01, S3b-03, S3b-12, S4-04, S4-13, S4-16, S5-01, S5-11, S5-15, S6-01, S6-02, S6-04, S6-12, S6-16, S6-17, S7-01, S7-02, S7-18, S8-04, S8-10, S8b-01, S8b-02, S9-01, S10-01, S10-03, C-01, C-02.

### Mariana · Diseñadora · 45 tareas · 224 h

| ID | Sprint | Tarea | Fechas | h | Respaldo |
|---|---|---|---|---|---|
| S0-05 | S0 | Kit de diseño: paleta, temas claro, oscuro y neutro, Poppins y componentes base en Figma | 2 – 5 nov | 3 | HA |
| S0-06 | S0 | Wireframes de los flujos de closet y tienda | 5 – 6 nov | 2 | HA |
| S1-11 | S1 | Figma: pantallas de login, registro y closet | 9 – 13 nov | 6 | HA |
| S1-12 | S1 | Spike del avatar: cargar un avatar glTF con esqueleto en react-three-fiber en celular | 9 – 18 nov | 8 | MX |
| S1-13 | S1 | Medir fps y memoria con una prenda sobre el avatar | 16 – 19 nov | 4 | AN |
| S1-14 | S1 | Esqueleto de la app Expo: navegación, temas y Poppins | 17 – 20 nov | 3 | AN |
| S2-07 | S2 | Figma: tienda, detalle de producto y carrito | 23 – 30 nov | 6 | HA |
| S2-08 | S2 | Temas claro, oscuro y neutro y componentes base en la app | 25 nov – 3 dic | 5 | AN |
| S2-09 | S2 | Informe del spike 3D y ajustes de optimización de modelos | 23 – 25 nov | 3 | MX |
| S3-09 | S3 | Closet v1: lista de prendas con imágenes recortadas | 7 – 12 dic | 6 | AN |
| S3-10 | S3 | Plantilla 3D: camiseta con rig al avatar | 8 – 15 dic | 6 | MX |
| S3-11 | S3 | Pantalla de captura frontal y trasera con guía | 9 – 14 dic | 5 | AN |
| S3-12 | S3 | Ajustes de interfaz según pruebas internas | 15 – 18 dic | 4 | HA |
| S3b-06 | S3b | Plantilla 3D: camisa con rig al avatar | 21 – 30 dic | 6 | MX |
| S3b-07 | S3b | Pulido visual del closet | 30 dic – 3 ene | 4 | HA |
| S4-09 | S4 | Closet: filtros por categoría, color y ocasión | 4 – 9 ene | 6 | AN |
| S4-10 | S4 | Outfits: crear, guardar y marcar favoritos | 6 – 14 ene | 7 | AN |
| S4-11 | S4 | Visor 3D: carga de prendas GLB desde storage con caché | 5 – 13 ene | 6 | MX |
| S4-12 | S4 | Pruebas del closet en 2 celulares | 14 – 15 ene | 2 | HA |
| S5-07 | S5 | Catálogo con visor 3D en la app | 18 – 26 ene | 7 | MX |
| S5-08 | S5 | Detalle de producto con selector de talla y color | 22 – 28 ene | 5 | AN |
| S5-09 | S5 | Pulido visual para la Demo 1 | 27 – 28 ene | 2 | HA |
| S6-09 | S6 | Pantalla de medidas con guía y validación | 1 – 5 feb | 5 | HA |
| S6-10 | S6 | Avatar: morph targets de altura, pecho, cintura y cadera | 1 – 10 feb | 9 | MX |
| S6-11 | S6 | Probador: prenda sobre el avatar con selección de talla | 5 – 12 feb | 7 | MX |
| S7-09 | S7 | Pantallas de carrito, checkout e historial | 15 – 25 feb | 10 | AN |
| S7-10 | S7 | Probador integrado en el detalle de producto | 20 feb – 2 mar | 8 | MX |
| S7-11 | S7 | Pulido visual y accesibilidad: contraste y tamaños | 1 – 4 mar | 4 | HA |
| S7-12 | S7 | Pruebas en 2 celulares | 4 – 5 mar | 2 | HA |
| S8-09 | S8 | Chat del asistente en la app: interfaz | 8 – 16 mar | 8 | MX |
| S8-10 | S8 | Recomendación de talla en la pantalla de producto | 10 – 16 mar | 5 | AL |
| S8-11 | S8 | Espejo: interfaz y selector de prendas | 11 – 18 mar | 6 | MX |
| S8-12 | S8 | Pruebas de usabilidad internas | 18 – 19 mar | 2 | HA |
| S8b-05 | S8b | Pulido visual de tienda y carrito | 22 – 25 mar | 4 | HA |
| S8b-06 | S8b | Revisión de textos de la app | 25 – 26 mar | 2 | HA |
| S9-07 | S9 | Espejo integrado en la navegación de la app | 29 mar – 3 abr | 5 | MX |
| S9-08 | S9 | Rendimiento: carga de modelos y caché | 30 mar – 7 abr | 6 | MX |
| S9-09 | S9 | Pulido visual para la Demo 3 | 6 – 8 abr | 3 | HA |
| S10-09 | S10 | Corrección de defectos de interfaz y 3D | 12 – 21 abr | 9 | MX |
| S10-10 | S10 | Optimización de rendimiento en celular de gama media | 13 – 20 abr | 7 | MX |
| S10-11 | S10 | Revisión de accesibilidad y textos | 20 – 22 abr | 3 | HA |
| S10-12 | S10 | Material gráfico para la defensa | 22 – 23 abr | 2 | HA |
| C-07 | Cierre | Correcciones de interfaz y 3D | 26 – 29 abr | 5 | MX |
| C-08 | Cierre | Capturas y recursos gráficos para el manual | 28 – 29 abr | 3 | HA |
| C-09 | Cierre | Revisión final de textos y temas visuales | 29 – 30 abr | 3 | HA |

Además es respaldo en 34 tareas: S0-07, S1-03, S1-05, S1-15, S1-16, S3-01, S3-02, S3-07, S3-15, S3-18, S3-19, S3b-08, S3b-10, S3b-11, S4-01, S4-03, S4-06, S4-17, S4-18, S4-21, S6-13, S6-15, S7-13, S7-14, S7-19, S8-13, S8-17, S8-18, S8b-09, S9-10, S9-11, S10-15, C-11, C-14.

### Maximiliano (Max) · Tester · 43 tareas · 224 h

| ID | Sprint | Tarea | Fechas | h | Respaldo |
|---|---|---|---|---|---|
| S0-07 | S0 | Comparar ML Kit Pose y MediaPipe y definir requisitos del spike | 2 – 4 nov | 2 | MA |
| S0-08 | S0 | Elegir servicio de recorte de fondo y modelo de lenguaje con costos estimados | 4 – 6 nov | 3 | AL |
| S1-15 | S1 | Spike de pose: cámara con vision-camera y puntos del cuerpo en tiempo real | 9 – 17 nov | 9 | MA |
| S1-16 | S1 | Medir latencia y estabilidad de la pose con buena y mala luz | 16 – 19 nov | 4 | MA |
| S1-17 | S1 | Spike de recorte de fondo con 10 prendas de prueba | 12 – 18 nov | 5 | AL |
| S1-18 | S1 | Lista de verificación de seguridad para auth y API | 16 – 20 nov | 3 | AN |
| S2-10 | S2 | Endpoint de subida de fotos y servicio de recorte de fondo | 23 nov – 2 dic | 7 | AL |
| S2-11 | S2 | Cliente del modelo de lenguaje en el backend con límite por usuario | 27 nov – 4 dic | 4 | AN |
| S2-12 | S2 | Pruebas de seguridad de auth con peticiones directas a la API | 1 – 4 dic | 3 | AN |
| S3-13 | S3 | Recorte automático integrado en el flujo de subida | 7 – 12 dic | 7 | AL |
| S3-14 | S3 | Etiquetas sugeridas de color y categoría | 11 – 16 dic | 4 | AN |
| S3-15 | S3 | Plantilla 3D: sudadera con rig al avatar | 8 – 16 dic | 6 | MA |
| S3-16 | S3 | Límite de tamaño y validación de archivos subidos | 15 – 18 dic | 4 | AL |
| S3b-08 | S3b | Plantilla 3D: chamarra con rig al avatar | 21 – 30 dic | 6 | MA |
| S3b-09 | S3b | Prompt y pruebas del asistente con 10 closets de ejemplo | 30 dic – 3 ene | 4 | AN |
| S4-13 | S4 | Mejora del recorte con prendas difíciles | 4 – 11 ene | 8 | AL |
| S4-14 | S4 | Asistente de IA v0: chat con contexto del closet en el backend | 6 – 14 ene | 8 | AN |
| S4-15 | S4 | Revisión de seguridad de la subida y de los endpoints del closet | 13 – 15 ene | 3 | AN |
| S4-16 | S4 | Medición del costo por consulta del modelo de lenguaje | 14 – 15 ene | 2 | AL |
| S5-10 | S5 | Asistente de IA: recomendaciones de outfits con prendas reales | 18 – 27 ene | 8 | AN |
| S5-11 | S5 | Límite por usuario y manejo de errores del modelo de lenguaje | 22 – 27 ene | 4 | AL |
| S5-12 | S5 | Pruebas de inyección de instrucciones en el asistente | 27 – 28 ene | 2 | AN |
| S6-12 | S6 | Recomendación de talla: reglas y tabla de tallas por prenda | 1 – 9 feb | 7 | AL |
| S6-13 | S6 | Prototipo del espejo: cámara, pose y una prenda | 1 – 10 feb | 9 | MA |
| S6-14 | S6 | Revisión de seguridad de carrito y pedidos | 9 – 12 feb | 5 | AN |
| S7-13 | S7 | Espejo: seguimiento del torso y escala de la prenda | 15 – 26 feb | 10 | MA |
| S7-14 | S7 | Espejo: medición de fps y latencia en 2 celulares | 25 feb – 2 mar | 4 | MA |
| S7-15 | S7 | Asistente de IA: sugerencias de compra desde la tienda | 18 – 27 feb | 6 | AN |
| S7-16 | S7 | Informe técnico del espejo para la decisión del 5 de marzo | 2 – 4 mar | 4 | HA |
| S8-13 | S8 | Espejo v1: anclaje de la prenda y suavizado de movimiento | 8 – 17 mar | 10 | MA |
| S8-14 | S8 | Asistente: clima y ocasión en las recomendaciones | 9 – 16 mar | 6 | AN |
| S8-15 | S8 | Auditoría de seguridad parcial: IA y subida de archivos | 15 – 19 mar | 5 | AN |
| S8b-07 | S8b | Ajuste de instrucciones del asistente con casos reales | 22 – 25 mar | 4 | AN |
| S8b-08 | S8b | Notas de seguridad para la tesis | 25 – 26 mar | 2 | AN |
| S9-10 | S9 | Espejo v1 estable: luz, errores y reinicio de cámara | 29 mar – 7 abr | 8 | MA |
| S9-11 | S9 | Video del espejo grabado como plan B | 6 – 8 abr | 3 | MA |
| S9-12 | S9 | Pruebas de seguridad de la integración | 7 – 9 abr | 3 | AN |
| S10-13 | S10 | Auditoría de seguridad completa: roles, formularios, API e IA | 12 – 20 abr | 10 | AN |
| S10-14 | S10 | Corrección de hallazgos de seguridad | 17 – 23 abr | 6 | AN |
| S10-15 | S10 | Estabilidad del espejo con 3 usuarios distintos | 13 – 19 abr | 5 | MA |
| C-10 | Cierre | Verificar que los hallazgos de seguridad estén cerrados | 26 – 28 abr | 4 | AN |
| C-11 | Cierre | Correcciones del espejo y del asistente | 26 – 29 abr | 5 | MA |
| C-12 | Cierre | Informe final de seguridad | 29 – 30 abr | 2 | AN |

Además es respaldo en 23 tareas: S1-12, S2-03, S2-09, S3-10, S3b-06, S4-02, S4-11, S5-07, S6-03, S6-10, S6-11, S7-10, S8-01, S8-02, S8-05, S8-09, S8-11, S9-07, S9-08, S10-04, S10-09, S10-10, C-07.

### Hanny · Analista · 49 tareas · 224 h

| ID | Sprint | Tarea | Fechas | h | Respaldo |
|---|---|---|---|---|---|
| S0-09 | S0 | Requisitos funcionales y reglas de negocio v1: comisión, inventario y roles | 2 – 5 nov | 3 | AN |
| S0-10 | S0 | Plan de pruebas y definición de terminado | 5 – 6 nov | 2 | AN |
| S1-19 | S1 | Historias de usuario con criterios de aceptación de auth, closet y fotos | 9 – 13 nov | 6 | AN |
| S1-20 | S1 | Glosario y diccionario de datos v1 | 9 – 13 nov | 3 | AN |
| S1-21 | S1 | Análisis competitivo de apps de closet y probadores, y de marcas locales | 12 – 18 nov | 6 | AN |
| S1-22 | S1 | Matriz de trazabilidad v1: requisito, historia, tarea y prueba | 16 – 19 nov | 3 | AL |
| S1-23 | S1 | Borrador del aviso de privacidad | 18 – 20 nov | 3 | AN |
| S2-13 | S2 | Reglas de negocio v1 documentadas: comisión, inventario y estados de pedido | 23 – 30 nov | 5 | AL |
| S2-14 | S2 | Casos de prueba de auth y closet | 25 nov – 2 dic | 4 | AN |
| S2-15 | S2 | Historias de usuario de marketplace y panel de empresarios | 27 nov – 4 dic | 5 | AL |
| S3-17 | S3 | Casos de prueba de fotos y closet, ejecutados en celular | 9 – 15 dic | 6 | AN |
| S3-18 | S3 | Guía de captura de fotos para el usuario: luz y fondo | 7 – 10 dic | 3 | MA |
| S3-19 | S3 | Identidad de 5 a 8 marcas ficticias: nombre, logotipo conceptual y perfil | 7 – 17 dic | 8 | MA |
| S3-20 | S3 | Registro y priorización de defectos del sprint | 15 – 18 dic | 4 | AN |
| S3b-10 | S3b | Plantilla 3D: falda con rig al avatar | 21 – 29 dic | 4 | MA |
| S3b-11 | S3b | Texturas y variantes de color de las 3 primeras plantillas | 28 – 31 dic | 3 | MA |
| S3b-12 | S3b | Textos y precios de 20 productos ficticios | 30 dic – 3 ene | 3 | AL |
| S4-17 | S4 | Plantilla 3D: accesorio con rig al avatar | 4 – 9 ene | 5 | MA |
| S4-18 | S4 | Texturas y variantes de las plantillas 4 a 10 | 6 – 13 ene | 6 | MA |
| S4-19 | S4 | Inventario de licencias de recursos y registro de defectos | 4 – 15 ene | 4 | AN |
| S4-20 | S4 | Casos de prueba de inventario y filtros | 12 – 15 ene | 4 | AN |
| S4-21 | S4 | Entrevistas a 3 usuarios sobre el closet | 11 – 14 ene | 2 | MA |
| S5-13 | S5 | Pruebas de aceptación de la Demo 1: closet y panel | 25 – 28 ene | 5 | AN |
| S5-14 | S5 | Medición de KPIs del sprint y reporte de desviaciones | 28 – 29 ene | 3 | AN |
| S5-15 | S5 | Carga de 15 productos ficticios con texturas | 18 – 27 ene | 6 | AL |
| S6-15 | S6 | Pruebas de aceptación del probador y las medidas | 8 – 12 feb | 6 | MA |
| S6-16 | S6 | Carga de las marcas y 40 productos ficticios completos | 1 – 10 feb | 9 | AL |
| S6-17 | S6 | Casos de prueba de carrito y comisiones | 4 – 9 feb | 4 | AL |
| S6-18 | S6 | Reporte de KPIs del sprint | 12 feb | 2 | AN |
| S7-17 | S7 | Pruebas de aceptación de la Demo 2: marketplace | 1 – 4 mar | 8 | AN |
| S7-18 | S7 | Casos de prueba de pedidos e inventario | 15 – 24 feb | 6 | AL |
| S7-19 | S7 | Entrevistas a 5 usuarios y cuestionario de usabilidad | 22 feb – 3 mar | 6 | MA |
| S7-20 | S7 | Reporte de KPIs y matriz de trazabilidad v2 | 3 – 5 mar | 4 | AN |
| S8-16 | S8 | Pruebas de aceptación del asistente y las tallas | 12 – 18 mar | 6 | AN |
| S8-17 | S8 | Manual de usuario v1 | 8 – 18 mar | 8 | MA |
| S8-18 | S8 | Encuesta de satisfacción: diseño y primeras 10 respuestas | 8 – 15 mar | 4 | MA |
| S8-19 | S8 | Reporte de KPIs del sprint | 19 mar | 3 | AN |
| S8b-09 | S8b | Manual de usuario v2 | 22 – 25 mar | 4 | MA |
| S8b-10 | S8b | Capítulo de análisis de requisitos de la tesis | 25 – 26 mar | 2 | AN |
| S9-13 | S9 | Pruebas de aceptación de la Demo 3: sistema completo | 5 – 8 abr | 6 | AN |
| S9-14 | S9 | Plan de la beta: reclutar de 10 a 20 usuarios, guion y formularios | 29 mar – 6 abr | 5 | AN |
| S9-15 | S9 | Reporte de KPIs y matriz de trazabilidad v3 | 8 – 9 abr | 3 | AN |
| S10-16 | S10 | Ejecución de la beta con 10 a 20 usuarios | 13 – 22 abr | 10 | AN |
| S10-17 | S10 | Análisis de resultados: uso, finalización y satisfacción | 20 – 23 abr | 6 | AN |
| S10-18 | S10 | Registro y priorización de defectos de la beta | 14 – 22 abr | 3 | AN |
| S10-19 | S10 | Aviso de privacidad y política de datos finales | 14 – 16 abr | 2 | AN |
| C-13 | Cierre | Pruebas de aceptación finales | 27 – 29 abr | 5 | AN |
| C-14 | Cierre | Manual de usuario final | 26 – 30 abr | 3 | MA |
| C-15 | Cierre | Reporte final de KPIs del proyecto | 30 abr | 3 | AN |

Además es respaldo en 35 tareas: S0-05, S0-06, S1-10, S1-11, S2-07, S3-04, S3-12, S3b-02, S3b-04, S3b-07, S4-12, S5-02, S5-03, S5-09, S6-08, S6-09, S7-03, S7-04, S7-11, S7-12, S7-16, S8-03, S8-12, S8b-05, S8b-06, S9-02, S9-03, S9-06, S9-09, S10-02, S10-11, S10-12, C-03, C-08, C-09.

## 13. Colchón, entrega y rutina de seguimiento

Estas semanas no se planifican por tarea porque son el colchón del proyecto. Las fechas de vacaciones son por confirmar.

| Periodo | Actividades | Responsables | Entregable |
|---|---|---|---|
| 3 – 14 may | Defectos pendientes de la beta y mejoras de rendimiento | AN, AL, MA, MX | Cero defectos críticos |
| 3 – 28 may | Documentación técnica final: arquitectura, API y despliegue | AN, AL | Documentación técnica v1.0 |
| 3 – 28 may | Manual de usuario y capítulo de resultados de la beta | HA, MA | Manual v1.0 y capítulo de resultados |
| 17 may – 30 jun | Tesis: AN arquitectura y despliegue, AL base de datos y API, MA interfaz y 3D, MX IA, visión y seguridad, HA requisitos, pruebas y resultados | Todos | Borrador completo |
| Junio | Revisión con el asesor y correcciones | Todos | Tesis revisada |
| 1 – 17 jul | Ensayos de defensa y video demo | Todos | Video demo y presentación |
| 20 – 28 jul | Vacaciones | Todos | Sin trabajo del proyecto |
| 29 jul – 21 ago | Ensayo final y entrega | Todos | Entrega final |

### Rutina de seguimiento

- Lunes: planificación de 30 minutos con las tareas del sprint, horas y respaldos.
- Viernes: revisión de 30 minutos con avances, bloqueos y tareas vencidas.
- Cierre de sprint: demo funcional, medición de KPIs por Hanny, reporte de Angel y retrospectiva de 30 minutos.
- Si una tarea se atrasa dos días: el respaldo la retoma y se avisa en la revisión del viernes.
- Si el sprint supera el 80 % de carga: se recorta alcance según la regla de recorte, nunca la fecha.

Nota: la app Scrum interna del equipo (ASP.NET Core 9 con Kanban, calendario, tiempos y KPIs; Fase 1 del tablero entregada) es una herramienta aparte y no cuenta en estas horas.

## 14. La exposición

**Qué se pide (rúbrica «Expo Semana 13», UTTEC).** Máximo 30 minutos por equipo y 6 integrantes. Cada integrante tiene un tema, idioma (español o inglés) y vestimenta uniforme. Criterios: material de apoyo 20 % (información relevante y resumida, colores justificados, diseño creativo y sin faltas de ortografía); visualización del proyecto 20 % (mostrar interfaces o funcionamiento, y explicar el proceso); ¿quiénes son? 15 % (logo y significado, nombre de empresa e integrantes, slogan); vestimenta 10 %; exposición bilingüe 15 % (parte en inglés clara 10 puntos y en español 5); «No pierdas mi atención» 20 % (docente, grupo, lenguaje verbal y corporal, y terminar en máximo 30 minutos, 5 puntos).

**Conflicto de tiempo.** El equipo planea una exposición de **1 hora**, pero la rúbrica da 5 puntos por terminar en 30 minutos o menos. La página de la exposición trae un botón 60 / 30 minutos que cambia el reloj y reescala los minutos de cada escena. Conviene confirmar con el docente.

**Formato.** La exposición se hace en una **página web** (un solo archivo HTML), que incluye el prototipo interactivo en un teléfono, el espejo 3D, fondo animado con los colores del logo, reloj, indicador de ritmo y notas del orador (teclas: flechas para avanzar, T reloj, N notas, F pantalla completa).

**Orden de las 19 escenas (plan de 60 minutos):** portada (0:00, Angel), trailer (1:30), agenda (3:30, Angel), equipo (4:30), logo (7:00, Mariana), marca y slogan (8:30, Mariana), problema (10:00, Maximiliano, en inglés), solución (14:00, Mariana, en inglés), módulos (18:00, Mariana, en inglés), proceso (22:00, Hanny, en inglés), cronograma (26:00, Hanny, en inglés), tecnología (29:00, Alejandro, en inglés), arquitectura (32:00, Alejandro, en inglés), demo en vivo (35:00, Angel y Mariana, en inglés, 10 minutos), espejo 3D (45:00, Alejandro, en inglés), negocio (48:00, Hanny, en español), calidad y riesgos (51:00, Maximiliano, en español), avance (53:00, Maximiliano, en español) y cierre con preguntas (55:00, Angel, español e inglés). Como las diapositivas están en español, la parte en inglés se dice en voz alta (las notas traen la frase).

**Trailer.** De 60 a 90 segundos, con el espejo imponente, el logo y el slogan. Guion de 5 escenas: problema, avatar 3D, marketplace, espejo y cierre. Se generaría con IA de video (por ejemplo OpenArt o Veo vía Weave; Weave no está vinculado y requiere plan de pago). El equipo mencionó OpenArt como herramienta; los prompts por escena están preparados. El texto y el logo se agregan al editar el video.

**Despliegue.** El equipo quiere subir la página a Render desde el repositorio `katto-code/expo`. El error de Docker venía de un Dockerfile casi vacío (2 bytes). Se entregaron un `Dockerfile` con `nginx:alpine` y el `index.html` de la exposición para la raíz del repositorio. Alternativa sin Docker: sitio estático en Render.

**Pendientes de la exposición:** fotos del equipo con uniforme, uniforme definido, porcentaje de comisión, confirmar el significado del logo, cargar el video del trailer, estado real de «Hecho» y «En marcha» el día de la expo y un video de respaldo de la demo. El video de YouTube de referencia que compartió el equipo no se pudo abrir (límite de peticiones); falta describir su estilo si se quiere imitar.

## 15. Dónde estamos, riesgos y decisiones abiertas

**Ya hecho:** plan maestro, mapeo de 232 tareas, diagrama UML de navegación, diseño de 12 pantallas en Figma, prototipo interactivo con panel y espejo 3D, tablero Kanban Fase 1 de la app Scrum, presentación y página web de la exposición con los colores del logo, y documentos de contexto.

**Por confirmar:** avance real de S0 y S1 y el resultado del go/no-go del 3D (programado para el 20 de noviembre de 2026). Se ofrecieron tres tareas nuevas para S1 (S1-24 a S1-26) y ajustes de horas que no se han aplicado al mapa.

**Riesgos principales:**
- El avatar 3D puede no rendir bien en celulares de gama media (el mayor reto técnico).
- Retraso en las plantillas 3D, que sostienen la tienda, el probador y el espejo.
- Pose inestable si se elige el espejo con cámara.
- Seguridad y privacidad de fotos y medidas.
- Costos de IA y servicios en la nube.
- Cansancio del equipo.

**Decisiones abiertas:**
1. Nombre definitivo (Monzati, Monzatti o Monsati) y registro ante el IMPI.
2. Empresarios en la misma app o en un panel web aparte.
3. Espejo: simulado, con cámara o solo modelo 3D.
4. Si se mantiene el rol de administrador.
5. Diseño de carrito, checkout y pedidos.
6. Paleta final (logo azul y violeta frente a negro y dorado del diseño anterior).
7. Reasignar las tareas de IA, visión y seguridad ahora que Maximiliano es tester.
8. Duración de la exposición: 60 o 30 minutos.
9. Política de la universidad sobre el uso de IA y requisitos de la tesis.
10. Calendario escolar 2027.

## 16. Archivos y enlaces del proyecto

- Página de la exposición (artefacto): https://claude.ai/artifact/CeB6JbmCAHfg5WRSRCDdsQ
- Presentación en diapositivas (versión anterior, en español): https://claude.ai/artifact/DanTjmSM1zEZeE1HtXxZ9o
- Prototipo interactivo: https://claude.ai/artifact/JKY8nmbRYPMY1B32ZRFBDa
- Plan maestro, prompt maestro, mapeo de tareas y contexto: documentos en Claude Docs.
- Diseño en Figma: archivo e95bRpgKg7fGvMCNBq4L07.
- Repositorio de la exposición: github.com/katto-code/expo
