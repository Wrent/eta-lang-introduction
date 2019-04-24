package dk.cngroup;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

public class Utils {

  /* This helper method lets us avoid variadic arguments which
     are a bit cumbersome to work with in Eta. */

  public static void createFile(String path) throws IOException {
    System.out.println("blabla");
    Files.createFile(Paths.get(path));
  }
}