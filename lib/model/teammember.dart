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
      photoUrl: '/assets/forest.png'),
  TeamMember(
      name: 'Sujatha Panduri',
      role: 'General Secretary',
      photoUrl: '/assets/forest.png'),
  TeamMember(
      name: 'Ashok Ambati',
      role: 'Vice President',
      photoUrl: '/assets/forest.png'),
  TeamMember(
      name: 'Vasanth Kumar',
      role: 'Joint Secretary',
      photoUrl: '/assets/forest.png'),
  TeamMember(
      name: 'Sai Inampudi',
      role: 'Joint Secretary',
      photoUrl: '/assets/forest.png'),
  TeamMember(
      name: 'Ramya M', role: 'Treasurer', photoUrl: '/assets/forest.png'),
  TeamMember(
      name: 'Tejaswin Kanagala',
      role: 'Executive Committee',
      photoUrl: '/assets/forest.png'),
  TeamMember(
      name: 'Satheesh Gollapudi',
      role: 'Executive Committee',
      photoUrl: '/assets/forest.png'),
  // Add more team members
];
