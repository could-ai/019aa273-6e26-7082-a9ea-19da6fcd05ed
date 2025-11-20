class CVData {
  final String name;
  final String jobTitle;
  final String email;
  final String phone;
  final String location;
  final String summary;
  final List<Experience> experience;
  final List<Education> education;
  final List<String> skills;

  CVData({
    required this.name,
    required this.jobTitle,
    required this.email,
    required this.phone,
    required this.location,
    required this.summary,
    required this.experience,
    required this.education,
    required this.skills,
  });
}

class Experience {
  final String company;
  final String role;
  final String duration;
  final String description;

  Experience({
    required this.company,
    required this.role,
    required this.duration,
    required this.description,
  });
}

class Education {
  final String institution;
  final String degree;
  final String duration;

  Education({
    required this.institution,
    required this.degree,
    required this.duration,
  });
}

// Datos de ejemplo (Placeholder)
final CVData placeholderCV = CVData(
  name: "Tu Nombre Aquí",
  jobTitle: "Desarrollador de Software",
  email: "correo@ejemplo.com",
  phone: "+123 456 7890",
  location: "Ciudad, País",
  summary: "Soy un profesional apasionado con experiencia en crear soluciones innovadoras. Me especializo en desarrollo móvil y web, buscando siempre aprender nuevas tecnologías y mejorar la experiencia del usuario.",
  experience: [
    Experience(
      company: "Empresa Tecnológica A",
      role: "Desarrollador Senior",
      duration: "2021 - Presente",
      description: "Liderazgo de equipo, arquitectura de software y desarrollo de nuevas funcionalidades.",
    ),
    Experience(
      company: "Startup Innovadora B",
      role: "Desarrollador Junior",
      duration: "2019 - 2021",
      description: "Desarrollo frontend, corrección de bugs y colaboración con diseñadores.",
    ),
  ],
  education: [
    Education(
      institution: "Universidad Nacional",
      degree: "Ingeniería de Sistemas",
      duration: "2015 - 2019",
    ),
  ],
  skills: ["Flutter", "Dart", "Firebase", "Git", "UI/UX Design", "SQL", "Agile"],
);
