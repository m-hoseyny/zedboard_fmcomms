#pragma line 1 "C:/Users/ArzhangJunior/Desktop/HLS/StepGen/stepGen.cpp"
#pragma line 1 "<built-in>"
#pragma line 1 "<command-line>"
#pragma line 1 "C:/Users/ArzhangJunior/Desktop/HLS/StepGen/stepGen.cpp"
#pragma empty_line
#pragma empty_line
#pragma empty_line
void stepGen (unsigned int out_vec[256])
{
#pragma HLS INTERFACE s_axilite port=out_vec
#pragma HLS INTERFACE s_axilite port=return bundle=CRTL_BUS
#pragma empty_line
#pragma empty_line
#pragma empty_line
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
#pragma empty_line
 }
}