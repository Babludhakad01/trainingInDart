import 'dart:isolate';


void heavyTask(SendPort myPort){
  var sum = 0;
  for(int i=0; i<100000000; i++){
    sum += i;
  }

  // Send Result back to main Isolate
  myPort.send(sum);

}


void main() async{
  ReceivePort recieve = ReceivePort();

  // Spwan to create Isolate
 Isolate task=   await Isolate.spawn(heavyTask, recieve.sendPort);

  recieve.listen((msg){
    print(("Sum of Value ${msg}"));
    recieve.close();

    task.kill(priority: Isolate.immediate);
  });
}