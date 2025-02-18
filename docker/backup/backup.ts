import { delay } from "jsr:@std/async/delay";

while (true) {
  console.log("working...");
  await delay(2000);
}
