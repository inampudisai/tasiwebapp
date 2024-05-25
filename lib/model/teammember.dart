class TeamMember {
  final String name;
  final String role;
  final String photoUrl;

  TeamMember({required this.name, required this.role, required this.photoUrl});
}

final List<TeamMember> teamMembers = [
  TeamMember(
      name: 'Sundeep Dagupati',
      role: 'President',
      photoUrl: 'forest.png',),
  TeamMember(
      name: 'Sujatha Panduri',
      role: 'General Secretary',
      photoUrl: 'forest.png',),
  TeamMember(
      name: 'Ashok Ambati',
      role: 'Vice President',
      photoUrl: 'images/ashok.jpg',),
  TeamMember(
      name: 'Vasanth Kumar',
      role: 'Joint Secretary',
      photoUrl: 'forest.png',),
  TeamMember(
      name: 'Sai Inampudi',
      role: 'Joint Secretary',
      photoUrl: 'forest.png',),
  TeamMember(
      name: 'Ramya M', role: 'Treasurer', photoUrl: 'forest.png',),
  TeamMember(
      name: 'Tejaswin Kanagala',
      role: 'Executive Committee',
      photoUrl: 'forest.png',),
  TeamMember(
      name: 'Satheesh Gollapudi',
      role: 'Executive Committee',
      photoUrl: 'forest.png',),
  // Add more team members
];
