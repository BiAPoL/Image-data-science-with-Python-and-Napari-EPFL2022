/*
OpenCL RandomForestClassifier
classifier_class_name = ObjectSegmenter
feature_specification = original gaussian_blur=1 gaussian_blur=2 gaussian_blur=3 gaussian_blur=4 gaussian_blur=5 difference_of_gaussian=1 difference_of_gaussian=2 difference_of_gaussian=3 difference_of_gaussian=4 difference_of_gaussian=5 laplace_box_of_gaussian_blur=1 laplace_box_of_gaussian_blur=2 laplace_box_of_gaussian_blur=3 laplace_box_of_gaussian_blur=4 laplace_box_of_gaussian_blur=5
num_ground_truth_dimensions = 2
num_classes = 2
num_features = 16
max_depth = 2
num_trees = 100
feature_importances = 0.0012500666129038715,0.039290864059265906,0.00873471276141324,0.0021489822797218085,0.0013799036787822791,0.0023297730282250176,0.004443499854351887,0.01791288516682662,0.1424068101230289,0.21573749575185908,0.0954984140483841,0.004842870843482598,0.06741579991471103,0.16582957306453136,0.1796281379893511,0.0511502108231613
positive_class_identifier = 2
apoc_version = 0.9.0
*/
__kernel void predict (IMAGE_in0_TYPE in0, IMAGE_in1_TYPE in1, IMAGE_in2_TYPE in2, IMAGE_in3_TYPE in3, IMAGE_in4_TYPE in4, IMAGE_in5_TYPE in5, IMAGE_in6_TYPE in6, IMAGE_in7_TYPE in7, IMAGE_in8_TYPE in8, IMAGE_in9_TYPE in9, IMAGE_in10_TYPE in10, IMAGE_in11_TYPE in11, IMAGE_in12_TYPE in12, IMAGE_in13_TYPE in13, IMAGE_in14_TYPE in14, IMAGE_in15_TYPE in15, IMAGE_out_TYPE out) {
 sampler_t sampler = CLK_NORMALIZED_COORDS_FALSE | CLK_ADDRESS_CLAMP_TO_EDGE | CLK_FILTER_NEAREST;
 const int x = get_global_id(0);
 const int y = get_global_id(1);
 const int z = get_global_id(2);
 float i0 = READ_IMAGE(in0, sampler, POS_in0_INSTANCE(x,y,z,0)).x;
 float i1 = READ_IMAGE(in1, sampler, POS_in1_INSTANCE(x,y,z,0)).x;
 float i2 = READ_IMAGE(in2, sampler, POS_in2_INSTANCE(x,y,z,0)).x;
 float i3 = READ_IMAGE(in3, sampler, POS_in3_INSTANCE(x,y,z,0)).x;
 float i4 = READ_IMAGE(in4, sampler, POS_in4_INSTANCE(x,y,z,0)).x;
 float i5 = READ_IMAGE(in5, sampler, POS_in5_INSTANCE(x,y,z,0)).x;
 float i6 = READ_IMAGE(in6, sampler, POS_in6_INSTANCE(x,y,z,0)).x;
 float i7 = READ_IMAGE(in7, sampler, POS_in7_INSTANCE(x,y,z,0)).x;
 float i8 = READ_IMAGE(in8, sampler, POS_in8_INSTANCE(x,y,z,0)).x;
 float i9 = READ_IMAGE(in9, sampler, POS_in9_INSTANCE(x,y,z,0)).x;
 float i10 = READ_IMAGE(in10, sampler, POS_in10_INSTANCE(x,y,z,0)).x;
 float i11 = READ_IMAGE(in11, sampler, POS_in11_INSTANCE(x,y,z,0)).x;
 float i12 = READ_IMAGE(in12, sampler, POS_in12_INSTANCE(x,y,z,0)).x;
 float i13 = READ_IMAGE(in13, sampler, POS_in13_INSTANCE(x,y,z,0)).x;
 float i14 = READ_IMAGE(in14, sampler, POS_in14_INSTANCE(x,y,z,0)).x;
 float i15 = READ_IMAGE(in15, sampler, POS_in15_INSTANCE(x,y,z,0)).x;
 float s0=0;
 float s1=0;
if(i15<0.13614988327026367){
 if(i13<0.04159998893737793){
  s0+=1958.0;
  s1+=184.0;
 } else {
  s0+=33.0;
  s1+=106.0;
 }
} else {
 if(i9<0.7823410034179688){
  s0+=120.0;
  s1+=180.0;
 } else {
  s0+=61.0;
  s1+=1379.0;
 }
}
if(i13<0.04777151346206665){
 if(i9<0.08579444885253906){
  s0+=2091.0;
  s1+=208.0;
 } else {
  s0+=22.0;
  s1+=72.0;
 }
} else {
 if(i14<2.333765983581543){
  s0+=110.0;
  s1+=566.0;
 } else {
  s0+=15.0;
  s1+=937.0;
 }
}
if(i13<0.15357518196105957){
 if(i0<6.5){
  s0+=1454.0;
  s1+=54.0;
 } else {
  s0+=665.0;
  s1+=249.0;
 }
} else {
 if(i9<2.5730972290039062){
  s0+=104.0;
  s1+=594.0;
 } else {
  s0+=23.0;
  s1+=878.0;
 }
}
if(i13<0.04784327745437622){
 if(i15<0.03833198547363281){
  s0+=1963.0;
  s1+=181.0;
 } else {
  s0+=107.0;
  s1+=152.0;
 }
} else {
 if(i5<51.72209548950195){
  s0+=59.0;
  s1+=1283.0;
 } else {
  s0+=71.0;
  s1+=205.0;
 }
}
if(i15<0.05808520317077637){
 if(i13<0.26841259002685547){
  s0+=2030.0;
  s1+=178.0;
 } else {
  s0+=11.0;
  s1+=63.0;
 }
} else {
 if(i9<0.6598081588745117){
  s0+=102.0;
  s1+=178.0;
 } else {
  s0+=74.0;
  s1+=1385.0;
 }
}
if(i1<12.766095161437988){
 if(i1<3.8005433082580566){
  s0+=1175.0;
  s1+=12.0;
 } else {
  s0+=515.0;
  s1+=114.0;
 }
} else {
 if(i8<-0.6997404098510742){
  s0+=377.0;
  s1+=62.0;
 } else {
  s0+=163.0;
  s1+=1603.0;
 }
}
if(i12<0.2564706802368164){
 if(i10<0.5459651947021484){
  s0+=1983.0;
  s1+=197.0;
 } else {
  s0+=54.0;
  s1+=257.0;
 }
} else {
 if(i8<0.42166996002197266){
  s0+=66.0;
  s1+=91.0;
 } else {
  s0+=65.0;
  s1+=1308.0;
 }
}
if(i14<0.03171348571777344){
 if(i11<1.1393601894378662){
  s0+=2020.0;
  s1+=175.0;
 } else {
  s0+=68.0;
  s1+=71.0;
 }
} else {
 if(i8<0.25641536712646484){
  s0+=60.0;
  s1+=119.0;
 } else {
  s0+=82.0;
  s1+=1426.0;
 }
}
if(i8<0.11523914337158203){
 if(i2<7.958839416503906){
  s0+=1251.0;
  s1+=34.0;
 } else {
  s0+=839.0;
  s1+=318.0;
 }
} else {
 if(i5<48.50870895385742){
  s0+=40.0;
  s1+=1194.0;
 } else {
  s0+=87.0;
  s1+=258.0;
 }
}
if(i13<0.05398160219192505){
 if(i10<0.5480070114135742){
  s0+=2065.0;
  s1+=180.0;
 } else {
  s0+=41.0;
  s1+=115.0;
 }
} else {
 if(i15<0.9456872940063477){
  s0+=75.0;
  s1+=245.0;
 } else {
  s0+=42.0;
  s1+=1258.0;
 }
}
if(i13<0.3853936195373535){
 if(i3<6.141978740692139){
  s0+=1023.0;
  s1+=9.0;
 } else {
  s0+=1098.0;
  s1+=362.0;
 }
} else {
 if(i14<2.412599563598633){
  s0+=75.0;
  s1+=558.0;
 } else {
  s0+=16.0;
  s1+=880.0;
 }
}
if(i9<0.007001757621765137){
 if(i11<1.3636674880981445){
  s0+=2047.0;
  s1+=181.0;
 } else {
  s0+=44.0;
  s1+=63.0;
 }
} else {
 if(i9<1.0270195007324219){
  s0+=85.0;
  s1+=251.0;
 } else {
  s0+=60.0;
  s1+=1290.0;
 }
}
if(i14<0.03171348571777344){
 if(i1<3.3610594272613525){
  s0+=1105.0;
  s1+=5.0;
 } else {
  s0+=982.0;
  s1+=252.0;
 }
} else {
 if(i9<1.0270195007324219){
  s0+=98.0;
  s1+=235.0;
 } else {
  s0+=63.0;
  s1+=1281.0;
 }
}
if(i8<0.13454103469848633){
 if(i15<0.06683778762817383){
  s0+=2041.0;
  s1+=189.0;
 } else {
  s0+=102.0;
  s1+=142.0;
 }
} else {
 if(i5<48.431968688964844){
  s0+=27.0;
  s1+=1199.0;
 } else {
  s0+=64.0;
  s1+=257.0;
 }
}
if(i13<0.04990726709365845){
 if(i14<0.02023458480834961){
  s0+=2050.0;
  s1+=213.0;
 } else {
  s0+=35.0;
  s1+=72.0;
 }
} else {
 if(i10<1.477869987487793){
  s0+=69.0;
  s1+=225.0;
 } else {
  s0+=41.0;
  s1+=1316.0;
 }
}
if(i10<0.2620849609375){
 if(i8<0.22099637985229492){
  s0+=2032.0;
  s1+=202.0;
 } else {
  s0+=7.0;
  s1+=80.0;
 }
} else {
 if(i14<0.25653886795043945){
  s0+=54.0;
  s1+=76.0;
 } else {
  s0+=95.0;
  s1+=1475.0;
 }
}
if(i13<0.39383411407470703){
 if(i14<0.03171348571777344){
  s0+=1998.0;
  s1+=228.0;
 } else {
  s0+=60.0;
  s1+=118.0;
 }
} else {
 if(i10<1.477869987487793){
  s0+=57.0;
  s1+=232.0;
 } else {
  s0+=59.0;
  s1+=1269.0;
 }
}
if(i9<0.08211326599121094){
 if(i13<0.15936064720153809){
  s0+=2029.0;
  s1+=235.0;
 } else {
  s0+=10.0;
  s1+=39.0;
 }
} else {
 if(i5<48.50870895385742){
  s0+=55.0;
  s1+=1246.0;
 } else {
  s0+=99.0;
  s1+=308.0;
 }
}
if(i12<0.17459583282470703){
 if(i13<0.04784327745437622){
  s0+=2055.0;
  s1+=268.0;
 } else {
  s0+=21.0;
  s1+=184.0;
 }
} else {
 if(i4<10.355134010314941){
  s0+=26.0;
  s1+=1.0;
 } else {
  s0+=110.0;
  s1+=1356.0;
 }
}
if(i9<0.09885358810424805){
 if(i12<1.14410400390625){
  s0+=2118.0;
  s1+=195.0;
 } else {
  s0+=12.0;
  s1+=55.0;
 }
} else {
 if(i13<2.154176712036133){
  s0+=97.0;
  s1+=432.0;
 } else {
  s0+=40.0;
  s1+=1072.0;
 }
}
if(i8<0.0616908073425293){
 if(i14<0.02130270004272461){
  s0+=2013.0;
  s1+=232.0;
 } else {
  s0+=43.0;
  s1+=114.0;
 }
} else {
 if(i5<48.50870895385742){
  s0+=46.0;
  s1+=1222.0;
 } else {
  s0+=72.0;
  s1+=279.0;
 }
}
if(i14<0.08417320251464844){
 if(i12<0.9028491973876953){
  s0+=2098.0;
  s1+=211.0;
 } else {
  s0+=17.0;
  s1+=64.0;
 }
} else {
 if(i8<0.5006599426269531){
  s0+=71.0;
  s1+=195.0;
 } else {
  s0+=56.0;
  s1+=1309.0;
 }
}
if(i8<0.07616043090820312){
 if(i9<0.08579444885253906){
  s0+=2092.0;
  s1+=230.0;
 } else {
  s0+=33.0;
  s1+=94.0;
 }
} else {
 if(i9<2.4455747604370117){
  s0+=96.0;
  s1+=552.0;
 } else {
  s0+=13.0;
  s1+=911.0;
 }
}
if(i12<0.10920852422714233){
 if(i8<0.026100873947143555){
  s0+=2040.0;
  s1+=288.0;
 } else {
  s0+=14.0;
  s1+=167.0;
 }
} else {
 if(i13<0.3885962963104248){
  s0+=72.0;
  s1+=45.0;
 } else {
  s0+=85.0;
  s1+=1310.0;
 }
}
if(i13<0.04784327745437622){
 if(i10<0.07996463775634766){
  s0+=2035.0;
  s1+=157.0;
 } else {
  s0+=96.0;
  s1+=164.0;
 }
} else {
 if(i9<1.8291501998901367){
  s0+=76.0;
  s1+=433.0;
 } else {
  s0+=26.0;
  s1+=1034.0;
 }
}
if(i9<0.007001757621765137){
 if(i6<0.11726999282836914){
  s0+=1976.0;
  s1+=199.0;
 } else {
  s0+=53.0;
  s1+=68.0;
 }
} else {
 if(i4<47.962486267089844){
  s0+=62.0;
  s1+=1173.0;
 } else {
  s0+=106.0;
  s1+=384.0;
 }
}
if(i12<0.17459583282470703){
 if(i8<0.026961445808410645){
  s0+=1996.0;
  s1+=264.0;
 } else {
  s0+=17.0;
  s1+=197.0;
 }
} else {
 if(i3<12.21923828125){
  s0+=25.0;
  s1+=6.0;
 } else {
  s0+=116.0;
  s1+=1400.0;
 }
}
if(i9<0.007001757621765137){
 if(i13<0.15443205833435059){
  s0+=2072.0;
  s1+=222.0;
 } else {
  s0+=4.0;
  s1+=32.0;
 }
} else {
 if(i8<0.2368922233581543){
  s0+=71.0;
  s1+=128.0;
 } else {
  s0+=93.0;
  s1+=1399.0;
 }
}
if(i14<0.006280839443206787){
 if(i12<0.3977851867675781){
  s0+=1955.0;
  s1+=185.0;
 } else {
  s0+=33.0;
  s1+=72.0;
 }
} else {
 if(i14<0.9896340370178223){
  s0+=99.0;
  s1+=267.0;
 } else {
  s0+=66.0;
  s1+=1344.0;
 }
}
if(i13<0.12383723258972168){
 if(i9<0.007001757621765137){
  s0+=2042.0;
  s1+=202.0;
 } else {
  s0+=46.0;
  s1+=104.0;
 }
} else {
 if(i5<49.16779327392578){
  s0+=32.0;
  s1+=1241.0;
 } else {
  s0+=68.0;
  s1+=286.0;
 }
}
if(i10<0.2424945831298828){
 if(i8<0.2276167869567871){
  s0+=2032.0;
  s1+=193.0;
 } else {
  s0+=13.0;
  s1+=71.0;
 }
} else {
 if(i9<0.19358253479003906){
  s0+=57.0;
  s1+=56.0;
 } else {
  s0+=113.0;
  s1+=1486.0;
 }
}
if(i13<0.2098555564880371){
 if(i10<0.5347251892089844){
  s0+=2073.0;
  s1+=206.0;
 } else {
  s0+=41.0;
  s1+=126.0;
 }
} else {
 if(i1<53.21216583251953){
  s0+=30.0;
  s1+=921.0;
 } else {
  s0+=82.0;
  s1+=542.0;
 }
}
if(i14<0.03497648239135742){
 if(i3<4.676052093505859){
  s0+=951.0;
  s1+=2.0;
 } else {
  s0+=1116.0;
  s1+=243.0;
 }
} else {
 if(i14<0.9896340370178223){
  s0+=124.0;
  s1+=261.0;
 } else {
  s0+=55.0;
  s1+=1269.0;
 }
}
if(i9<0.09885358810424805){
 if(i2<5.312719821929932){
  s0+=1085.0;
  s1+=11.0;
 } else {
  s0+=974.0;
  s1+=252.0;
 }
} else {
 if(i9<1.0174140930175781){
  s0+=90.0;
  s1+=219.0;
 } else {
  s0+=63.0;
  s1+=1327.0;
 }
}
if(i10<0.004843235015869141){
 if(i7<0.13807296752929688){
  s0+=1986.0;
  s1+=158.0;
 } else {
  s0+=35.0;
  s1+=79.0;
 }
} else {
 if(i9<1.0283527374267578){
  s0+=145.0;
  s1+=310.0;
 } else {
  s0+=53.0;
  s1+=1255.0;
 }
}
if(i9<0.09885358810424805){
 if(i0<6.5){
  s0+=1450.0;
  s1+=42.0;
 } else {
  s0+=646.0;
  s1+=214.0;
 }
} else {
 if(i13<0.9960885047912598){
  s0+=82.0;
  s1+=218.0;
 } else {
  s0+=75.0;
  s1+=1294.0;
 }
}
if(i7<0.1038658618927002){
 if(i10<0.4839515686035156){
  s0+=2017.0;
  s1+=198.0;
 } else {
  s0+=67.0;
  s1+=296.0;
 }
} else {
 if(i13<0.3874211311340332){
  s0+=52.0;
  s1+=59.0;
 } else {
  s0+=76.0;
  s1+=1256.0;
 }
}
if(i14<0.03429412841796875){
 if(i11<1.3636674880981445){
  s0+=1986.0;
  s1+=189.0;
 } else {
  s0+=40.0;
  s1+=66.0;
 }
} else {
 if(i9<1.0288467407226562){
  s0+=98.0;
  s1+=241.0;
 } else {
  s0+=64.0;
  s1+=1337.0;
 }
}
if(i14<0.016239643096923828){
 if(i11<1.3398752212524414){
  s0+=1997.0;
  s1+=209.0;
 } else {
  s0+=50.0;
  s1+=72.0;
 }
} else {
 if(i9<1.0265254974365234){
  s0+=100.0;
  s1+=256.0;
 } else {
  s0+=57.0;
  s1+=1280.0;
 }
}
if(i8<0.23573780059814453){
 if(i1<9.040359497070312){
  s0+=1522.0;
  s1+=63.0;
 } else {
  s0+=672.0;
  s1+=255.0;
 }
} else {
 if(i2<53.9168701171875){
  s0+=19.0;
  s1+=928.0;
 } else {
  s0+=79.0;
  s1+=483.0;
 }
}
if(i10<0.2424945831298828){
 if(i8<0.24006128311157227){
  s0+=2008.0;
  s1+=173.0;
 } else {
  s0+=16.0;
  s1+=72.0;
 }
} else {
 if(i9<0.7980690002441406){
  s0+=95.0;
  s1+=167.0;
 } else {
  s0+=85.0;
  s1+=1405.0;
 }
}
if(i13<0.3885962963104248){
 if(i15<-0.005398809909820557){
  s0+=1925.0;
  s1+=193.0;
 } else {
  s0+=151.0;
  s1+=190.0;
 }
} else {
 if(i8<2.302907943725586){
  s0+=94.0;
  s1+=680.0;
 } else {
  s0+=12.0;
  s1+=776.0;
 }
}
if(i9<0.13623714447021484){
 if(i7<0.33740997314453125){
  s0+=2116.0;
  s1+=218.0;
 } else {
  s0+=8.0;
  s1+=53.0;
 }
} else {
 if(i14<2.0999603271484375){
  s0+=121.0;
  s1+=484.0;
 } else {
  s0+=23.0;
  s1+=998.0;
 }
}
if(i12<0.7748508453369141){
 if(i8<0.11195802688598633){
  s0+=2147.0;
  s1+=283.0;
 } else {
  s0+=21.0;
  s1+=195.0;
 }
} else {
 if(i2<19.389633178710938){
  s0+=18.0;
  s1+=25.0;
 } else {
  s0+=111.0;
  s1+=1221.0;
 }
}
if(i15<0.1621532440185547){
 if(i7<0.10473442077636719){
  s0+=2052.0;
  s1+=157.0;
 } else {
  s0+=43.0;
  s1+=97.0;
 }
} else {
 if(i8<0.25641536712646484){
  s0+=73.0;
  s1+=157.0;
 } else {
  s0+=64.0;
  s1+=1378.0;
 }
}
if(i14<0.03429412841796875){
 if(i2<5.172496795654297){
  s0+=1068.0;
  s1+=14.0;
 } else {
  s0+=982.0;
  s1+=262.0;
 }
} else {
 if(i13<0.3874211311340332){
  s0+=66.0;
  s1+=121.0;
 } else {
  s0+=89.0;
  s1+=1419.0;
 }
}
if(i9<0.0423736572265625){
 if(i1<3.8005433082580566){
  s0+=1127.0;
  s1+=13.0;
 } else {
  s0+=928.0;
  s1+=284.0;
 }
} else {
 if(i5<48.50870895385742){
  s0+=44.0;
  s1+=1275.0;
 } else {
  s0+=85.0;
  s1+=265.0;
 }
}
if(i9<0.0423736572265625){
 if(i1<3.8037431240081787){
  s0+=1079.0;
  s1+=13.0;
 } else {
  s0+=958.0;
  s1+=244.0;
 }
} else {
 if(i5<48.55409240722656){
  s0+=58.0;
  s1+=1288.0;
 } else {
  s0+=105.0;
  s1+=276.0;
 }
}
if(i12<0.17459583282470703){
 if(i15<0.13614988327026367){
  s0+=1987.0;
  s1+=161.0;
 } else {
  s0+=102.0;
  s1+=278.0;
 }
} else {
 if(i13<0.3885962963104248){
  s0+=57.0;
  s1+=41.0;
 } else {
  s0+=94.0;
  s1+=1301.0;
 }
}
if(i15<0.08378410339355469){
 if(i11<3.667804002761841){
  s0+=1992.0;
  s1+=210.0;
 } else {
  s0+=41.0;
  s1+=70.0;
 }
} else {
 if(i15<0.9423513412475586){
  s0+=125.0;
  s1+=279.0;
 } else {
  s0+=62.0;
  s1+=1242.0;
 }
}
if(i14<0.12813663482666016){
 if(i6<0.12588977813720703){
  s0+=2025.0;
  s1+=227.0;
 } else {
  s0+=53.0;
  s1+=75.0;
 }
} else {
 if(i9<1.6028423309326172){
  s0+=79.0;
  s1+=360.0;
 } else {
  s0+=44.0;
  s1+=1158.0;
 }
}
if(i14<0.08417320251464844){
 if(i12<1.188967227935791){
  s0+=2017.0;
  s1+=211.0;
 } else {
  s0+=19.0;
  s1+=47.0;
 }
} else {
 if(i5<48.50870895385742){
  s0+=44.0;
  s1+=1298.0;
 } else {
  s0+=108.0;
  s1+=277.0;
 }
}
if(i1<16.741291046142578){
 if(i1<6.081297397613525){
  s0+=1339.0;
  s1+=39.0;
 } else {
  s0+=385.0;
  s1+=172.0;
 }
} else {
 if(i9<-0.59173583984375){
  s0+=325.0;
  s1+=55.0;
 } else {
  s0+=166.0;
  s1+=1540.0;
 }
}
if(i8<0.11523914337158203){
 if(i10<0.3128786087036133){
  s0+=1990.0;
  s1+=199.0;
 } else {
  s0+=97.0;
  s1+=134.0;
 }
} else {
 if(i2<14.792194366455078){
  s0+=9.0;
  s1+=3.0;
 } else {
  s0+=88.0;
  s1+=1501.0;
 }
}
if(i1<12.183765411376953){
 if(i3<6.141978740692139){
  s0+=1045.0;
  s1+=8.0;
 } else {
  s0+=522.0;
  s1+=100.0;
 }
} else {
 if(i6<-0.2132720947265625){
  s0+=450.0;
  s1+=405.0;
 } else {
  s0+=178.0;
  s1+=1313.0;
 }
}
if(i14<0.08582592010498047){
 if(i7<0.1353902816772461){
  s0+=2040.0;
  s1+=188.0;
 } else {
  s0+=28.0;
  s1+=63.0;
 }
} else {
 if(i5<51.75651550292969){
  s0+=69.0;
  s1+=1336.0;
 } else {
  s0+=77.0;
  s1+=220.0;
 }
}
if(i8<0.17797088623046875){
 if(i10<0.03061962127685547){
  s0+=2008.0;
  s1+=186.0;
 } else {
  s0+=117.0;
  s1+=181.0;
 }
} else {
 if(i3<49.805824279785156){
  s0+=18.0;
  s1+=953.0;
 } else {
  s0+=78.0;
  s1+=480.0;
 }
}
if(i13<0.05572730302810669){
 if(i3<6.142984867095947){
  s0+=1030.0;
  s1+=8.0;
 } else {
  s0+=1108.0;
  s1+=270.0;
 }
} else {
 if(i10<1.501504898071289){
  s0+=73.0;
  s1+=239.0;
 } else {
  s0+=46.0;
  s1+=1247.0;
 }
}
if(i14<0.07293128967285156){
 if(i11<3.7072746753692627){
  s0+=2022.0;
  s1+=220.0;
 } else {
  s0+=28.0;
  s1+=67.0;
 }
} else {
 if(i14<0.9804768562316895){
  s0+=90.0;
  s1+=241.0;
 } else {
  s0+=73.0;
  s1+=1280.0;
 }
}
if(i9<0.09926652908325195){
 if(i12<1.0183093547821045){
  s0+=2055.0;
  s1+=189.0;
 } else {
  s0+=13.0;
  s1+=64.0;
 }
} else {
 if(i14<0.9896340370178223){
  s0+=71.0;
  s1+=267.0;
 } else {
  s0+=51.0;
  s1+=1311.0;
 }
}
if(i14<0.01856088638305664){
 if(i6<0.13068389892578125){
  s0+=1998.0;
  s1+=184.0;
 } else {
  s0+=49.0;
  s1+=76.0;
 }
} else {
 if(i10<1.604654312133789){
  s0+=108.0;
  s1+=296.0;
 } else {
  s0+=70.0;
  s1+=1240.0;
 }
}
if(i13<0.2153453826904297){
 if(i14<0.02023458480834961){
  s0+=2078.0;
  s1+=205.0;
 } else {
  s0+=50.0;
  s1+=106.0;
 }
} else {
 if(i3<49.379695892333984){
  s0+=22.0;
  s1+=1000.0;
 } else {
  s0+=82.0;
  s1+=478.0;
 }
}
if(i10<-0.0001964569091796875){
 if(i12<0.27211809158325195){
  s0+=1952.0;
  s1+=154.0;
 } else {
  s0+=38.0;
  s1+=88.0;
 }
} else {
 if(i13<0.3923325538635254){
  s0+=141.0;
  s1+=189.0;
 } else {
  s0+=96.0;
  s1+=1363.0;
 }
}
if(i13<0.15357518196105957){
 if(i9<0.09511375427246094){
  s0+=2081.0;
  s1+=230.0;
 } else {
  s0+=33.0;
  s1+=82.0;
 }
} else {
 if(i8<0.6051425933837891){
  s0+=57.0;
  s1+=166.0;
 } else {
  s0+=58.0;
  s1+=1314.0;
 }
}
if(i12<0.7658119201660156){
 if(i9<0.038414955139160156){
  s0+=2058.0;
  s1+=209.0;
 } else {
  s0+=64.0;
  s1+=330.0;
 }
} else {
 if(i15<0.8892202377319336){
  s0+=59.0;
  s1+=213.0;
 } else {
  s0+=35.0;
  s1+=1053.0;
 }
}
if(i1<17.08300018310547){
 if(i0<7.5){
  s0+=1499.0;
  s1+=80.0;
 } else {
  s0+=220.0;
  s1+=110.0;
 }
} else {
 if(i12<-1.6423683166503906){
  s0+=322.0;
  s1+=126.0;
 } else {
  s0+=156.0;
  s1+=1508.0;
 }
}
if(i8<0.04564952850341797){
 if(i10<0.03458881378173828){
  s0+=1962.0;
  s1+=161.0;
 } else {
  s0+=92.0;
  s1+=165.0;
 }
} else {
 if(i1<13.168245315551758){
  s0+=14.0;
  s1+=7.0;
 } else {
  s0+=117.0;
  s1+=1503.0;
 }
}
if(i9<0.09586429595947266){
 if(i13<0.06615430116653442){
  s0+=2078.0;
  s1+=245.0;
 } else {
  s0+=24.0;
  s1+=64.0;
 }
} else {
 if(i9<1.7990283966064453){
  s0+=102.0;
  s1+=398.0;
 } else {
  s0+=31.0;
  s1+=1079.0;
 }
}
if(i12<0.17746591567993164){
 if(i14<0.03166770935058594){
  s0+=1969.0;
  s1+=194.0;
 } else {
  s0+=58.0;
  s1+=252.0;
 }
} else {
 if(i3<11.076639175415039){
  s0+=33.0;
  s1+=5.0;
 } else {
  s0+=140.0;
  s1+=1370.0;
 }
}
if(i9<0.11618471145629883){
 if(i11<4.747953414916992){
  s0+=2048.0;
  s1+=237.0;
 } else {
  s0+=18.0;
  s1+=44.0;
 }
} else {
 if(i14<0.954617977142334){
  s0+=75.0;
  s1+=232.0;
 } else {
  s0+=48.0;
  s1+=1319.0;
 }
}
if(i10<0.09824752807617188){
 if(i11<0.9085148572921753){
  s0+=1917.0;
  s1+=163.0;
 } else {
  s0+=74.0;
  s1+=92.0;
 }
} else {
 if(i9<0.7980690002441406){
  s0+=110.0;
  s1+=194.0;
 } else {
  s0+=77.0;
  s1+=1394.0;
 }
}
if(i8<0.043181419372558594){
 if(i10<0.03458881378173828){
  s0+=1974.0;
  s1+=184.0;
 } else {
  s0+=98.0;
  s1+=151.0;
 }
} else {
 if(i14<2.2998123168945312){
  s0+=108.0;
  s1+=555.0;
 } else {
  s0+=9.0;
  s1+=942.0;
 }
}
if(i10<0.03458881378173828){
 if(i8<0.03982341289520264){
  s0+=2047.0;
  s1+=170.0;
 } else {
  s0+=17.0;
  s1+=68.0;
 }
} else {
 if(i14<0.9575543403625488){
  s0+=159.0;
  s1+=273.0;
 } else {
  s0+=58.0;
  s1+=1229.0;
 }
}
if(i8<0.14306640625){
 if(i2<5.783250331878662){
  s0+=1111.0;
  s1+=15.0;
 } else {
  s0+=999.0;
  s1+=319.0;
 }
} else {
 if(i5<48.495643615722656){
  s0+=34.0;
  s1+=1188.0;
 } else {
  s0+=61.0;
  s1+=294.0;
 }
}
if(i9<0.1496562957763672){
 if(i12<1.4993705749511719){
  s0+=2086.0;
  s1+=226.0;
 } else {
  s0+=10.0;
  s1+=55.0;
 }
} else {
 if(i9<1.0373563766479492){
  s0+=77.0;
  s1+=221.0;
 } else {
  s0+=64.0;
  s1+=1282.0;
 }
}
if(i1<16.073074340820312){
 if(i10<0.09824752807617188){
  s0+=1632.0;
  s1+=127.0;
 } else {
  s0+=29.0;
  s1+=57.0;
 }
} else {
 if(i14<-0.6311225891113281){
  s0+=335.0;
  s1+=51.0;
 } else {
  s0+=170.0;
  s1+=1620.0;
 }
}
if(i14<0.11159753799438477){
 if(i1<6.059763431549072){
  s0+=1318.0;
  s1+=36.0;
 } else {
  s0+=756.0;
  s1+=244.0;
 }
} else {
 if(i8<0.5006599426269531){
  s0+=75.0;
  s1+=213.0;
 } else {
  s0+=60.0;
  s1+=1319.0;
 }
}
if(i13<0.04990726709365845){
 if(i10<0.05725431442260742){
  s0+=1973.0;
  s1+=163.0;
 } else {
  s0+=92.0;
  s1+=145.0;
 }
} else {
 if(i10<0.6281509399414062){
  s0+=49.0;
  s1+=128.0;
 } else {
  s0+=79.0;
  s1+=1392.0;
 }
}
if(i9<0.09885358810424805){
 if(i11<9.732353210449219){
  s0+=2080.0;
  s1+=233.0;
 } else {
  s0+=4.0;
  s1+=45.0;
 }
} else {
 if(i14<0.916905403137207){
  s0+=85.0;
  s1+=235.0;
 } else {
  s0+=71.0;
  s1+=1268.0;
 }
}
if(i9<0.08284664154052734){
 if(i8<0.11349773406982422){
  s0+=2018.0;
  s1+=215.0;
 } else {
  s0+=4.0;
  s1+=45.0;
 }
} else {
 if(i14<0.772618293762207){
  s0+=71.0;
  s1+=189.0;
 } else {
  s0+=67.0;
  s1+=1412.0;
 }
}
if(i10<0.039025306701660156){
 if(i8<0.09688019752502441){
  s0+=1944.0;
  s1+=181.0;
 } else {
  s0+=22.0;
  s1+=70.0;
 }
} else {
 if(i15<0.8775100708007812){
  s0+=137.0;
  s1+=265.0;
 } else {
  s0+=66.0;
  s1+=1336.0;
 }
}
if(i7<0.144561767578125){
 if(i9<0.04391956329345703){
  s0+=2072.0;
  s1+=202.0;
 } else {
  s0+=52.0;
  s1+=281.0;
 }
} else {
 if(i4<12.03143310546875){
  s0+=18.0;
  s1+=5.0;
 } else {
  s0+=102.0;
  s1+=1289.0;
 }
}
if(i14<0.08903145790100098){
 if(i7<0.29669189453125){
  s0+=2120.0;
  s1+=246.0;
 } else {
  s0+=18.0;
  s1+=60.0;
 }
} else {
 if(i5<48.55409240722656){
  s0+=46.0;
  s1+=1159.0;
 } else {
  s0+=91.0;
  s1+=281.0;
 }
}
if(i14<0.013915061950683594){
 if(i11<1.3460967540740967){
  s0+=1979.0;
  s1+=215.0;
 } else {
  s0+=53.0;
  s1+=75.0;
 }
} else {
 if(i4<48.60429382324219){
  s0+=53.0;
  s1+=1198.0;
 } else {
  s0+=101.0;
  s1+=347.0;
 }
}
if(i9<0.08186721801757812){
 if(i6<0.12851285934448242){
  s0+=2011.0;
  s1+=191.0;
 } else {
  s0+=66.0;
  s1+=67.0;
 }
} else {
 if(i9<1.0270195007324219){
  s0+=87.0;
  s1+=243.0;
 } else {
  s0+=59.0;
  s1+=1297.0;
 }
}
if(i9<0.033664703369140625){
 if(i7<0.13594913482666016){
  s0+=2016.0;
  s1+=193.0;
 } else {
  s0+=32.0;
  s1+=63.0;
 }
} else {
 if(i15<0.9443893432617188){
  s0+=105.0;
  s1+=303.0;
 } else {
  s0+=55.0;
  s1+=1254.0;
 }
}
if(i9<0.08211326599121094){
 if(i6<0.280226469039917){
  s0+=2096.0;
  s1+=170.0;
 } else {
  s0+=22.0;
  s1+=62.0;
 }
} else {
 if(i15<0.979069709777832){
  s0+=72.0;
  s1+=294.0;
 } else {
  s0+=62.0;
  s1+=1243.0;
 }
}
if(i9<0.0423736572265625){
 if(i8<0.10717630386352539){
  s0+=2090.0;
  s1+=213.0;
 } else {
  s0+=9.0;
  s1+=44.0;
 }
} else {
 if(i8<0.5345592498779297){
  s0+=79.0;
  s1+=233.0;
 } else {
  s0+=68.0;
  s1+=1285.0;
 }
}
if(i2<16.730064392089844){
 if(i1<8.937211990356445){
  s0+=1522.0;
  s1+=79.0;
 } else {
  s0+=113.0;
  s1+=79.0;
 }
} else {
 if(i13<-1.0172996520996094){
  s0+=425.0;
  s1+=61.0;
 } else {
  s0+=161.0;
  s1+=1581.0;
 }
}
if(i13<0.05398160219192505){
 if(i9<0.08284664154052734){
  s0+=2042.0;
  s1+=227.0;
 } else {
  s0+=38.0;
  s1+=89.0;
 }
} else {
 if(i14<0.954617977142334){
  s0+=75.0;
  s1+=195.0;
 } else {
  s0+=66.0;
  s1+=1289.0;
 }
}
if(i8<0.11195802688598633){
 if(i9<0.09516525268554688){
  s0+=2058.0;
  s1+=218.0;
 } else {
  s0+=38.0;
  s1+=100.0;
 }
} else {
 if(i5<48.495643615722656){
  s0+=42.0;
  s1+=1199.0;
 } else {
  s0+=76.0;
  s1+=290.0;
 }
}
if(i13<0.05761605501174927){
 if(i9<0.19265365600585938){
  s0+=2075.0;
  s1+=212.0;
 } else {
  s0+=23.0;
  s1+=77.0;
 }
} else {
 if(i5<48.50870895385742){
  s0+=38.0;
  s1+=1236.0;
 } else {
  s0+=82.0;
  s1+=278.0;
 }
}
if(i10<0.043755531311035156){
 if(i6<0.11726999282836914){
  s0+=1968.0;
  s1+=170.0;
 } else {
  s0+=53.0;
  s1+=88.0;
 }
} else {
 if(i10<1.3501167297363281){
  s0+=144.0;
  s1+=224.0;
 } else {
  s0+=62.0;
  s1+=1312.0;
 }
}
if(i15<0.03838539123535156){
 if(i11<1.0221452713012695){
  s0+=1970.0;
  s1+=135.0;
 } else {
  s0+=65.0;
  s1+=75.0;
 }
} else {
 if(i9<1.0270195007324219){
  s0+=152.0;
  s1+=279.0;
 } else {
  s0+=57.0;
  s1+=1288.0;
 }
}
if(i14<0.055206298828125){
 if(i1<3.812255859375){
  s0+=1150.0;
  s1+=17.0;
 } else {
  s0+=971.0;
  s1+=240.0;
 }
} else {
 if(i9<1.001338005065918){
  s0+=92.0;
  s1+=249.0;
 } else {
  s0+=47.0;
  s1+=1255.0;
 }
}
if(i14<0.12833404541015625){
 if(i12<1.199960708618164){
  s0+=2053.0;
  s1+=243.0;
 } else {
  s0+=18.0;
  s1+=60.0;
 }
} else {
 if(i4<51.0736083984375){
  s0+=44.0;
  s1+=1190.0;
 } else {
  s0+=90.0;
  s1+=323.0;
 }
}
if(i8<0.21208667755126953){
 if(i2<5.575949668884277){
  s0+=1101.0;
  s1+=16.0;
 } else {
  s0+=1041.0;
  s1+=336.0;
 }
} else {
 if(i3<56.980201721191406){
  s0+=36.0;
  s1+=1112.0;
 } else {
  s0+=64.0;
  s1+=315.0;
 }
}
if(i8<0.11195802688598633){
 if(i10<0.5268878936767578){
  s0+=2047.0;
  s1+=205.0;
 } else {
  s0+=45.0;
  s1+=124.0;
 }
} else {
 if(i4<44.27007293701172){
  s0+=23.0;
  s1+=1046.0;
 } else {
  s0+=88.0;
  s1+=443.0;
 }
}
if(i8<0.11195802688598633){
 if(i9<0.05309867858886719){
  s0+=2019.0;
  s1+=201.0;
 } else {
  s0+=45.0;
  s1+=97.0;
 }
} else {
 if(i14<0.9977874755859375){
  s0+=69.0;
  s1+=219.0;
 } else {
  s0+=61.0;
  s1+=1310.0;
 }
}
if(i9<0.0423736572265625){
 if(i4<5.396045684814453){
  s0+=912.0;
  s1+=1.0;
 } else {
  s0+=1155.0;
  s1+=265.0;
 }
} else {
 if(i14<1.4717893600463867){
  s0+=114.0;
  s1+=361.0;
 } else {
  s0+=38.0;
  s1+=1175.0;
 }
}
 float max_s=s0;
 int cls=1;
 if (max_s < s1) {
  max_s = s1;
  cls=2;
 }
 WRITE_IMAGE (out, POS_out_INSTANCE(x,y,z,0), cls);
}
