package dk.cngroup;

public class Counter {

  private int cnt = 0;

  public void increment() {
    cnt++;
  }

  public int getCnt() {
    return cnt;
  }

  public int getTwiceTheResult() {
//    return Utils.sumNumbers(cnt, cnt);
    return 0;
  }
}