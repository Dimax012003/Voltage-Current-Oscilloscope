clear all
close all
clc
 

arduino=serialport('COM7',9600); 
fopen(arduino); 

CM(1)=0;
VM(1)=0;
time(1)=0;
i=1;
tic;


while (toc<100)
   VM(2)=fscanf(arduino,'%f');
   CM(2)=fscanf(arduino,'%f');
   time(2)=toc;
   figure(1);
   grid on;
   axis([toc-1, toc, -0.5, 0.5]);
   xlabel('seconds');
   ylabel('BPM');
   h(i)=plot(time,CM,'b','LineWidth',4);
   hold on
   CM(1)=CM(2);

   figure(2);
   grid on;
   axis([toc-1, toc, 0, 5]);
   xlabel('seconds');
   ylabel('BPM');
   g(i)=plot(time,VM,'b','LineWidth',4);
   hold on
   VM(1)=VM(2);
   time(1)=time(2);


 if(i >= 300)
   delete(h(i-299));
   delete(g(i-299));
   end
    



i=i+1;

end