import 'package:flutter/material.dart';
import 'cv_data.dart';

class CVScreen extends StatelessWidget {
  final CVData data;

  const CVScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(context),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSectionTitle(context, "Perfil Profesional"),
                  Text(
                    data.summary,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 24),
                  
                  _buildSectionTitle(context, "Experiencia Laboral"),
                  ...data.experience.map((exp) => _buildExperienceItem(context, exp)),
                  
                  const SizedBox(height: 24),
                  
                  _buildSectionTitle(context, "Educación"),
                  ...data.education.map((edu) => _buildEducationItem(context, edu)),
                  
                  const SizedBox(height: 24),
                  
                  _buildSectionTitle(context, "Habilidades"),
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 8.0,
                    children: data.skills.map((skill) => Chip(
                      label: Text(skill),
                      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                    )).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 60, 20, 30),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundColor: Colors.white,
            child: Icon(Icons.person, size: 50, color: Colors.grey),
          ),
          const SizedBox(height: 16),
          Text(
            data.name,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            data.jobTitle,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildContactIcon(Icons.email, data.email),
              const SizedBox(width: 16),
              _buildContactIcon(Icons.phone, data.phone),
              const SizedBox(width: 16),
              _buildContactIcon(Icons.location_on, data.location),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildContactIcon(IconData icon, String tooltip) {
    return Tooltip(
      message: tooltip,
      child: Icon(icon, color: Colors.white70, size: 20),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.bold,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }

  Widget _buildExperienceItem(BuildContext context, Experience exp) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  exp.role,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  exp.duration,
                  style: TextStyle(color: Colors.grey[600], fontSize: 12),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              exp.company,
              style: TextStyle(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            Text(exp.description),
          ],
        ),
      ),
    );
  }

  Widget _buildEducationItem(BuildContext context, Education edu) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.school, color: Theme.of(context).colorScheme.secondary, size: 20),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  edu.institution,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('${edu.degree} • ${edu.duration}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
