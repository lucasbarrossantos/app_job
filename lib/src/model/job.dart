class Job {
  String title;
  String location;
  String level;
  String salary;
  String logo;
  bool favorite;

  Job(
      {this.title,
      this.location,
      this.level,
      this.salary,
      this.logo,
      this.favorite = false});

  List<Job> get jobs => [
        new Job(
            title: 'Desenvolvedor Flutter',
            location: 'Recife',
            level: 'PL/SR',
            salary: 'A combinar',
            logo:
                'https://img2.gratispng.com/20180605/iif/kisspng-everis-ntt-data-business-consulting-firm-organizat-speakers-5b171b756301f3.8961483215282410134056.jpg'),
        new Job(
            title: 'Desenvolvedor Backend',
            location: 'Recife',
            level: 'JR/PL/SR',
            salary: 'A combinar',
            logo:
                'https://logodownload.org/wp-content/uploads/2019/08/nubank-logo-0.png'),
        new Job(
            title: 'Desenvolvedor Frontend',
            location: 'Florianópolis',
            level: 'JR/PL/SR',
            salary: 'A combinar',
            logo:
                'https://is3-ssl.mzstatic.com/image/thumb/Purple113/v4/fd/d9/69/fdd96953-e593-9846-3673-e1b9a0339c98/AppIcon-0-0-1x_U007emarketing-0-0-0-6-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/1200x630wa.png'),
        new Job(
            title: 'Desenvolvedor Java',
            location: 'São Paulo',
            level: 'JR/PL/SR',
            salary: 'A combinar',
            logo:
                'https://banner2.cleanpng.com/20180324/uee/kisspng-samsung-i8000-samsung-galaxy-logo-samsung-electron-samsung-5ab70be8c5a2d1.6357824915219455768095.jpg'),
      ];

  List<Job> get recentJobs => [
        new Job(
            title: 'Desenvolvedor Frontend',
            location: 'Florianópolis',
            level: 'JR/PL/SR',
            salary: 'A combinar',
            favorite: true,
            logo:
                'https://is3-ssl.mzstatic.com/image/thumb/Purple113/v4/fd/d9/69/fdd96953-e593-9846-3673-e1b9a0339c98/AppIcon-0-0-1x_U007emarketing-0-0-0-6-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/1200x630wa.png'),
        new Job(
            title: 'Desenvolvedor Java',
            location: 'São Paulo',
            level: 'JR/PL/SR',
            salary: 'A combinar',
            logo:
                'https://banner2.cleanpng.com/20180324/uee/kisspng-samsung-i8000-samsung-galaxy-logo-samsung-electron-samsung-5ab70be8c5a2d1.6357824915219455768095.jpg'),
        new Job(
            title: 'UI/UX Designer',
            location: 'Recife',
            level: 'JR/PL/SR',
            salary: 'A combinar',
            logo:
                'https://santosbancarios.com.br/uploads/images/2020/01/itau-e-acusado-de-racismo-1580499787.jpg'),
        new Job(
            title: 'Desenvolvedor Fluter',
            location: 'Recife',
            level: 'JR/PL/SR',
            salary: 'A combinar',
            logo:
                'https://www.tribunapr.com.br/wp-content/uploads/2020/03/17174926/mercado-livre-reproducao-w-970x550.jpg',
            favorite: true),
        new Job(
            title: 'Desenvolvedor Java/Backend',
            location: 'Recife',
            level: 'PL/SR',
            salary: 'A combinar',
            logo:
                'https://santosbancarios.com.br/uploads/images/2020/01/itau-e-acusado-de-racismo-1580499787.jpg',
            favorite: true),
        new Job(
            title: 'Desenvolvedor Full Stack',
            location: 'Recife',
            level: 'PL/SR',
            salary: 'A combinar',
            logo: 'https://logospng.org/wp-content/uploads/b2w.png'),
      ];
}
