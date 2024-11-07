import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'noti.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = 
FlutterLocalNotificationsPlugin();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(WorkersUnionApp());
}

class WorkersUnionApp extends StatelessWidget {
  const WorkersUnionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Workers Union',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChooseRole(),
    );
  }
}

class ChooseRole extends StatelessWidget {
  const ChooseRole({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('chooserole.jpg'),
            const Text(
              'Pilih Peran Anda',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WelcomeScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 223, 255, 0),
                minimumSize: const Size(200, 50),
                side: const BorderSide(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: const Text('Calon Pekerja'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WelcomeScreenPerusahaan()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size(200, 50),
                side: const BorderSide(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: const Text('Perusahaan', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('GambarHalamanUtama.jpg'),
            const Text(
              'Workers Union',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              style:ElevatedButton.styleFrom(
                minimumSize: const Size(200,50),
                side: const BorderSide(
                  color: Colors.black, 
                  width: 1,          
                ),
              ),
              child: const Text('Masuk'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HalamanRegistrasi()));
              },
              
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size(200,50),
                side: const BorderSide(
                  color: Colors.black,  
                  width: 1,           
                ),
              ),
              child: const Text('Daftar', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

class WelcomeScreenPerusahaan extends StatelessWidget {
  const WelcomeScreenPerusahaan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('perusahaan.jpg'),
            const Text(
              'Workers Union',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LoginScreenPerusahaan()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: const Size(200, 50),
                side: const BorderSide(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: const Text('Masuk'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HalamanRegistrasiPerusahaan()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size(200, 50),
                side: const BorderSide(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: const Text('Daftar', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginScreenPerusahaan extends StatelessWidget {
  const LoginScreenPerusahaan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Masuk Perusahaan'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HalamanRegistrasiPerusahaan()));
            },
            child: const Text('Daftar', style: TextStyle(color: Colors.white)),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text('Lupa Password?'),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Masuk', style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 10),
            const Text('atau'),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {},
              label: const Text('Lanjutkan dengan Google'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
                side: const BorderSide(color: Colors.black12),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.facebook),
              label: const Text('Lanjutkan dengan Facebook',
                  style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class HalamanRegistrasiPerusahaan extends StatelessWidget {
  const HalamanRegistrasiPerusahaan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Daftar Perusahaan',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'Nama',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'Nama Perusahaan',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'No Hp',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const LoginScreenPerusahaan()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    minimumSize: const Size(280.0, 50),
                  ),
                  child: Text('Daftar',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {},
                  child: Text('Kembali',
                      style: GoogleFonts.poppins(
                          color: const Color(0xFF000000),
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(height: 20),
              Spacer(),
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton.icon(
                      onPressed: () {
                        showPrivacyPolicyDialog(context);
                      },
                      icon: Icon(
                        Icons.privacy_tip,
                        size: 16,
                        color: const Color(0xFF6A0DAD),
                      ),
                      label: Text(
                        'Kebijakan Privasi',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: const Color(0xFF6A0DAD),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    TextButton.icon(
                      onPressed: () {
                        showTermsAndConditionsDialog(context);
                      },
                      icon: Icon(
                        Icons.description,
                        size: 16,
                        color: const Color(0xFF6A0DAD),
                      ),
                      label: Text(
                        'Syarat & Ketentuan',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: const Color(0xFF6A0DAD),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class LoginScreen extends StatefulWidget{
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState()=>_LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState(){
    super.initState();
    Noti.intialize(flutterLocalNotificationsPlugin);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Masuk'),
        actions: [
          TextButton(
            onPressed: () {
              Noti.showBigTextNotification(title: "Selamat Datang", body: "Selamat anda berhasil masuk ke Workers Union", fln: flutterLocalNotificationsPlugin);
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => HalamanRegistrasi()));
            },
            child: const Text('Daftar', style: TextStyle(color: Colors.white)),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                   Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HalamanLupaKataSandi()));
                },
                child: const Text('Lupa Password?'),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Masuk'),
            ),

            const SizedBox(height: 10),
            const Text('atau'),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {},
              //icon: Icon(Icons.google),
              label: const Text('Lanjutkan dengan Google'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
                side: const BorderSide(color: Colors.black12),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.facebook),
              label: const Text('Lanjutkan dengan Facebook'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HalamanRegistrasi extends StatelessWidget {
  const HalamanRegistrasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Workers Union',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: const TextField(
                decoration: InputDecoration(
                  labelText: 'Nama Depan',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              child: const TextField(
                decoration: InputDecoration(
                  labelText: 'Nama Belakang',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0A66C2),
                  minimumSize: const Size(280.0, 50),
                ),
                child: Text(
                  'Lanjutkan',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Kembali',
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF000000),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Spacer(),
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton.icon(
                    onPressed: () {
                      showPrivacyPolicyDialog(context);
                    },
                    icon: Icon(
                      Icons.privacy_tip,
                      size: 16,
                      color: const Color(0xFF6A0DAD),
                    ),
                    label: Text(
                      'Kebijakan Privasi',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: const Color(0xFF6A0DAD),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  TextButton.icon(
                    onPressed: () {
                      showTermsAndConditionsDialog(context);
                    },
                    icon: Icon(
                      Icons.description,
                      size: 16,
                      color: const Color(0xFF6A0DAD),
                    ),
                    label: Text(
                      'Syarat & Ketentuan',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: const Color(0xFF6A0DAD),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void showPrivacyPolicyDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Kebijakan Privasi'),
        content: Container(
          width: double.maxFinite,
          height: 300.0,
          child: ListView(
            children: const <Widget>[
              Text(
                "Kebijakan privasi ini menjelaskan bagaimana informasi Anda dikumpulkan, digunakan, dan dilindungi. "
                    "Dengan menggunakan aplikasi ini, Anda menyetujui pengumpulan informasi sesuai kebijakan ini.",
              ),
              SizedBox(height: 10),
              Text(
                "1. Pengumpulan Data: Kami mengumpulkan informasi pribadi yang diberikan oleh pengguna.",
              ),
              SizedBox(height: 10),
              Text(
                "2. Penggunaan Data: Data akan digunakan untuk meningkatkan layanan kami.",
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text("Tutup"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

void showTermsAndConditionsDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Syarat & Ketentuan'),
        content: Container(
          width: double.maxFinite,
          height: 300.0,
          child: ListView(
            children: const <Widget>[
              Text(
                "Dengan menggunakan aplikasi ini, Anda setuju untuk mematuhi syarat dan ketentuan berikut.",
              ),
              SizedBox(height: 10),
              Text(
                "1. Penggunaan Aplikasi: Aplikasi hanya boleh digunakan sesuai hukum yang berlaku.",
              ),
              SizedBox(height: 10),
              Text(
                "2. Kewajiban Pengguna: Pengguna bertanggung jawab atas semua aktivitas yang dilakukan di aplikasi ini.",
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text("Tutup"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

class HalamanLupaKataSandi extends StatelessWidget{
  const HalamanLupaKataSandi({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Workers Union', 
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: <Widget>[
            Text('Lupa Kata Sandi?', style: GoogleFonts.poppins(
              fontSize: 30
            )),
            const SizedBox(height: 10,),
            SizedBox(
              width: 350.0,
              child: Text('Setel ulang kata sandi anda dengan memasukkan email anda',  
                style: GoogleFonts.poppins(
                  fontSize: 14
                )
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              child: const TextField(
                decoration: InputDecoration(
                  labelText: 'Email anda',
                  border: OutlineInputBorder(),
                ),
              ), 
            ),
            const SizedBox(height: 20,),
            Align(
              alignment: Alignment.center,
              child: 
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HalamanKirimKodeLupaKataSandi()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:const Color(0xFF0A66C2),
                  minimumSize: const Size(280.0, 50),
                ),
                child: Text('Reset Kata Sandi', style: GoogleFonts.poppins(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: 
              TextButton(
                onPressed: () {},
                child: Text('Kembali', style: GoogleFonts.poppins(color: const Color(0xFF000000), fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            )
          ],
        ),
      )
    );
  }
}

class HalamanKirimKodeLupaKataSandi extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Workers Union', 
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: <Widget>[
            Text('Kami baru saja mengirimkan kode ke email anda', style: GoogleFonts.poppins(
              fontSize: 24
            )),
            SizedBox(height: 10,),
            Container(
              width: 350.0,
              child: Text('Masukkan 6 digit kode verifikasi yang dikirimkan ke ******@gmail.com.',  
                style: GoogleFonts.poppins(
                  fontSize: 12
                )
              ),
            ),
            SizedBox(height: 20,),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Kode 6 digit',
                  border: OutlineInputBorder(),
                ),
              ), 
            ),
            TextButton(
                onPressed: () {},
                child: Text('Kirim ulang kode', style: GoogleFonts.poppins(color: Colors.blue)),
              ),
            Align(
              alignment: Alignment.center,
              child: 
              ElevatedButton(
                onPressed: () {Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => HalamanKataSandiBaru()));},
                style: ElevatedButton.styleFrom(
                  backgroundColor:Color(0xFF0A66C2),
                  minimumSize: Size(280.0, 50),
                ),
                child: Text('Kirim', style: GoogleFonts.poppins(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      )
    );
  }
}

class HalamanKataSandiBaru extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Workers Union', 
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: <Widget>[
            Text('Pilih kata sandi baru', style: GoogleFonts.poppins(
              fontSize: 24
            )),
            SizedBox(height: 10,),
            Container(
              width: 350.0,
              child: Text('Buat kata sandi dengan panjang minimal 8 karakter',  
                style: GoogleFonts.poppins(
                  fontSize: 12
                )
              ),
            ),
            SizedBox(height: 20,),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Kata sandi baru',
                  border: OutlineInputBorder(),
                ),
              ), 
            ),
            SizedBox(height: 10,),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Ketik ulang kata sandi baru',
                  border: OutlineInputBorder(),
                ),
              ), 
            ),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.center,
              child: 
              ElevatedButton(
                onPressed: () {Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));},
                style: ElevatedButton.styleFrom(
                  backgroundColor:Color(0xFF0A66C2),
                  minimumSize: Size(280.0, 50),
                ),
                child: Text('Kirim', style: GoogleFonts.poppins(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      )
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),  
    Center(child: Text('Messages Screen')),  
    SettingsPage(),  
  ];

  void _onBottomNavTap(int index) {
    setState(() {
      _currentIndex = index;
    });

    if (index == 2) { 
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SettingsPage()),
      );
    } else if (index==0){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } else if (index==1){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MessagePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Workers Union',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none, size: 35.0),
            onPressed: () {
              Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationScreen()));
            },
          ),
        ],
      ),
      body: Container(
  decoration: BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      colors: [
        const Color.fromARGB(255, 30, 134, 220).withOpacity(0.1),
        const Color.fromARGB(255, 31, 130, 212).withOpacity(0.02), 
        Colors.white.withOpacity(0.01),
        Colors.white,
      ],
      stops: [0.0, 0.8, 0.6, 1.0], // Adjusted stops for the new colors
    ),
  
  ),
  child: Padding(
    padding: const EdgeInsets.all(14.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSearchBar(),
        SizedBox(height: 14),
        _buildSectionTitle('Pekerjaan Unggulan'),
        SizedBox(height: 24),
        _buildJobContainerList(),
        SizedBox(height: 14),
        _buildSectionTitle('Disarankan'),
        SizedBox(height: 50),
        _buildRecommendedJobList(),
        
      ],
    ),
  ),
),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onBottomNavTap,
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(
        color: Color(0xFFF6F4FD),
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(Icons.search, size: 36.0),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'cari pekerjaan',
                border: InputBorder.none,
              ),
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w300),
            ),
          ),
          VerticalDivider(color: Colors.black, width: 1.0),
          IconButton(
            icon: Icon(Icons.tune, color: Colors.grey),
            iconSize: 34.0,
            onPressed: () {
              print('Filter icon pressed');
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            print('lihat semuanya $title');
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'lihat semuanya',
              style: TextStyle(
                fontSize: 12.0,
                color: Color.fromARGB(255, 19, 50, 165),
                decoration: TextDecoration.underline,
                decorationThickness: 2.0,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildJobContainerList() {
  
  List<String> jobTitles = [
    'Kasir',
    'Kurir',
    'Marketing',
  ];


  List<String> imageUrls = [
    'https://s3-alpha-sig.figma.com/img/f51c/2807/8fe12f6fa3928bbcdde855a4a3f5d8f3?Expires=1731283200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=CimF-07K3-3REn7Laubb~fTxyEnhOv5VtO00Gtc1uiOBAb1iR4gtmn0jUpVvdSC6eDeHHVL0~QqcpL7sTzo7DuPo17x6geJvgr4kD4HVsWEZa-Lb8Ikn3beYAJNzM7Z~l4-xj3JhgNMmIW3i5O5YkD9V1h3Iz~ab0rCFGgdKOlq1F8a-m8i4C~bCY9NbyslOnz8BiBYEbUcZCibcx-FkR-yQCY61MKCWz~cH5s8qQ53X1o~4Qx7GR7cl4jEY9fy-tRHx1ZChzsT~VoNjPeHrWMBKHosvkwBffsoKjytUsy1szWCnx~0jccMOQdXRr4uv70sL-BDizH2d7Iczfd6QUA_', // Image for Kasir
    'https://s3-alpha-sig.figma.com/img/94bd/613f/4543788629d209f78d74a152c09cb221?Expires=1731888000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=eQ1Qk2ZnIIMDLZHci1BxqNCbJJZGCcxJSgDxmJtzKCuR0hohBgaBh5yA-6WLE~spiDZHH8lqy3u64HKEUXlkhQ34giYeju01Kpf6w22PFLl6t6Z83jhxb-zBT6D8l0h0U6UYHP2gffQD7b4x5CIAjVvG00J363BqpVTDxu~ZjX3Zge8EwpGcago8Xs2ADpKQcI2miSbTpHFJKaYJBYap63pRDU5GocUwYmJjctZrPKXx2Q9wdIpn1o9GxwBPuB8aiwvGxqygqGoZLrolq~qJz5AxNxg82wlESaL5cezyH1m~yW33KmjkpMj1pzx3KKtpAVK~X0J~HYeCZ8GSPhWRlg__', // Image for Kurir
    'https://s3-alpha-sig.figma.com/img/f51c/2807/8fe12f6fa3928bbcdde855a4a3f5d8f3?Expires=1731283200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=CimF-07K3-3REn7Laubb~fTxyEnhOv5VtO00Gtc1uiOBAb1iR4gtmn0jUpVvdSC6eDeHHVL0~QqcpL7sTzo7DuPo17x6geJvgr4kD4HVsWEZa-Lb8Ikn3beYAJNzM7Z~l4-xj3JhgNMmIW3i5O5YkD9V1h3Iz~ab0rCFGgdKOlq1F8a-m8i4C~bCY9NbyslOnz8BiBYEbUcZCibcx-FkR-yQCY61MKCWz~cH5s8qQ53X1o~4Qx7GR7cl4jEY9fy-tRHx1ZChzsT~VoNjPeHrWMBKHosvkwBffsoKjytUsy1szWCnx~0jccMOQdXRr4uv70sL-BDizH2d7Iczfd6QUA_', // Image for Marketing
  ];

  
  List<String> subtitles = [
    'PT Sumber Alfaria Trijaya',
    'PT Angkut Teknologi Indonesia',
    'Pt.....',
  ];

  
  List<String> descriptions = [
    'Dicari kasir dengan kriteria sebagai berikut...',
    'Dicari kurir dengan kriteria sebagai berikut...',
    '............',
    
  ];

  return Container(
    height: 132, 
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: List.generate(jobTitles.length, (index) {
        return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => JobDetailPage(),
          ),
        );
      },
      child: _buildJobContainer(
        jobTitles[index],
        imageUrls[index],
        subtitles[index],
        descriptions[index],
      ),
    );
      }),
    ),
  );
}

Widget _buildJobContainer(String title, String imageUrl, String subtitle, String description) {
  return Container(
    width: 205,
    margin: EdgeInsets.only(right: 24, left: 14),
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 255, 255, 255),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Stack(
      children: [
        
        Column(
          children: [
           
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 3.0, top: 8.0, right: 2.0),
                  child: Image.network(
                    imageUrl, 
                    width: 60, 
                    height: 40, 
                    fit: BoxFit.contain, 
                  ),
                ),
                Expanded( 
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start, 
                      children: [
                      
                        Text(
                          title,
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        
                        Text(
                          subtitle, 
                          style: TextStyle(color: const Color.fromARGB(255, 32, 32, 32), fontSize: 12), 
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            
            SizedBox(height: 10),
           
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      description,
                      style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 12, height: 1.5), 
                    ),
                  ),
                  Icon(Icons.star_border_outlined, size: 20.0, color: Color.fromARGB(255, 231, 213, 54)), 
                  SizedBox(width: 1),
                  Text('4.5', style: TextStyle(color: const Color.fromARGB(255, 231, 213, 54))), 
                  SizedBox(width: 1),
                  Text('(54)'), 
                ],
              ),
            ),
          ],
        ),
        
        Positioned(
          top: 8,
          right: 8,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Icon(Icons.bookmark_border, size: 24.0, color: Colors.black),
          ),
        ),
      ],
    ),
  );
}

Widget _buildRecommendedJobList() {
 
  List<String> recommendedJobTitles = [
    '   Admin',
    '   Admin Fakturis',
  ];

  
  List<String> recommendedImageUrls = [
    'https://s3-alpha-sig.figma.com/img/ee6e/54ac/c343e6cfb663dfa7a5c77c67e837f87a?Expires=1731888000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=OY1OYmxtgKT-t4HHlrNk8ExPHdlJerccHaRekS-4iL0lJ8PNSsTSgatlOvpegri8ZxXcnEi85FPCQGuS7O1nRkJxUOkIWC7PzdAKd-l0Rup48xKVv24zyk3cQnIRLdqE4zHEbrx0sIVJ7jba0CSPI~LGiHz0RX1LvwMmiVan9GgJW72yRzCZyMS55UM35zXhlSsnbbFfam4W1FJ8iX5CZjzv3tuPQUCrLIatXiUyCPvdITLNdJHeuBeUcR1nmX~fIowh6MKcK5G6heGX3tvoCbM7Ak3q124kejvmo8v4vBgcKDagzFMMPTTvX8OoLxBMCwK-8aJRazbw~txUcFF1WA__', // Image for Rekomendasi 1
    'https://s3-alpha-sig.figma.com/img/7f75/7cff/300586adcd33b25f3c5f2edeb8c1ed79?Expires=1731888000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Uy2MrTRxn8TDNn4aJuYTnaBmBFiLAc3YrN2da4d3MZeq9DnhvcAQAT-~nOvbdkEY26-NsCdyngLOFKHzLMZjdxY204WR4NFr3W-TWIXC-cwjeOlRwwNd3jsbRgC96sYgh-ECHOM3B9dMfxNXg3J46zx66PxsqESnzrzu8gRlDfivLCQAHrn0QQPVgVdhw3Fl3FnEbk0EoGs1BSm1rmI9A2nLTpbVkm~MfZ6Oz41BkkY05aTjPn91A~cFDAR2QFCCZVqvd3g875830kku7b5su9AoFR9mMPb4QEltc5q5YF9lEQ75FGzG~E5eby3ehMknsfDcBITFbCCzk3iicUeisw__',
  ];

  List<String> recommendedSubtitles = [
    '  PT Varian Global Perencana',
    '  PT Sinbad Karya Perdagangan',
  ];


  List<String> recommendedDescriptions = [
    'Dicari Admin dengan kriteria sebagai berikut: Usia maksimal 30 tahun, .......................',
    'Deskripsi pekerjaan: Input pesanan manual/otomatis, Berkoordinasi dengan..........',
  ];

  return Container(
  height: 300, 
  child: ListView.builder(
    itemCount: recommendedJobTitles.length, 
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 30.0), 
        child: _buildJobContainer(
          recommendedJobTitles[index],
          recommendedImageUrls[index],
          recommendedSubtitles[index],
          recommendedDescriptions[index],
        ),
      );
    },
  ),
);

}


  Widget _buildRecommendedContainer(String recommendedJobTitles, String recommendedImageUrls, String recommendedSubtitles, String recommendedDescriptions) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 30.0), 
    child: Container(
      width: 205,
      margin: EdgeInsets.only(right: 24, left: 14),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255), 
        borderRadius: BorderRadius.circular(10), 
      ),
      child: SizedBox(
        height: 300, 
        child: Stack(
          children: [
          
            Column(
              children: [
              
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 6.0, top: 8.0, right: 2.0), 
                      child: Image.network(
                        recommendedImageUrls, 
                        width: 60, 
                        height: 40, 
                        fit: BoxFit.contain, 
                      ),
                    ),
                    Expanded( 
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          
                            Text(
                              recommendedJobTitles,
                              style: TextStyle(color: Colors.black, fontSize: 18), 
                            ),
                           
                            Text(
                              recommendedSubtitles, 
                              style: TextStyle(color: const Color.fromARGB(255, 32, 32, 32), fontSize: 12), 
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              
                SizedBox(height: 10), 
               
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0), 
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          recommendedDescriptions, 
                          style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 12, height: 1.5),
                        ),
                      ),
                      Icon(Icons.star_border_outlined, size: 20.0, color: Color.fromARGB(255, 231, 213, 54)), 
                      SizedBox(width: 1), 
                      Text('4.5', style: TextStyle(color: const Color.fromARGB(255, 231, 213, 54))), 
                      SizedBox(width: 1),
                      Text('(54)'), 
                    ],
                  ),
                ),
              ],
            ),
          
            Positioned(
              top: 8,
              right: 8,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Icon(Icons.bookmark_border, size: 24.0, color: Colors.black), // Bookmark icon
              ),
            ),
          ],
        ),
      ),
    ),
  );
}



}
class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const BottomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      currentIndex: currentIndex,
      selectedItemColor: Colors.blue,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(top: 6.0, left: 15.0),
            child: Icon(Icons.home_outlined, size: 28),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(top: 6.0),
            child: Icon(Icons.email_outlined, size: 28),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(top: 6.0, right: 15.0),
            child: Icon(Icons.settings_outlined, size: 26),
          ),
          label: '',
        ),
      ],
    );
  }
}

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int _currentIndex = 2; 

  final List<Widget> _pages = [
    HomeScreen(),  
    Center(child: Text('Messages Screen')),  
    SettingsPage(),  
  ];

  void _onBottomNavTap(int index) {
    setState(() {
      _currentIndex = index;
    });

    if (index == 2) { 
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SettingsPage()),
      );
    } else if (index==0){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } else if (index==1){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MessagePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Pengaturan',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        automaticallyImplyLeading: false,
      ),
      body: Container(
       
        decoration: BoxDecoration(
          color: Colors.white, 
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5), 
              spreadRadius: 0,
              blurRadius: 20, 
              offset: const Offset(0, 4), 
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
              Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage('assets/profile.jpg'), 
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Walter Wahid',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'walter99@gmail.com',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24),

              const Text(
                'Akun',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                 
                  Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.person_2_outlined),
                        title: const Text('Profil Data'),
                        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfilePage(),
                            ),
                          );
                        },
                      ),
                      const Divider(height: 1, thickness: 1, color: Colors.black),

                      ListTile(
                        leading: const Icon(Icons.payment),
                        title: const Text('Metode Pembayaran'),
                        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PaymentMethodPage(),
                            ),
                          );
                        },
                      ),
                      const Divider(height: 1, thickness: 1, color: Colors.black),

                      ListTile(
                        leading: const Icon(Icons.lock_clock_outlined),
                        title: const Text('Keamanan'),
                        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                        onTap: () {              
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Keamanan()),
                          );
                        },
                  
                      ),
                      const Divider(height: 1, thickness: 1, color: Colors.black),

                      ListTile(
                        leading: const Icon(Icons.help_outline),
                        title: const Text('Bantuan'),
                        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HalamanBantuan()),
                          );
                        },
                      ),
                      const Divider(height: 1, thickness: 1, color: Colors.black),
                    ],
                  ),

                  const SizedBox(height: 24), 

                 
                  const Text(
                    'Preferensi',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                  ListTile(
                    leading: const Icon(Icons.translate),
                    title: const Text('Bahasa'),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LanguagePage()),
                          );
                    },
                  ),
                  const Divider(height: 1, thickness: 1, color: Colors.black),

                  ListTile(
                    leading: const Icon(Icons.dark_mode_outlined),
                    title: const Text('Mode Gelap'),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {},
                  ),
                  const Divider(height: 1, thickness: 1, color: Colors.black),
                ],
              ),

              const Spacer(),
              Center(
                child: Container(
                  padding: const EdgeInsets.only(bottom: 40.0), 
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChooseRole()));
                    },
                    child: const Text(
                      'Log Out',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onBottomNavTap,
      ),
      
    );
  }
}

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Notifikasi', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 1.0),
        child: Column(
          children: [
            Divider(
              color: Colors.black,
              height: 20,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            Expanded(
              child: ListView(
                children: [
                  NotificationTile(
                    companyName: 'PT Sumber Alfaria Trijaya',
                    logo: 'https://s3-alpha-sig.figma.com/img/f51c/2807/8fe12f6fa3928bbcdde855a4a3f5d8f3?Expires=1731283200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=CimF-07K3-3REn7Laubb~fTxyEnhOv5VtO00Gtc1uiOBAb1iR4gtmn0jUpVvdSC6eDeHHVL0~QqcpL7sTzo7DuPo17x6geJvgr4kD4HVsWEZa-Lb8Ikn3beYAJNzM7Z~l4-xj3JhgNMmIW3i5O5YkD9V1h3Iz~ab0rCFGgdKOlq1F8a-m8i4C~bCY9NbyslOnz8BiBYEbUcZCibcx-FkR-yQCY61MKCWz~cH5s8qQ53X1o~4Qx7GR7cl4jEY9fy-tRHx1ZChzsT~VoNjPeHrWMBKHosvkwBffsoKjytUsy1szWCnx~0jccMOQdXRr4uv70sL-BDizH2d7Iczfd6QUA__',
                    day: 'Minggu',
                    message: 'Permintaan kerja kasir anda diterima',
                  ),
                  Divider(
                    color: Colors.black,
                    height: 1,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                  ),
                  NotificationTile(
                    companyName: 'PT Varian Global Perencana',
                    logo: 'https://s3-alpha-sig.figma.com/img/ee6e/54ac/c343e6cfb663dfa7a5c77c67e837f87a?Expires=1731283200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=jqRtlcwTOLJTxcYA9KVCmZqUgRgadt8rbQvv5QtgfROQOcKQW5gdapqaFPSys6Vm8F0DTG10j1JEZg8mhn2wCNWn4qG4Ps0YpLu7FIHn~jYsWP9fvUnLErlbcgBXblvkhGzOF1J6vwdqbeNndBoKYqJHtk2Qms0m2VItJ30ASeMJifnPJ-vnm0V8JeccmJGCwWtQ06pkbq-GHA0NgKnazhg2N7GkOMEvf1QRGyH6sbPt0VOTaZR4hfJl7Pbwo8toHtm3WAGR252O2Yn9rRLdJB-hzIemsVUM64RflgaOZzTkA3ZUDlZKp9PDWk100aInO7IAAP8Vljg5yWmEPdXE6g__', // replace with actual URL
                    day: 'Sabtu',
                    message: 'Permintaan kerja admin anda diterima',
                  ),
                  Divider(
                    color: Colors.black,
                    height: 1,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final String companyName;
  final String logo;
  final String day;
  final String message;

  NotificationTile({
    required this.companyName,
    required this.logo,
    required this.day,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  companyName,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Image.network(
                  logo,
                  width: 60,
                  height: 40,
                  errorBuilder: (context, error, stackTrace) => Icon(Icons.image, size: 40),
                ),
                SizedBox(height: 8),
                Text(
                  message,
                  style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(width: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                day,
                style: TextStyle(color: Colors.grey.shade600, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class JobDetailPage extends StatefulWidget {
  @override
  _JobDetailPageState createState() => _JobDetailPageState();
}

class _JobDetailPageState extends State<JobDetailPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
        );
          },
        ),
        title: Text(
          'Pekerjaan',
          style: GoogleFonts.poppins(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFFFFFF), // #FFFFFF
              Color(0xFFE9ECFA), // #E9ECFA
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'logoperusahaan.jpeg',
                    height: 70,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Kasir',
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'PT Sumber Alfaria Trijaya',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            TabBar(
              controller: _tabController,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.black,
              indicatorColor: Colors.blue,
              tabs: [
                Tab(text: 'Deskripsi'),
                Tab(text: 'Perusahaan'),
                Tab(text: 'Review'),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView(
                    padding: EdgeInsets.all(8.0),
                    children: [
                      Text(
                        'Deskripsi',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Sebagai kasir, Anda akan ditugaskan untuk melakukan berbagai tugas seperti melayani pelanggan, menghitung pendapatan harian, dan membuat laporan operasional toko harian.',
                        style: GoogleFonts.poppins(
                            fontSize: 16, color: Colors.black87),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'Kualifikasi',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '- Pendidikan terakhir minimal SMA/SMK atau sederajat',
                        style: GoogleFonts.poppins(
                            fontSize: 16, color: Colors.black87),
                      ),
                      Text(
                        '- Pendidikan terakhir minimal SMA/SMK atau sederajat',
                        style: GoogleFonts.poppins(
                            fontSize: 16, color: Colors.black87),
                      ),
                      Text(
                        '- Memiliki kemampuan mengoperasikan komputer dan mesin kasir',
                        style: GoogleFonts.poppins(
                            fontSize: 16, color: Colors.black87),
                      ),
                      Text(
                        '- Teliti dan memiliki kemampuan menyelesaikan masalah yang muncul',
                        style: GoogleFonts.poppins(
                            fontSize: 16, color: Colors.black87),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'Gaji',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Rp. 40.000/Jam',
                        style: GoogleFonts.poppins(
                            fontSize: 16, color: Colors.black87),
                      ),
                    ],
                  ),
                  ListView(
                    padding: EdgeInsets.all(8.0),
                    children: [
                      Text(
                        'Deskripsi',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Alfamart adalah jaringan minimarket terbesar di Indonesia yang menyediakan berbagai kebutuhan sehari-hari masyarakat. Kami menyediakan berbagai produk berkualitas dengan harga terjangkau, mulai dari makanan, kebutuhan rumah tangga, hingga produk elektronik. Kami juga menyediakan layanan pembayaran tagihan, pengisian pulsa, dan jasa lainnya.',
                        style: GoogleFonts.poppins(
                            fontSize: 16, color: Colors.black87),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    color: Colors.white,
                    child: ListView(
                      children: [
                        Text(
                          'Danil',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Saya telah bekerja sebagai kasir di Alfamart selama 6 bulan, dan saya senang dengan pengalaman saya di sini. Tim kerja yang profesional dan ramah, serta pelayanan yang cepat membuat saya merasa nyaman bekerja di sini.',
                          style: GoogleFonts.poppins(
                              fontSize: 16, color: Colors.black87),
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('4.8',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black)),
                            Icon(Icons.star, color: Colors.amber, size: 16),
                          ],
                        ),
                        Text(
                          'Najib',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Saya telah bekerja di Alfamart selama 2 tahun sebagai kasir, dan saya merasa cukup puas dengan pekerjaan saya di sini. Saya merasa diberi tanggung jawab yang cukup dan saya senang bisa bekerja sama dengan...',
                          style: GoogleFonts.poppins(
                              fontSize: 16, color: Colors.black87),
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('5',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black)),
                            Icon(Icons.star, color: Colors.amber, size: 16),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.chat_bubble_outline),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ConversationPage(),
                  ),
                );
              },
            ),
            Expanded(
                child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(5),
                      width: double.infinity,
                      height: 30,
                      child: (Text(
                        'Lamar',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      )),
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ))),
          ],
        ),
      ),
    );
  }
}

class MessagePage extends StatefulWidget{
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  int _currentIndex=1;

  final List<Widget> _pages = [
    HomeScreen(),  
    Center(child: Text('Messages Screen')),  
    SettingsPage(),  
  ];

  void _onBottomNavTap(int index) {
    setState(() {
      _currentIndex = index;
    });

    if (index == 2) { 
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SettingsPage()),
      );
    } else if (index==0){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } else if (index==1){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MessagePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
          ),
          Positioned(
            top: 40,
            left: 20,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          const Positioned(
            top: 40,
            left: 80,
            child: Text(
              'Pesan',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 20,
            right: 20,
            child: ListTile(
              leading: Image.asset(
                'assets/ikon_alfamart.png',
                width: 50,
                height: 50,
              ),
              title: const Text(
                'Alfamart',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text('Baik pak Wahid, sesuai permintaan...'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ConversationPage(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onBottomNavTap,
      ),
      
    );
  }
}

class ConversationPage extends StatelessWidget {
  const ConversationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Alfamart',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "Terimakasih telah menerima permintaan kerja saya, bagaimana jika saya memilih jam waktu kerja 10:00",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "Baik pak Wahid, sesuai permintaan anda, bapak akan bekerja pada jam 10:00-12:00 pada alamat cabang alfamart Jl. Sukabirus, Sukapura, Kec.Dayeuhkolot, Kabupaten Bandung, Jawa Barat 40257 dengan bayaran Rp. 40.000/jam",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                        hintText: 'Tulis pesan...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.image),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Color _editDeskripsiColor = Color(0xFF287DE9);
  Color _tambahkanBaruColor = Color(0xFF287DE9);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Data',
            style: TextStyle(fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 36,
                  backgroundColor: Colors.grey[300],
                  child: ClipOval(
                    child: Image.asset(
                      'assets/husseinberg.jpg',
                      width: 72,
                      height: 72,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Walter Wahid',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Edit profil',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Deskripsi',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                GestureDetector(
                  onTapDown: (_) {
                    setState(() {
                      _editDeskripsiColor = Colors.blue[800]!;
                    });
                  },
                  onTapUp: (_) {
                    setState(() {
                      _editDeskripsiColor = Color(0xFF287DE9);
                    });
                  },
                  child: Text(
                    'Edit deskripsi',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: _editDeskripsiColor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Lulusan UI, S1 Inorganic Chemistry',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            Divider(color: Colors.black.withOpacity(0.5)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Kemampuan',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                GestureDetector(
                  onTapDown: (_) {
                    setState(() {
                      _tambahkanBaruColor = Colors.blue[800]!;
                    });
                  },
                  onTapUp: (_) {
                    setState(() {
                      _tambahkanBaruColor = Color(0xFF287DE9);
                    });
                  },
                  child: Text(
                    'Tambahkan baru',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: _tambahkanBaruColor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Menjalankan bisnis cuci mobil',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            Divider(color: Colors.black.withOpacity(0.5)),
            const SizedBox(height: 20),
            const Text(
              'Akun Terkait',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text(
                  '+ Facebook',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(
                      'walter99@gmail.com',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text(
                  '+ Google',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(
                      'walter99@gmail.com',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}class PaymentMethodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: 0,
        title: Text(
          "Metode Pembayaran",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: Color(0xFFF5B9FF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('assets/ikon_ovo.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nomor OVO anda:",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.add,
                              size: 16, color: Color(0xFF287DE9)),
                          label: Text(
                            "Tambah nomor",
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF287DE9),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Gopay
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: Color(0xFF96EBFF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('assets/ikon_gopay.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nomor Gopay anda:",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey.shade400),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: '0823 0058 3899',
                              border: InputBorder.none,
                            ),
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.add,
                              size: 16, color: Color(0xFF287DE9)),
                          label: Text(
                            "Tambah nomor",
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF287DE9),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Dana
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(0xFF9DD5FF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('assets/ikon_dana.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nomor Dana anda:",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.add,
                              size: 16, color: Color(0xFF287DE9)),
                          label: Text(
                            "Tambah nomor",
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF287DE9),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFFF9F9F9),
    );
  }
}
class Keamanan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Keamanan',
        style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255), 
      ),
     body: Padding(
  padding: const EdgeInsets.only(left: 10.0, top: 10.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'Atur Sandi',
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0),
        child: const Text(
          'Kata Sandi Baru :',
          style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w400),
        ),
      ),
      Padding(padding:EdgeInsets.only(left: 10.0,top:8.0),
      child: Container(
        width: 220.0,
        height: 38.0,
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            
          ),
        ),
      ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0),
        child: const Text(
          'Konfirmasi Sandi:',
          style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w400),
        ),
      ),
      Padding(padding:EdgeInsets.only(left: 10.0,top:8.0),
      child: Container(
        width: 220.0,
        height: 38.0,
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            
          ),
        ),
      ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0),
        child: const Text(
          'Password 8 karakter atau lebih panjang ',
          style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),
        ),
      ),
      Padding(padding: EdgeInsets.only(left: 9.0 ,top : 9.0),
     child:  Container(
        
     width: 220.0,
     height: 38.0,
      
     
      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(4.0)),
      color: Colors.blue,
      ),
     child : TextButton(
  onPressed: () {},
  child: Text('Konfirmasi Perubahan',style: TextStyle(fontSize: 16.0,color: Colors.white, fontWeight: FontWeight.w800),),
)
)
      ),
      Padding(padding: EdgeInsets.only(top: 30.0),
 child :Divider(
  color: Colors.black, 
  height: 20, 
  thickness: 1, 
  indent: 10, 
  endIndent: 10, 
),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0),
        child: const Text(
          'Verifikasi Telepon',
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
        ),
      ),
      Padding(padding:EdgeInsets.only(left: 10.0,top:8.0),
      child: Container(
        width: 300.0,
        height: 38.0,
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            
          ),
        ),
      ),
      ),
      Padding(padding: EdgeInsets.only(left: 9.0 ,top : 9.0),
     child:  Container(
        
     width: 220.0,
     height: 38.0,
      
     
      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(4.0)),
      color: Colors.blue,
      ),
     child : TextButton(
  onPressed: () {},
  child: Text('Verifikasi Sekarang ',style: TextStyle(fontSize: 16.0,color: Colors.white, fontWeight: FontWeight.w800),),
)
)
      ),
    ],
    
   
  ),
),
    );
  }
}

class HalamanBantuan extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Bantuan',
          style: GoogleFonts.poppins(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation:0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            InkWell(
              onTap: () {
                print('Laporkan Masalah tapped');
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Laporkan Masalah',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Icon(Icons.arrow_forward_ios, size: 16.0),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print('Pusat Bantuan tapped');
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Pusat Bantuan',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Icon(Icons.arrow_forward_ios, size: 16.0),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print('Bantuan Privasi dan Keamanan tapped');
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Bantuan Privasi dan Keamanan',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Icon(Icons.arrow_forward_ios, size: 16.0),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LanguagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 16,
            top: 15,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Positioned(
            left: 62,
            top: 15,
            child: Text(
              'Bahasa',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 60,
            child: Text(
              'Disarankan',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 95,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Bahasa Indonesia',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 70),
                Icon(
                  Icons.check,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          Positioned(
            left: 24,
            top: 125,
            child: Text(
              'English',
              style: TextStyle(
                fontSize: 17,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 195,
            child: Text(
              'Bahasa Melayu',
              style: TextStyle(
                fontSize: 17,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 160,
            child: Text(
              'Bahasa Lainnya',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

