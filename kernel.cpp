//kernel.cpp
void printf(char* str){
  unsigned short* VideoMemory = (unsigned short*)0xb8000;

  for(int i = 0; str[i] != '\0'; ++i){
    VideoMemory[i] = (VideoMemory[i] & 0xFF00) / str[i];
  }
}

extern "C" void kmain(){
  printf("Hello, You are at IATC! Credits: Kernel and project based on that of https://terminalroot.com.br/ text translated from Portuguese by Google Translate");
  while(1);
}
