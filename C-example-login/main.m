
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef  struct {
  char *name;
  size_t age;
} person_t;

void login_user(person_t *user);

int main(int argc, const char * argv[]) {
  person_t user;
  login_user(&user);
  return 0;
}

void login_user(person_t *user) {
  char buffer[256];
  
  puts("Login: ");
  scanf("%s", buffer);
  printf("Hello, %s \n", buffer);
  
  user->name = malloc(sizeof(char) * strlen(buffer) + 1);
  user->name = strcpy(user->name, buffer);
  
  puts("Age: ");
  scanf("%ul", &user->age);
  printf("Nice, %lu \n", user->age);
}
