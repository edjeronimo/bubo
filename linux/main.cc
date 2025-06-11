#include <flutter/dart_project.h>
#include <flutter/flutter_view_controller.h>
#include <gtk/gtk.h>

int main(int argc, char **argv) {
  gtk_init(&argc, &argv);
  flutter::DartProject project(L"data");
  flutter::FlutterViewController controller(800, 600, &project);
  gtk_main();
  return 0;
}