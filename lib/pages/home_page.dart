import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge_week_eight/model/animal.dart';
import 'package:ui_challenge_week_eight/widgets/card.dart';


class HomePage extends StatelessWidget {

  final List<Animal> animals = [
    Animal(
      'León', 
      'Elit eiusmod Lorem ullamco occaecat ipsum ullamco ut occaecat ad excepteur deserunt labore nulla labore. Elit Lorem adipisicing aliqua tempor aliquip aliqua. Deserunt irure commodo elit cupidatat cillum elit sunt adipisicing est ea. Amet dolore consectetur proident cupidatat magna et incididunt id excepteur. Reprehenderit pariatur officia esse deserunt consequat sit Lorem velit voluptate laboris duis. Elit elit aliqua do pariatur irure sint sit tempor. Velit officia eiusmod ex consectetur est nisi. Nulla cillum in enim ipsum adipisicing aliquip Lorem ea laboris tempor minim. Consectetur laboris culpa incididunt reprehenderit commodo duis minim pariatur tempor non consequat laboris. Culpa amet magna proident veniam duis. Do non laborum pariatur eu dolore ut pariatur dolore.',
      'assets/leon.svg',
      Colors.orange[300]
    ),
    Animal(
      'Perro', 
      'Laborum id adipisicing excepteur pariatur non eu eiusmod. Sit commodo adipisicing nostrud aliquip proident. Veniam aliquip mollit commodo dolore nulla cupidatat ad occaecat dolor ad cupidatat quis. Excepteur sint sunt adipisicing ut irure. Velit officia eiusmod ex consectetur est nisi. Nulla cillum in enim ipsum adipisicing aliquip Lorem ea laboris tempor minim. Consectetur laboris culpa incididunt reprehenderit commodo duis minim pariatur tempor non consequat laboris. Culpa amet magna proident veniam duis. Do non laborum pariatur eu dolore ut pariatur dolore.',
      'assets/perro.svg' ,
      Colors.brown[300]
    ),
    Animal(
      'Zorro', 
      'Minim veniam esse sit est voluptate occaecat occaecat adipisicing. Id do est et eiusmod cillum nisi nisi est fugiat. Lorem laboris tempor esse quis esse sunt ad ullamco ullamco qui in cupidatat. Irure minim nulla commodo incididunt exercitation exercitation sit. Velit officia eiusmod ex consectetur est nisi. Nulla cillum in enim ipsum adipisicing aliquip Lorem ea laboris tempor minim. Consectetur laboris culpa incididunt reprehenderit commodo duis minim pariatur tempor non consequat laboris. Culpa amet magna proident veniam duis. Do non laborum pariatur eu dolore ut pariatur dolore.',
      'assets/zorro.svg',
      Colors.green[500]
    ),
    Animal(
      'Gato', 
      'Quis officia reprehenderit et voluptate commodo consectetur duis dolor qui id velit non ad voluptate. Lorem et culpa aliqua sint ullamco sint. Consectetur voluptate eiusmod aliquip anim labore. Laboris nulla excepteur nulla deserunt laboris non ea consequat velit est dolor amet aliquip. Velit officia eiusmod ex consectetur est nisi. Nulla cillum in enim ipsum adipisicing aliquip Lorem ea laboris tempor minim. Consectetur laboris culpa incididunt reprehenderit commodo duis minim pariatur tempor non consequat laboris. Culpa amet magna proident veniam duis. Do non laborum pariatur eu dolore ut pariatur dolore.',
      'assets/gato.svg',
      Colors.deepOrange[800]
    ),
    Animal(
      'Cerdo', 
      'Officia cupidatat proident nisi laborum proident ipsum nostrud et culpa mollit minim cillum veniam. Reprehenderit nulla eiusmod aliquip magna. In eiusmod duis consequat reprehenderit anim veniam Lorem reprehenderit. Tempor reprehenderit tempor exercitation consectetur. Minim tempor magna in ipsum nostrud. Fugiat ullamco anim duis reprehenderit qui sit eu elit reprehenderit Lorem fugiat ullamco aute laborum. Velit officia eiusmod ex consectetur est nisi. Nulla cillum in enim ipsum adipisicing aliquip Lorem ea laboris tempor minim. Consectetur laboris culpa incididunt reprehenderit commodo duis minim pariatur tempor non consequat laboris. Culpa amet magna proident veniam duis. Do non laborum pariatur eu dolore ut pariatur dolore.',
      'assets/cerdo.svg',
      Colors.pink[400]
    ),
    Animal(
      'Búho', 
      'Aute eiusmod dolor proident sint dolor ex cillum. Deserunt occaecat dolore duis aliqua commodo velit. Tempor sunt incididunt anim do officia ullamco excepteur laboris cupidatat nulla eiusmod voluptate. Velit officia eiusmod ex consectetur est nisi. Nulla cillum in enim ipsum adipisicing aliquip Lorem ea laboris tempor minim. Consectetur laboris culpa incididunt reprehenderit commodo duis minim pariatur tempor non consequat laboris. Culpa amet magna proident veniam duis. Do non laborum pariatur eu dolore ut pariatur dolore.',
      'assets/buho.svg',
      Colors.deepOrange[400]
    ),
    Animal(
      'León', 
      'Elit eiusmod Lorem ullamco occaecat ipsum ullamco ut occaecat ad excepteur deserunt labore nulla labore. Elit Lorem adipisicing aliqua tempor aliquip aliqua. Deserunt irure commodo elit cupidatat cillum elit sunt adipisicing est ea. Amet dolore consectetur proident cupidatat magna et incididunt id excepteur. Reprehenderit pariatur officia esse deserunt consequat sit Lorem velit voluptate laboris duis. Elit elit aliqua do pariatur irure sint sit tempor. Velit officia eiusmod ex consectetur est nisi. Nulla cillum in enim ipsum adipisicing aliquip Lorem ea laboris tempor minim. Consectetur laboris culpa incididunt reprehenderit commodo duis minim pariatur tempor non consequat laboris. Culpa amet magna proident veniam duis. Do non laborum pariatur eu dolore ut pariatur dolore.',
      'assets/leon.svg',
      Colors.orange[300]
    ),
    Animal(
      'Perro', 
      'Laborum id adipisicing excepteur pariatur non eu eiusmod. Sit commodo adipisicing nostrud aliquip proident. Veniam aliquip mollit commodo dolore nulla cupidatat ad occaecat dolor ad cupidatat quis. Excepteur sint sunt adipisicing ut irure. Velit officia eiusmod ex consectetur est nisi. Nulla cillum in enim ipsum adipisicing aliquip Lorem ea laboris tempor minim. Consectetur laboris culpa incididunt reprehenderit commodo duis minim pariatur tempor non consequat laboris. Culpa amet magna proident veniam duis. Do non laborum pariatur eu dolore ut pariatur dolore.',
      'assets/perro.svg' ,
      Colors.brown[300]
    ),
    Animal(
      'Zorro', 
      'Minim veniam esse sit est voluptate occaecat occaecat adipisicing. Id do est et eiusmod cillum nisi nisi est fugiat. Lorem laboris tempor esse quis esse sunt ad ullamco ullamco qui in cupidatat. Irure minim nulla commodo incididunt exercitation exercitation sit. Velit officia eiusmod ex consectetur est nisi. Nulla cillum in enim ipsum adipisicing aliquip Lorem ea laboris tempor minim. Consectetur laboris culpa incididunt reprehenderit commodo duis minim pariatur tempor non consequat laboris. Culpa amet magna proident veniam duis. Do non laborum pariatur eu dolore ut pariatur dolore.',
      'assets/zorro.svg',
      Colors.green[500]
    ),
    Animal(
      'Gato', 
      'Quis officia reprehenderit et voluptate commodo consectetur duis dolor qui id velit non ad voluptate. Lorem et culpa aliqua sint ullamco sint. Consectetur voluptate eiusmod aliquip anim labore. Laboris nulla excepteur nulla deserunt laboris non ea consequat velit est dolor amet aliquip. Velit officia eiusmod ex consectetur est nisi. Nulla cillum in enim ipsum adipisicing aliquip Lorem ea laboris tempor minim. Consectetur laboris culpa incididunt reprehenderit commodo duis minim pariatur tempor non consequat laboris. Culpa amet magna proident veniam duis. Do non laborum pariatur eu dolore ut pariatur dolore.',
      'assets/gato.svg',
      Colors.deepOrange[800]
    ),
    Animal(
      'Cerdo', 
      'Officia cupidatat proident nisi laborum proident ipsum nostrud et culpa mollit minim cillum veniam. Reprehenderit nulla eiusmod aliquip magna. In eiusmod duis consequat reprehenderit anim veniam Lorem reprehenderit. Tempor reprehenderit tempor exercitation consectetur. Minim tempor magna in ipsum nostrud. Fugiat ullamco anim duis reprehenderit qui sit eu elit reprehenderit Lorem fugiat ullamco aute laborum. Velit officia eiusmod ex consectetur est nisi. Nulla cillum in enim ipsum adipisicing aliquip Lorem ea laboris tempor minim. Consectetur laboris culpa incididunt reprehenderit commodo duis minim pariatur tempor non consequat laboris. Culpa amet magna proident veniam duis. Do non laborum pariatur eu dolore ut pariatur dolore.',
      'assets/cerdo.svg',
      Colors.pink[400]
    ),
    Animal(
      'Búho', 
      'Aute eiusmod dolor proident sint dolor ex cillum. Deserunt occaecat dolore duis aliqua commodo velit. Tempor sunt incididunt anim do officia ullamco excepteur laboris cupidatat nulla eiusmod voluptate. Velit officia eiusmod ex consectetur est nisi. Nulla cillum in enim ipsum adipisicing aliquip Lorem ea laboris tempor minim. Consectetur laboris culpa incididunt reprehenderit commodo duis minim pariatur tempor non consequat laboris. Culpa amet magna proident veniam duis. Do non laborum pariatur eu dolore ut pariatur dolore.',
      'assets/buho.svg',
      Colors.deepOrange[400]
    ),
    Animal(
      'León', 
      'Elit eiusmod Lorem ullamco occaecat ipsum ullamco ut occaecat ad excepteur deserunt labore nulla labore. Elit Lorem adipisicing aliqua tempor aliquip aliqua. Deserunt irure commodo elit cupidatat cillum elit sunt adipisicing est ea. Amet dolore consectetur proident cupidatat magna et incididunt id excepteur. Reprehenderit pariatur officia esse deserunt consequat sit Lorem velit voluptate laboris duis. Elit elit aliqua do pariatur irure sint sit tempor. Velit officia eiusmod ex consectetur est nisi. Nulla cillum in enim ipsum adipisicing aliquip Lorem ea laboris tempor minim. Consectetur laboris culpa incididunt reprehenderit commodo duis minim pariatur tempor non consequat laboris. Culpa amet magna proident veniam duis. Do non laborum pariatur eu dolore ut pariatur dolore.',
      'assets/leon.svg',
      Colors.orange[300]
    ),
    Animal(
      'Perro', 
      'Laborum id adipisicing excepteur pariatur non eu eiusmod. Sit commodo adipisicing nostrud aliquip proident. Veniam aliquip mollit commodo dolore nulla cupidatat ad occaecat dolor ad cupidatat quis. Excepteur sint sunt adipisicing ut irure. Velit officia eiusmod ex consectetur est nisi. Nulla cillum in enim ipsum adipisicing aliquip Lorem ea laboris tempor minim. Consectetur laboris culpa incididunt reprehenderit commodo duis minim pariatur tempor non consequat laboris. Culpa amet magna proident veniam duis. Do non laborum pariatur eu dolore ut pariatur dolore.',
      'assets/perro.svg' ,
      Colors.brown[300]
    ),
    Animal(
      'Zorro', 
      'Minim veniam esse sit est voluptate occaecat occaecat adipisicing. Id do est et eiusmod cillum nisi nisi est fugiat. Lorem laboris tempor esse quis esse sunt ad ullamco ullamco qui in cupidatat. Irure minim nulla commodo incididunt exercitation exercitation sit. Velit officia eiusmod ex consectetur est nisi. Nulla cillum in enim ipsum adipisicing aliquip Lorem ea laboris tempor minim. Consectetur laboris culpa incididunt reprehenderit commodo duis minim pariatur tempor non consequat laboris. Culpa amet magna proident veniam duis. Do non laborum pariatur eu dolore ut pariatur dolore.',
      'assets/zorro.svg',
      Colors.green[500]
    ),
    Animal(
      'Gato', 
      'Quis officia reprehenderit et voluptate commodo consectetur duis dolor qui id velit non ad voluptate. Lorem et culpa aliqua sint ullamco sint. Consectetur voluptate eiusmod aliquip anim labore. Laboris nulla excepteur nulla deserunt laboris non ea consequat velit est dolor amet aliquip. Velit officia eiusmod ex consectetur est nisi. Nulla cillum in enim ipsum adipisicing aliquip Lorem ea laboris tempor minim. Consectetur laboris culpa incididunt reprehenderit commodo duis minim pariatur tempor non consequat laboris. Culpa amet magna proident veniam duis. Do non laborum pariatur eu dolore ut pariatur dolore.',
      'assets/gato.svg',
      Colors.deepOrange[800]
    ),
    Animal(
      'Cerdo', 
      'Officia cupidatat proident nisi laborum proident ipsum nostrud et culpa mollit minim cillum veniam. Reprehenderit nulla eiusmod aliquip magna. In eiusmod duis consequat reprehenderit anim veniam Lorem reprehenderit. Tempor reprehenderit tempor exercitation consectetur. Minim tempor magna in ipsum nostrud. Fugiat ullamco anim duis reprehenderit qui sit eu elit reprehenderit Lorem fugiat ullamco aute laborum. Velit officia eiusmod ex consectetur est nisi. Nulla cillum in enim ipsum adipisicing aliquip Lorem ea laboris tempor minim. Consectetur laboris culpa incididunt reprehenderit commodo duis minim pariatur tempor non consequat laboris. Culpa amet magna proident veniam duis. Do non laborum pariatur eu dolore ut pariatur dolore.',
      'assets/cerdo.svg',
      Colors.pink[400]
    ),
    Animal(
      'Búho', 
      'Aute eiusmod dolor proident sint dolor ex cillum. Deserunt occaecat dolore duis aliqua commodo velit. Tempor sunt incididunt anim do officia ullamco excepteur laboris cupidatat nulla eiusmod voluptate. Velit officia eiusmod ex consectetur est nisi. Nulla cillum in enim ipsum adipisicing aliquip Lorem ea laboris tempor minim. Consectetur laboris culpa incididunt reprehenderit commodo duis minim pariatur tempor non consequat laboris. Culpa amet magna proident veniam duis. Do non laborum pariatur eu dolore ut pariatur dolore.',
      'assets/buho.svg',
      Colors.deepOrange[400]
    ),
    Animal(
      'León', 
      'Elit eiusmod Lorem ullamco occaecat ipsum ullamco ut occaecat ad excepteur deserunt labore nulla labore. Elit Lorem adipisicing aliqua tempor aliquip aliqua. Deserunt irure commodo elit cupidatat cillum elit sunt adipisicing est ea. Amet dolore consectetur proident cupidatat magna et incididunt id excepteur. Reprehenderit pariatur officia esse deserunt consequat sit Lorem velit voluptate laboris duis. Elit elit aliqua do pariatur irure sint sit tempor. Velit officia eiusmod ex consectetur est nisi. Nulla cillum in enim ipsum adipisicing aliquip Lorem ea laboris tempor minim. Consectetur laboris culpa incididunt reprehenderit commodo duis minim pariatur tempor non consequat laboris. Culpa amet magna proident veniam duis. Do non laborum pariatur eu dolore ut pariatur dolore.',
      'assets/leon.svg',
      Colors.orange[300]
    ),
    Animal(
      'Perro', 
      'Laborum id adipisicing excepteur pariatur non eu eiusmod. Sit commodo adipisicing nostrud aliquip proident. Veniam aliquip mollit commodo dolore nulla cupidatat ad occaecat dolor ad cupidatat quis. Excepteur sint sunt adipisicing ut irure. Velit officia eiusmod ex consectetur est nisi. Nulla cillum in enim ipsum adipisicing aliquip Lorem ea laboris tempor minim. Consectetur laboris culpa incididunt reprehenderit commodo duis minim pariatur tempor non consequat laboris. Culpa amet magna proident veniam duis. Do non laborum pariatur eu dolore ut pariatur dolore.',
      'assets/perro.svg' ,
      Colors.brown[300]
    ),
    Animal(
      'Zorro', 
      'Minim veniam esse sit est voluptate occaecat occaecat adipisicing. Id do est et eiusmod cillum nisi nisi est fugiat. Lorem laboris tempor esse quis esse sunt ad ullamco ullamco qui in cupidatat. Irure minim nulla commodo incididunt exercitation exercitation sit. Velit officia eiusmod ex consectetur est nisi. Nulla cillum in enim ipsum adipisicing aliquip Lorem ea laboris tempor minim. Consectetur laboris culpa incididunt reprehenderit commodo duis minim pariatur tempor non consequat laboris. Culpa amet magna proident veniam duis. Do non laborum pariatur eu dolore ut pariatur dolore.',
      'assets/zorro.svg',
      Colors.green[500]
    ),
    Animal(
      'Gato', 
      'Quis officia reprehenderit et voluptate commodo consectetur duis dolor qui id velit non ad voluptate. Lorem et culpa aliqua sint ullamco sint. Consectetur voluptate eiusmod aliquip anim labore. Laboris nulla excepteur nulla deserunt laboris non ea consequat velit est dolor amet aliquip. Velit officia eiusmod ex consectetur est nisi. Nulla cillum in enim ipsum adipisicing aliquip Lorem ea laboris tempor minim. Consectetur laboris culpa incididunt reprehenderit commodo duis minim pariatur tempor non consequat laboris. Culpa amet magna proident veniam duis. Do non laborum pariatur eu dolore ut pariatur dolore.',
      'assets/gato.svg',
      Colors.deepOrange[800]
    ),
    Animal(
      'Cerdo', 
      'Officia cupidatat proident nisi laborum proident ipsum nostrud et culpa mollit minim cillum veniam. Reprehenderit nulla eiusmod aliquip magna. In eiusmod duis consequat reprehenderit anim veniam Lorem reprehenderit. Tempor reprehenderit tempor exercitation consectetur. Minim tempor magna in ipsum nostrud. Fugiat ullamco anim duis reprehenderit qui sit eu elit reprehenderit Lorem fugiat ullamco aute laborum. Velit officia eiusmod ex consectetur est nisi. Nulla cillum in enim ipsum adipisicing aliquip Lorem ea laboris tempor minim. Consectetur laboris culpa incididunt reprehenderit commodo duis minim pariatur tempor non consequat laboris. Culpa amet magna proident veniam duis. Do non laborum pariatur eu dolore ut pariatur dolore.',
      'assets/cerdo.svg',
      Colors.pink[400]
    ),
    Animal(
      'Búho', 
      'Aute eiusmod dolor proident sint dolor ex cillum. Deserunt occaecat dolore duis aliqua commodo velit. Tempor sunt incididunt anim do officia ullamco excepteur laboris cupidatat nulla eiusmod voluptate. Velit officia eiusmod ex consectetur est nisi. Nulla cillum in enim ipsum adipisicing aliquip Lorem ea laboris tempor minim. Consectetur laboris culpa incididunt reprehenderit commodo duis minim pariatur tempor non consequat laboris. Culpa amet magna proident veniam duis. Do non laborum pariatur eu dolore ut pariatur dolore.',
      'assets/buho.svg',
      Colors.deepOrange[400]
    ),
    Animal(
      'León', 
      'Elit eiusmod Lorem ullamco occaecat ipsum ullamco ut occaecat ad excepteur deserunt labore nulla labore. Elit Lorem adipisicing aliqua tempor aliquip aliqua. Deserunt irure commodo elit cupidatat cillum elit sunt adipisicing est ea. Amet dolore consectetur proident cupidatat magna et incididunt id excepteur. Reprehenderit pariatur officia esse deserunt consequat sit Lorem velit voluptate laboris duis. Elit elit aliqua do pariatur irure sint sit tempor. Velit officia eiusmod ex consectetur est nisi. Nulla cillum in enim ipsum adipisicing aliquip Lorem ea laboris tempor minim. Consectetur laboris culpa incididunt reprehenderit commodo duis minim pariatur tempor non consequat laboris. Culpa amet magna proident veniam duis. Do non laborum pariatur eu dolore ut pariatur dolore.',
      'assets/leon.svg',
      Colors.orange[300]
    ),
    Animal(
      'Perro', 
      'Laborum id adipisicing excepteur pariatur non eu eiusmod. Sit commodo adipisicing nostrud aliquip proident. Veniam aliquip mollit commodo dolore nulla cupidatat ad occaecat dolor ad cupidatat quis. Excepteur sint sunt adipisicing ut irure. Velit officia eiusmod ex consectetur est nisi. Nulla cillum in enim ipsum adipisicing aliquip Lorem ea laboris tempor minim. Consectetur laboris culpa incididunt reprehenderit commodo duis minim pariatur tempor non consequat laboris. Culpa amet magna proident veniam duis. Do non laborum pariatur eu dolore ut pariatur dolore.',
      'assets/perro.svg' ,
      Colors.brown[300]
    ),
    Animal(
      'Zorro', 
      'Minim veniam esse sit est voluptate occaecat occaecat adipisicing. Id do est et eiusmod cillum nisi nisi est fugiat. Lorem laboris tempor esse quis esse sunt ad ullamco ullamco qui in cupidatat. Irure minim nulla commodo incididunt exercitation exercitation sit. Velit officia eiusmod ex consectetur est nisi. Nulla cillum in enim ipsum adipisicing aliquip Lorem ea laboris tempor minim. Consectetur laboris culpa incididunt reprehenderit commodo duis minim pariatur tempor non consequat laboris. Culpa amet magna proident veniam duis. Do non laborum pariatur eu dolore ut pariatur dolore.',
      'assets/zorro.svg',
      Colors.green[500]
    ),
    Animal(
      'Gato', 
      'Quis officia reprehenderit et voluptate commodo consectetur duis dolor qui id velit non ad voluptate. Lorem et culpa aliqua sint ullamco sint. Consectetur voluptate eiusmod aliquip anim labore. Laboris nulla excepteur nulla deserunt laboris non ea consequat velit est dolor amet aliquip. Velit officia eiusmod ex consectetur est nisi. Nulla cillum in enim ipsum adipisicing aliquip Lorem ea laboris tempor minim. Consectetur laboris culpa incididunt reprehenderit commodo duis minim pariatur tempor non consequat laboris. Culpa amet magna proident veniam duis. Do non laborum pariatur eu dolore ut pariatur dolore.',
      'assets/gato.svg',
      Colors.deepOrange[800]
    ),
    Animal(
      'Cerdo', 
      'Officia cupidatat proident nisi laborum proident ipsum nostrud et culpa mollit minim cillum veniam. Reprehenderit nulla eiusmod aliquip magna. In eiusmod duis consequat reprehenderit anim veniam Lorem reprehenderit. Tempor reprehenderit tempor exercitation consectetur. Minim tempor magna in ipsum nostrud. Fugiat ullamco anim duis reprehenderit qui sit eu elit reprehenderit Lorem fugiat ullamco aute laborum. Velit officia eiusmod ex consectetur est nisi. Nulla cillum in enim ipsum adipisicing aliquip Lorem ea laboris tempor minim. Consectetur laboris culpa incididunt reprehenderit commodo duis minim pariatur tempor non consequat laboris. Culpa amet magna proident veniam duis. Do non laborum pariatur eu dolore ut pariatur dolore.',
      'assets/cerdo.svg',
      Colors.pink[400]
    ),
    Animal(
      'Búho', 
      'Aute eiusmod dolor proident sint dolor ex cillum. Deserunt occaecat dolore duis aliqua commodo velit. Tempor sunt incididunt anim do officia ullamco excepteur laboris cupidatat nulla eiusmod voluptate. Velit officia eiusmod ex consectetur est nisi. Nulla cillum in enim ipsum adipisicing aliquip Lorem ea laboris tempor minim. Consectetur laboris culpa incididunt reprehenderit commodo duis minim pariatur tempor non consequat laboris. Culpa amet magna proident veniam duis. Do non laborum pariatur eu dolore ut pariatur dolore.',
      'assets/buho.svg',
      Colors.deepOrange[400]
    ),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            _appBar(),

            _animalsListView(),

          ],
        ) 
      )
   );
  }

  Widget _appBar() {

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Icon(Icons.menu, color: Colors.orange, size: 70,),

          Text(
            'Learn',
            style: GoogleFonts.comicNeue(
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50
              )
            ),
          ),

          Container(
            padding: EdgeInsets.all(4),
            height: 50,
            width: 50,
            child: SvgPicture.asset('assets/leon.svg'),
            decoration: BoxDecoration(
              color: Colors.orange[300],
              borderRadius: BorderRadius.circular(15)
            ),
          )

        ],
      ),
    );

  }

  Widget _animalsListView() {

    return Expanded(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: animals.length,
        itemBuilder: (context, index) => FlipInX(
          duration: Duration(milliseconds: 1200),
          delay: Duration(milliseconds: 100),
          child: GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'detail', arguments: animals[index]),
            child: Hero(
              tag: animals[index].name,
              child: CustomCard(
                title: animals[index].name, 
                subtitle: animals[index].description, 
                svgImage: animals[index].photo,
                color: animals[index].color,
              ),
            ),
          ),
        ),
      ),
    );

  }

}