# 1 "C:/Users/ArzhangJunior/Desktop/HLS/StepGen/stepGen.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/ArzhangJunior/Desktop/HLS/StepGen/stepGen.cpp"



void stepGen (unsigned int out_vec[256])
{
#pragma HLS INTERFACE s_axilite port=out_vec
#pragma HLS INTERFACE s_axilite port=return bundle=CRTL_BUS



 for (int idx = 0; idx < 256; idx++)
 {
  if(idx % 4 == 0 || idx % 4 == 1)
  {
   out_vec[idx] = 40960;
  }
  else
  {
   out_vec[idx] = 24576;
  }

 }
}
