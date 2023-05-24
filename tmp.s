int sum(int n)
{
4040013a:7179        addi    sp,sp,-48  # allocate 12 words' space on stack
4040013c:d622        sw      s0,44(sp)  # save s0
4040013e:1800        addi    s0,sp,48   # use s0 as a frame pointer
40400140:fca42e23    sw      a0,-36(s0) # save n(a0)
/wsASM/kadai5-1/src/sifive-welcome.c:5
  int s, i;
  s = 0;
40400144:fe042623    sw      zero,-20(s0) # s = 0
/wsASM/kadai5-1/src/sifive-welcome.c:6
  for (i = 0; i <= n; i++) {
40400148:fe042423    sw      zero,-24(s0) # i = 0
4040014c:a829        j       40400166 <sum+0x2c> # jump to the loop
/wsASM/kadai5-1/src/sifive-welcome.c:7 (discriminator 3)
    s = s + i;
4040014e:fec42703    lw      a4,-20(s0) # load s to a4 & jumped from 4040016e
40400152:fe842783    lw      a5,-24(s0) # load i to a5
40400156:97ba        add     a5,a5,a4   # a5 = a4 + a5
40400158:fef42623    sw      a5,-20(s0) # save a5 to s
/wsASM/kadai5-1/src/sifive-welcome.c:6 (discriminator 3)
  for (i = 0; i <= n; i++) {
4040015c:fe842783    lw      a5,-24(s0) # load i to a5
40400160:0785        addi    a5,a5,1    # a5 = a5 + 1
40400162:fef42423    sw      a5,-24(s0) # save a5 to i
/wsASM/kadai5-1/src/sifive-welcome.c:6 (discriminator 1)
40400166:fe842703    lw      a4,-24(s0) # load i to a4 & jumped from 4040014c
4040016a:fdc42783    lw      a5,-36(s0) # load n(a0) to a5
4040016e:fee7d0e3    bge     a5,a4,4040014e <sum+0x14> # if (n >= i) jump 4040014e
/wsASM/kadai5-1/src/sifive-welcome.c:9
  }
  return s;
40400172:fec42783    lw      a5,-20(s0) # load s to a5
/wsASM/kadai5-1/src/sifive-welcome.c:10
}
40400176:853e        mv      a0,a5     # return s
40400178:5432        lw      s0,44(sp) # restore s0
4040017a:6145        addi    sp,sp,48  # deallocate 12 words' space on stack
4040017c:8082        ret               # return
