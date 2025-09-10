# 📱 Aplicación Móvil

## 👥 Integrantes
- Luis Miguel Castro Villegas  
- Juan Camilo Bustamante Rodas  
- Carlos Eduardo Palacios  

---

## 📝 Descripción del Proyecto
Este proyecto es una aplicación móvil desarrollada en **Flutter** como parte del curso universitario.  
Su objetivo principal es implementar pantallas básicas de autenticación y navegación, con un diseño adaptable a cualquier dispositivo.  

---

## 🚀 Funcionalidades Implementadas (actualizado 2)
- ✅ **Ventanas principales:** Inicio, Registro, Login y Home.  
- ✅ **Opción para cerrar el registro** y permitir que los usuarios omitan esta pantalla si no desean registrarse.  
- ✅ **Diseño responsivo**, asegurando que la aplicación se adapte correctamente a distintos tamaños de pantalla.  
- ✅ **Widgets globales reutilizables**, que mejoran la lógica, el mantenimiento y la consistencia del diseño de la app.  
- ✅ **Botón de modo oscuro**, presente en todas las pantallas, que permite cambiar los colores de la aplicación a una paleta de grises oscuros.  
- ✅ **Integración con la API de Google Maps**, mostrando un mapa centrado en Buenaventura con un marcador inicial.  
- ✅ **Mejoras de lógica y estructura**, centralizando el uso de `AuthCard` y botones globales para mantener un diseño uniforme.  

---

## ⚙️ Tecnologías utilizadas
- [Flutter](https://flutter.dev/)  
- [Dart](https://dart.dev/)  

---

## 👨‍💻 Cómo ejecutar el proyecto
- Clonar el repositorio:
git clone https://github.com/Miguel0Ito05/AplicaionMovil.git
- Entrar al proyecto:
cd AplicaionMovil
- Instalar dependencias:
flutter pub get
- Ejecutar la aplicación:
flutter run


---

## 📌 Estado actual
Actualmente la app cuenta con:
- Pantallas principales funcionales.  
- Modo oscuro aplicado en todas las vistas.  
- Mapa interactivo con Google Maps integrado.  
- Diseño consistente gracias al uso de widgets globales.  

Próxima entrega: integración de rutas personalizadas en Google Maps y manejo de usuarios.

---

## 📸 Capturas

### Pantalla de Inicio ![Inicio](assets/screenshots/inicio.png) 

### Pantalla de Login ![Login](assets/screenshots/login.png) 

### Pantalla de registro ![Registro](assets/screenshots/registro.png) 

### Pantalla de home ![Home](assets/screenshots/home.png)

### Pantalla de Inicio con Modo Oscuro ![Home](assets/screenshots/modoOscuro.png)

### Pagina home con Mapa de Google Implementado API ![Home](assets/screenshots/mapa.png)

---


## 📂 Estructura del Proyecto

```plaintext
lib/
├── main.dart
├── pages/
│   ├── login
│   ├── register
│   ├── home
│   └── inicio
└── widgets/
    ├── buttons
    ├── custom_text
    └── auth_card
