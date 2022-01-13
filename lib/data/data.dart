import 'package:flutter/material.dart';

class Menu {
  String? name;
  Icon? icon;
  Menu(this.name, this.icon);
}

class AboutCompany {
  String name;
  String pic;
  String location;
  String tel;

  AboutCompany(this.name, this.location, this.pic, this.tel);
}

class Ticket {
  String name;
  String pic;
  Ticket(this.name, this.pic);
}

Map userData = {
  "name": "",
  "username": "",
  "number": "",
  "email": "",
  "password": ""
};

Map dataBase = {
  "Health": {
    "Hospitals": [
      {
        "name": "Goo Hospital",
        "location": "Mirobod",
        "pic": "https://img.bookimed.com/clinic_webp/5c54108deb869.webp",
        "phone": "+342563231",
      },
      {
        "name": "Akfa Hospital",
        "location": "Chilonzor",
        "pic":
            "https://akfagroup.com/img/src/medical-clinic/medical-clinic.jpg",
        "phone": "+1342536436",
      },
      {
        "name": "Menerva Hospital",
        "location": "Yangi Yo'l",
        "pic":
            "https://4.imimg.com/data4/YH/XU/MY-10471766/9-acr-lands-hospital-in-west-delhi-prime-locations-500x500.jpg",
        "phone": "",
      },
      {
        "name": "Metaverse Hospital",
        "location": "Imagination",
        "pic":
            "https://res.cloudinary.com/sagacity/image/upload/c_crop,h_1050,w_1278,x_0,y_0/c_limit,dpr_auto,f_auto,fl_lossy,q_80,w_1080/SMH_TOWER_TRA_eeuloz.jpg",
        "phone": "+134525366",
      },
    ],
    "Clinics": [
      {
        "name": "Hayat Medical Centre",
        "location": "Yashnabod",
        "pic":
            "https://m.wsj.net/video/20111121/112111lunchinformed/112111lunchinformed_512x288.jpg",
        "phone": "+342563231",
      },
      {
        "name": "Zomin Clincs",
        "location": "Sergili",
        "pic":
            "https://akfagroup.com/img/src/medical-clinic/medical-clinic.jpg",
        "phone": "+1342536436",
      },
      {
        "name": "Lab Medical",
        "location": "Yangi Yo'l",
        "pic":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ed/The_Doctor_is_in.jpg/299px-The_Doctor_is_in.jpg",
        "phone": "",
      },
      {
        "name": "Akfa Medline",
        "location": "Yunusobod",
        "pic":
            "https://ddjkm7nmu27lx.cloudfront.net/670647/fileUpload/670647_1574666554927_ShelbyUrgentCare.jpg",
        "phone": "+134525366",
      },
    ],
    "Diagnostics": [
      {
        "name": "Vitros Diagnostics",
        "location": "Yashnabod",
        "pic":
            "https://files.medelement.com/uploads/co/301811161528539753/gallery_photos/07e4767cbf171759a38ed07368702831.jpg",
        "phone": "+342563231",
      },
      {
        "name": "Neo Lab",
        "location": "Sergili",
        "pic":
            "https://avatars.mds.yandex.net/get-altay/1923723/2a0000017075d21dd49cef6acc5a3025a56b/XXL",
        "phone": "+1342536436",
      },
      {
        "name": "SwiSS Lab",
        "location": "Yangi Yo'l",
        "pic":
            "https://avatars.mds.yandex.net/get-altay/2044663/2a000001700622e30d8aa2a91a2a343ca2dc/XXL",
        "phone": "",
      },
      {
        "name": "DiaMed Diagnostics",
        "location": "Yunusobod",
        "pic": "https://clinics.uz/components/com_mtree/img/listings/m/946.jpg",
        "phone": "+134525366",
      },
    ],
    "Stamatologies": [
      {
        "name": "Sirus Dent",
        "location": "Yashnabod",
        "pic":
            "https://avatars.mds.yandex.net/get-altay/2752367/2a000001704cc50fef048f1c0d73e2b0eedc/XXL",
        "phone": "+342563231",
      },
      {
        "name": "Stomatologiya",
        "location": "Sergili",
        "pic":
            "https://files.medelement.com/uploads/co/606583861560040858/logo/44e391e158eb174e04c1ba762d393609.jpg",
        "phone": "+1342536436",
      },
      {
        "name": "Creo Dent",
        "location": "Yangi Yo'l",
        "pic":
            "https://avatars.mds.yandex.net/get-altay/2094876/2a0000016d352a03cbf031a459f9f8b3ccff/XXL",
        "phone": "",
      },
      {
        "name": "DiaMed Diagnostics",
        "location": "Yunusobod",
        "pic": "https://clinics.uz/components/com_mtree/img/listings/m/946.jpg",
        "phone": "+134525366",
      },
    ],
  },
  "Beauty": {
    "Beauty Salons": [
      {
        "name": "The Look",
        "location": "Chilonzor",
        "pic": "https://www.medine.tv/wp-content/uploads/2015/03/Salon-04.jpg",
        "phone": "+2456245642",
      },
      {
        "name": "Mane Beautilocks",
        "location": "Shayxontoxur",
        "pic":
            "https://img.grouponcdn.com/deal/ZnT5CrT6NxouJwMixM69LbrKVpC/Zn-2048x1229/v1/sc600x600.jpg",
        "phone": "+2463463w466",
      },
      {
        "name": "Cappiello Salon",
        "location": "Yunusobod",
        "pic":
            "https://i0.wp.com/rayhaber.com/wp-content/uploads/2020/03/bakanlik-acikladi-berber-kuafor-guzellik-salonlari-kapatiliyor.jpg?fit=678%2C381&ssl=1",
        "phone": "+34563624445",
      },
      {
        "name": "Bombshell Studio",
        "location": "Yangi yo'l",
        "pic":
            "https://images.squarespace-cdn.com/content/v1/587fcd183e00be6f0d1efc30/1558464418002-PRT8LF3DAIZBW45IG9Z5/salon-image-2.JPG?format=2500w",
        "phone": "+4356262624",
      },
      {
        "name": "Cute Cut",
        "location": "Mirobod",
        "pic":
            "https://kimokran.ca/wp/wp-content/uploads/2015/12/hair-salon-.jpg",
        "phone": "+43563624264",
      },
    ],
    "Nail Treatments": [
      {
        "name": "The Nail Box",
        "location": "Yashnabod",
        "pic":
            "https://media.allure.com/photos/5eeccf044ef0e400098f51db/master/pass/the-future-of-nail-salons-post-covid19-lockdown-lede.jpg",
        "phone": "+2456245642",
      },
      {
        "name": "Fingers 2 Toes",
        "location": "Yunusobod",
        "pic":
            "https://www.tysonsreporter.com/files/2020/06/tysons-nail-lounge-cropped.jpg",
        "phone": "+2463463w466",
      },
      {
        "name": "Filed Away",
        "location": "Yunusobod",
        "pic":
            "https://media.istockphoto.com/photos/closeup-of-beautician-applying-nail-at-salon-picture-id1167657805?k=20&m=1167657805&s=612x612&w=0&h=KO9l_SDey2gCCh-p3NqEUKcY7aGBLtIheB4w-8FkPYQ=",
        "phone": "+34563624445",
      },
      {
        "name": "Bellacures",
        "location": "Yangi yo'l",
        "pic":
            "https://images.squarespace-cdn.com/content/v1/53c467e8e4b056735b9c9b1f/1467386215459-UESQ1786L0CE1CMOBUGA/964614_473311699404190_779229535_o.jpg?format=1000w",
        "phone": "+4356262624",
      },
      {
        "name": "Sweet Feet Pedicures",
        "location": "Mirobod",
        "pic":
            "https://cdn1.treatwell.net/images/view/v2.i2673423.w1080.h720.xC253EDCD/",
        "phone": "+43563624264",
      },
    ],
    "Massages": [
      {
        "name": "Massage Central",
        "location": "Chilonzor",
        "pic":
            "https://i.pinimg.com/originals/52/8c/8f/528c8fb3f97f7868db773b903c8521e9.png",
        "phone": "+2456245642",
      },
      {
        "name": "Essence of Massage",
        "location": "Shayxontoxur",
        "pic":
            "https://thearchitecturedesigns.com/wp-content/uploads/2020/08/spa-room-design-3-1024x683.jpg",
        "phone": "+2463463w466",
      },
      {
        "name": "Massage O’Clock",
        "location": "Yunusobod",
        "pic": "https://i.ytimg.com/vi/27CRCUFHe90/hqdefault.jpg",
        "phone": "+34563624445",
      },
      {
        "name": "Wildflower Massage",
        "location": "Yangi yo'l",
        "pic":
            "https://res.cloudinary.com/urbanclap/image/upload/t_medium_res_portfolio_medium/images/59bcb6846f78d95d00288749/1509655548941-34ce9eb13d04f05035156de76cc45efa.jpeg",
        "phone": "+4356262624",
      },
      {
        "name": "Arc Massage",
        "location": "Mirobod",
        "pic":
            "https://i.pinimg.com/originals/7c/ac/de/7cacde1e39b63548bb0e34a4d194f82e.jpg",
        "phone": "+43563624264",
      },
    ],
    "Facials & skin care treatments": [
      {
        "name": "Facial Palace.",
        "location": "Chilonzor",
        "pic":
            "http://www.elixirstylists.com/blog/wp-content/uploads/2020/03/best-salon-for-facial-in-hyderabad-738x423.jpg",
        "phone": "+2456245642",
      },
      {
        "name": "Rose Skin",
        "location": "Shayxontoxur",
        "pic":
            "https://www.cloudninebeauty.com/files/2019/03/xMurad-facial-image-300x300.jpg.pagespeed.gp+jp+pj+ws+js+rj+rp+ri+rm+cp+md+im=20.ic.sjOG3rUz6n.jpg",
        "phone": "+2463463w466",
      },
      {
        "name": "Luxe Skin",
        "location": "Yunusobod",
        "pic":
            "https://3.imimg.com/data3/DR/EG/GLADMIN-12588892/facial-500x500.jpg",
        "phone": "+34563624445",
      },
      {
        "name": "Glisten",
        "location": "Yangi yo'l",
        "pic":
            "http://www.lydiasarfati.com/wp-content/uploads/2020/01/7I0A0766-1024x1024.jpg",
        "phone": "+4356262624",
      },
    ],
  }
};

List reserved = [];
List users = [];

List menu = [
  [
    "Health",
    Icons.health_and_safety_outlined,
  ],
  [
    "Repair Shops",
    Icons.handyman_outlined,
  ],
  [
    "Car Wash",
    Icons.local_car_wash_outlined,
  ],
  [
    "Beauty",
    Icons.content_cut_outlined,
  ],
  [
    "Food",
    Icons.food_bank_outlined,
  ],
  [
    "Public Service",
    Icons.supervisor_account_rounded,
  ],
  [
    "Car Rental",
    Icons.car_rental,
  ],
  [
    "Hotels",
    Icons.hotel_outlined,
  ],
  [
    "Taxi",
    Icons.local_taxi_outlined,
  ]
];
